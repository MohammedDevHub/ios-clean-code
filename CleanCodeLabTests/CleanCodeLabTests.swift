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
        let storage = MockTaskStorage()
        let manager = TaskManager(storage: storage)

        manager.addTask("Learn Dependency Injection")

        let tasks = manager.allTasks()

        XCTAssertEqual(tasks.count, 1)
        XCTAssertEqual(
            tasks.first?.title,
            "Learn Dependency Injection"
        )
        XCTAssertFalse(
            tasks.first?.isCompleted ?? true
        )
    }

    func testCompleteTask() {
        let storage = MockTaskStorage()
        let manager = TaskManager(storage: storage)

        manager.addTask("Learn DI")

        guard let task = manager.allTasks().first else {
            XCTFail("Task should exist")
            return
        }

        manager.completeTask(task.id)

        XCTAssertTrue(
            manager.allTasks().first?.isCompleted ?? false
        )
    }

    func testDeleteTask() {
        let storage = MockTaskStorage()
        let manager = TaskManager(storage: storage)

        manager.addTask("Learn Clean Code")

        guard let task = manager.allTasks().first else {
            XCTFail("Task should exist")
            return
        }

        manager.deleteTask(task.id)

        XCTAssertTrue(
            manager.allTasks().isEmpty
        )
    }

    func testTaskManagerLoadsTasksFromStorage() {
        let existingTask = Task(
            title: "Existing Task"
        )

        let storage = MockTaskStorage(
            tasks: [existingTask]
        )

        let manager = TaskManager(
            storage: storage
        )

        XCTAssertEqual(
            manager.allTasks().count,
            1
        )

        XCTAssertEqual(
            manager.allTasks().first?.title,
            "Existing Task"
        )
    }
}

private final class MockTaskStorage: TaskStorageProtocol {

    private var tasks: [Task]

    init(tasks: [Task] = []) {
        self.tasks = tasks
    }

    func save(_ tasks: [Task]) {
        self.tasks = tasks
    }

    func load() -> [Task] {
        tasks
    }
}
