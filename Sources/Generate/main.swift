//
//  main.swift
//  Either
//
//  Created by TBXark on 2021/2/25.
//

import Foundation


class File {
    var log = false
    var cache = ""
    func add(_ text: String, terminator: String = "\n") {
        cache += text
        cache += terminator
        if log {
            print(text, terminator: terminator)
        }
    }
}

func build(file: File, range: UInt8) {
    
    let low = (0..<range).map({ String(bytes: [Character("a").asciiValue! + $0], encoding: .ascii)! })
    let up = low.map({ $0.uppercased() })
    
    file.add("\n\n\n// MARK: - Either\(range)")
    file.add("@propertyWrapper")
    file.add("public enum Either\(range)<\(up.joined(separator: " ,"))>: EitherContainer {\n")
    for i in 0..<low.count {
        file.add("    case \(low[i])(\(up[i]))")
    }
    file.add("\n    public var wrappedValue: Any {")
    file.add("        switch self {")
    for i in 0..<low.count {
        file.add("            case .\(low[i])(let v):")
        file.add("                return v")
    }
    file.add("        }\n    }\n")
    
    
    for i in 0..<low.count {
        file.add("    public var \(low[i]): \(up[i])? {")
        file.add("""
                switch self {
                case .\(low[i])(let v):
                    return v
                default:
                    return nil
                }
        """)
        file.add("    }\n")
    }
    
    for i in 0..<low.count {
        file.add("""
            public init(_ v: \(up[i])) {
                self = .\(low[i])(v)
            }
        
        """)
    }
    
    file.add("}\n\n")
 
    file.add("extension Either\(range): Codable where \(up.map({ "\($0): Codable"}).joined(separator: ", ")) {\n")
    file.add("    public init(from decoder: Decoder) throws {")
    file.add("        let container = try decoder.singleValueContainer()")
    for i in 0..<low.count {
        file.add("""
        \(i == 0 ? "        if" : "else if") let v = try? container.decode(\(up[i]).self) {
                    self = .\(low[i])(v)
                }
        """, terminator: " ")
    }
    file.add("""
    else {
                throw NSError(domain: "com.tbxark.either", code: 0, userInfo: [NSLocalizedDescriptionKey : "unknown type"])
            }
        }
    
    """)
    

    file.add("    public func encode(to encoder: Encoder) throws {")
    file.add("        var container = encoder.singleValueContainer()")
    file.add("        switch self {")
    for l in low {
        file.add("""
                    case .\(l)(let v):
                        try container.encode(v)
        """)
    }
    file.add("""
            }
        }
    }
    
    """)

    file.add("extension Either\(range): Equatable where \(up.map({ "\($0): Equatable"}).joined(separator: ", ")) {\n}\n\n")
    file.add("extension Either\(range): Hashable where \(up.map({ "\($0): Hashable"}).joined(separator: ", ")) {\n}")
}

let file = File()
file.log = CommandLine.arguments.contains("-p")

let df = DateFormatter()
df.dateFormat = "yyyy/MM/dd"
file.add("""
//
//  Either.swift
//  Either
//
//  Created by TBXark on \(df.string(from: Date())).
//


import Foundation
""")

file.add("""


public protocol EitherContainer {
    var wrappedValue: Any { get }
}

extension EitherContainer {
    public var value: Any {
        return wrappedValue
    }
}

""")

(2...6).forEach({ c in
    build(file: file, range: c)
})

if let i = CommandLine.arguments.firstIndex(of: "-f"),
   CommandLine.arguments.count > i {
    let path = CommandLine.arguments[i + 1]
    if FileManager.default.fileExists(atPath: path) {
        try FileManager.default.removeItem(atPath: path)
    }
    try file.cache.write(toFile: path, atomically: true, encoding: .utf8)
} else {
    print("The target file path cannot be found")
}
