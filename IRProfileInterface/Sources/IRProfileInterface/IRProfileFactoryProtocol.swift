//
//  IRProfileFactoryProtocol.swift
//  IRProfileInterface
//
//  Created by Ömer Faruk Öztürk on 23.02.2025.
//

@MainActor
public protocol IRProfileFactoryProtocol {
    func create() -> any IRProfileInterface
}
