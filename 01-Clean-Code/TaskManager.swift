//
//  TaskManager.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 29/09/2026.
//

import Foundation

final class TaskManager {

    private let storage: TaskStorageProtocol
    private var tasks: [Task]

    init(storage: TaskStorageProtocol) {
        self.storage = storage
        self.tasks = storage.load()
    }

    func addTask(_ title: String) {
        tasks.append(
            Task(title: title)
        )

        storage.save(tasks)
    }

    func completeTask(_ id: UUID) {
        guard let index = tasks.firstIndex(where: { $0.id == id }) else {
            return
        }

        tasks[index].isCompleted = true
        storage.save(tasks)
    }

    func deleteTask(_ id: UUID) {
        guard let index = tasks.firstIndex(where: { $0.id == id }) else {
            return
        }

        tasks.remove(at: index)
        storage.save(tasks)
    }

    func allTasks() -> [Task] {
        tasks
    }
}
