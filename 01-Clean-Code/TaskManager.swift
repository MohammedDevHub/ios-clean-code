//
//  TaskManager.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 29/09/2026.
//

import Foundation

final class TaskManager {

    private var tasks: [Task] = []

    func addTask(_ title: String) {
        tasks.append(
            Task(title: title)
        )
    }

    func completeTask(_ id: UUID) {
        guard let index = tasks.firstIndex(where: { $0.id == id }) else {
            return
        }

        tasks[index].isCompleted = true
    }

    func deleteTask(_ id: UUID) {
        guard let index = tasks.firstIndex(where: { $0.id == id }) else {
            return
        }

        tasks.remove(at: index)
    }

    func allTasks() -> [Task] {
        tasks
    }
}
