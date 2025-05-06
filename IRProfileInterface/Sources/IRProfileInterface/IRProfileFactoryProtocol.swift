//
//  IRProfileFactoryProtocol.swift
//  IRProfileInterface
//
//  Created by Ömer Faruk Öztürk on 06.05.2025.
//

import Foundation

@MainActor
public protocol IRProfileFactoryProtocol {
    func create() -> any IRProfileInterface
}
