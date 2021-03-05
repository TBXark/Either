//
//  Either.swift
//  Either
//
//  Created by TBXark on 2021/03/05.
//


import Foundation



// MARK: - Either2
@propertyWrapper
public enum Either2<A ,B> {

    case a(A)
    case b(B)
    public var wrappedValue: Any {
        switch self {
            case .a(let v):
                return v
            case .b(let v):
                return v
        }
    }

    public var a: A? {
        switch self {
        case .a(let v):
            return v
        default:
            return nil
        }
    }

    public var b: B? {
        switch self {
        case .b(let v):
            return v
        default:
            return nil
        }
    }

    init(_ v: A) {
        self = .a(v)
    }

    init(_ v: B) {
        self = .b(v)
    }

}


extension Either2: Codable where A: Codable, B: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let v = try? container.decode(A.self) {
            self = .a(v)
        } else if let v = try? container.decode(B.self) {
            self = .b(v)
        } else {
            throw NSError(domain: "com.tbxark.either", code: 0, userInfo: [NSLocalizedDescriptionKey : "unknow type"])
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
            case .a(let v):
                try container.encode(v)
            case .b(let v):
                try container.encode(v)
        }
    }
}

extension Either2: Equatable where A: Equatable, B: Equatable {
}


extension Either2: Hashable where A: Hashable, B: Hashable {
}



// MARK: - Either3
@propertyWrapper
public enum Either3<A ,B ,C> {

    case a(A)
    case b(B)
    case c(C)
    public var wrappedValue: Any {
        switch self {
            case .a(let v):
                return v
            case .b(let v):
                return v
            case .c(let v):
                return v
        }
    }

    public var a: A? {
        switch self {
        case .a(let v):
            return v
        default:
            return nil
        }
    }

    public var b: B? {
        switch self {
        case .b(let v):
            return v
        default:
            return nil
        }
    }

    public var c: C? {
        switch self {
        case .c(let v):
            return v
        default:
            return nil
        }
    }

    init(_ v: A) {
        self = .a(v)
    }

    init(_ v: B) {
        self = .b(v)
    }

    init(_ v: C) {
        self = .c(v)
    }

}


extension Either3: Codable where A: Codable, B: Codable, C: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let v = try? container.decode(A.self) {
            self = .a(v)
        } else if let v = try? container.decode(B.self) {
            self = .b(v)
        } else if let v = try? container.decode(C.self) {
            self = .c(v)
        } else {
            throw NSError(domain: "com.tbxark.either", code: 0, userInfo: [NSLocalizedDescriptionKey : "unknow type"])
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
            case .a(let v):
                try container.encode(v)
            case .b(let v):
                try container.encode(v)
            case .c(let v):
                try container.encode(v)
        }
    }
}

extension Either3: Equatable where A: Equatable, B: Equatable, C: Equatable {
}


extension Either3: Hashable where A: Hashable, B: Hashable, C: Hashable {
}



// MARK: - Either4
@propertyWrapper
public enum Either4<A ,B ,C ,D> {

    case a(A)
    case b(B)
    case c(C)
    case d(D)
    public var wrappedValue: Any {
        switch self {
            case .a(let v):
                return v
            case .b(let v):
                return v
            case .c(let v):
                return v
            case .d(let v):
                return v
        }
    }

    public var a: A? {
        switch self {
        case .a(let v):
            return v
        default:
            return nil
        }
    }

    public var b: B? {
        switch self {
        case .b(let v):
            return v
        default:
            return nil
        }
    }

    public var c: C? {
        switch self {
        case .c(let v):
            return v
        default:
            return nil
        }
    }

    public var d: D? {
        switch self {
        case .d(let v):
            return v
        default:
            return nil
        }
    }

    init(_ v: A) {
        self = .a(v)
    }

    init(_ v: B) {
        self = .b(v)
    }

    init(_ v: C) {
        self = .c(v)
    }

    init(_ v: D) {
        self = .d(v)
    }

}


extension Either4: Codable where A: Codable, B: Codable, C: Codable, D: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let v = try? container.decode(A.self) {
            self = .a(v)
        } else if let v = try? container.decode(B.self) {
            self = .b(v)
        } else if let v = try? container.decode(C.self) {
            self = .c(v)
        } else if let v = try? container.decode(D.self) {
            self = .d(v)
        } else {
            throw NSError(domain: "com.tbxark.either", code: 0, userInfo: [NSLocalizedDescriptionKey : "unknow type"])
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
            case .a(let v):
                try container.encode(v)
            case .b(let v):
                try container.encode(v)
            case .c(let v):
                try container.encode(v)
            case .d(let v):
                try container.encode(v)
        }
    }
}

extension Either4: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable {
}


extension Either4: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable {
}



// MARK: - Either5
@propertyWrapper
public enum Either5<A ,B ,C ,D ,E> {

    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    public var wrappedValue: Any {
        switch self {
            case .a(let v):
                return v
            case .b(let v):
                return v
            case .c(let v):
                return v
            case .d(let v):
                return v
            case .e(let v):
                return v
        }
    }

    public var a: A? {
        switch self {
        case .a(let v):
            return v
        default:
            return nil
        }
    }

    public var b: B? {
        switch self {
        case .b(let v):
            return v
        default:
            return nil
        }
    }

    public var c: C? {
        switch self {
        case .c(let v):
            return v
        default:
            return nil
        }
    }

    public var d: D? {
        switch self {
        case .d(let v):
            return v
        default:
            return nil
        }
    }

    public var e: E? {
        switch self {
        case .e(let v):
            return v
        default:
            return nil
        }
    }

    init(_ v: A) {
        self = .a(v)
    }

    init(_ v: B) {
        self = .b(v)
    }

    init(_ v: C) {
        self = .c(v)
    }

    init(_ v: D) {
        self = .d(v)
    }

    init(_ v: E) {
        self = .e(v)
    }

}


extension Either5: Codable where A: Codable, B: Codable, C: Codable, D: Codable, E: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let v = try? container.decode(A.self) {
            self = .a(v)
        } else if let v = try? container.decode(B.self) {
            self = .b(v)
        } else if let v = try? container.decode(C.self) {
            self = .c(v)
        } else if let v = try? container.decode(D.self) {
            self = .d(v)
        } else if let v = try? container.decode(E.self) {
            self = .e(v)
        } else {
            throw NSError(domain: "com.tbxark.either", code: 0, userInfo: [NSLocalizedDescriptionKey : "unknow type"])
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
            case .a(let v):
                try container.encode(v)
            case .b(let v):
                try container.encode(v)
            case .c(let v):
                try container.encode(v)
            case .d(let v):
                try container.encode(v)
            case .e(let v):
                try container.encode(v)
        }
    }
}

extension Either5: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable {
}


extension Either5: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable {
}



// MARK: - Either6
@propertyWrapper
public enum Either6<A ,B ,C ,D ,E ,F> {

    case a(A)
    case b(B)
    case c(C)
    case d(D)
    case e(E)
    case f(F)
    public var wrappedValue: Any {
        switch self {
            case .a(let v):
                return v
            case .b(let v):
                return v
            case .c(let v):
                return v
            case .d(let v):
                return v
            case .e(let v):
                return v
            case .f(let v):
                return v
        }
    }

    public var a: A? {
        switch self {
        case .a(let v):
            return v
        default:
            return nil
        }
    }

    public var b: B? {
        switch self {
        case .b(let v):
            return v
        default:
            return nil
        }
    }

    public var c: C? {
        switch self {
        case .c(let v):
            return v
        default:
            return nil
        }
    }

    public var d: D? {
        switch self {
        case .d(let v):
            return v
        default:
            return nil
        }
    }

    public var e: E? {
        switch self {
        case .e(let v):
            return v
        default:
            return nil
        }
    }

    public var f: F? {
        switch self {
        case .f(let v):
            return v
        default:
            return nil
        }
    }

    init(_ v: A) {
        self = .a(v)
    }

    init(_ v: B) {
        self = .b(v)
    }

    init(_ v: C) {
        self = .c(v)
    }

    init(_ v: D) {
        self = .d(v)
    }

    init(_ v: E) {
        self = .e(v)
    }

    init(_ v: F) {
        self = .f(v)
    }

}


extension Either6: Codable where A: Codable, B: Codable, C: Codable, D: Codable, E: Codable, F: Codable {

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let v = try? container.decode(A.self) {
            self = .a(v)
        } else if let v = try? container.decode(B.self) {
            self = .b(v)
        } else if let v = try? container.decode(C.self) {
            self = .c(v)
        } else if let v = try? container.decode(D.self) {
            self = .d(v)
        } else if let v = try? container.decode(E.self) {
            self = .e(v)
        } else if let v = try? container.decode(F.self) {
            self = .f(v)
        } else {
            throw NSError(domain: "com.tbxark.either", code: 0, userInfo: [NSLocalizedDescriptionKey : "unknow type"])
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
            case .a(let v):
                try container.encode(v)
            case .b(let v):
                try container.encode(v)
            case .c(let v):
                try container.encode(v)
            case .d(let v):
                try container.encode(v)
            case .e(let v):
                try container.encode(v)
            case .f(let v):
                try container.encode(v)
        }
    }
}

extension Either6: Equatable where A: Equatable, B: Equatable, C: Equatable, D: Equatable, E: Equatable, F: Equatable {
}


extension Either6: Hashable where A: Hashable, B: Hashable, C: Hashable, D: Hashable, E: Hashable, F: Hashable {
}
