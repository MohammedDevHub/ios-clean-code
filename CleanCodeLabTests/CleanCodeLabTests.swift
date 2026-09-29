//
//  CleanCodeLabTests.swift
//  CleanCodeLabTests
//
//  Created by Ahmed Emad on 29/09/2026.
//

import XCTest
@testable import CleanCodeLab

final class TaskManagerTests: XCTestCase {

    func testAddTask() {
        let manager = TaskManager()

        manager.addTask("Learn Clean Code")

        let tasks = manager.allTasks()

        XCTAssertEqual(tasks.count, 1)
        XCTAssertEqual(tasks.first?.title, "Learn Clean Code")
        XCTAssertFalse(tasks.first?.isCompleted ?? true)
    }

    func testCompleteTask() {
        let manager = TaskManager()

        manager.addTask("Learn SOLID")

        guard let task = manager.allTasks().first else {
            XCTFail("Task should exist")
            return
        }

        manager.completeTask(task.id)

        XCTAssertTrue(manager.allTasks().first?.isCompleted ?? false)
    }

    func testDeleteTask() {
        let manager = TaskManager()

        manager.addTask("Learn Clean Code")

        guard let task = manager.allTasks().first else {
            XCTFail("Task should exist")
            return
        }

        manager.deleteTask(task.id)

        XCTAssertTrue(manager.allTasks().isEmpty)
    }
}
