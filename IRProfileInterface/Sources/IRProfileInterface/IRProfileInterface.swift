// The Swift Programming Language
// https://docs.swift.org/swift-book

import IRCore

@MainActor
public protocol IRProfileInterface: IRCoordinatorProtocol { }

@MainActor
public protocol IRProfileFactoryProtocol {
    func create() -> any IRProfileInterface
}
