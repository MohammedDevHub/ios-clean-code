//
//  TaskStorageProtocol.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 01/10/2026.
//

import Foundation

protocol TaskStorageProtocol {

    func save(_ tasks: [Task])

    func load() -> [Task]
}
