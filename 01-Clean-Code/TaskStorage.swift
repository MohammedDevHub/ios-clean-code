//
//  TaskStorage.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 29/09/2026.
//

import Foundation

final class TaskStorage: TaskStorageProtocol {

    private var storedTasks: [Task] = []

    func save(_ tasks: [Task]) {
        storedTasks = tasks
    }

    func load() -> [Task] {
        storedTasks
    }
}
