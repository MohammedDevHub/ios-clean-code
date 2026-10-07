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

        let manager = TaskManager(
            storage: storage
        )

        manager.addTask(
            "Learn Design Patterns"
        )

        let tasks = manager.allTasks()

        XCTAssertEqual(
            tasks.count,
            1
        )

        XCTAssertEqual(
            tasks.first?.title,
            "Learn Design Patterns"
        )

        XCTAssertFalse(
            tasks.first?.isCompleted ?? true
        )
    }

    func testCompleteTask() {
        let storage = MockTaskStorage()

        let manager = TaskManager(
            storage: storage
        )

        manager.addTask(
            "Learn Strategy Pattern"
        )

        guard let task = manager.allTasks().first else {
            XCTFail("Task should exist")
            return
        }

        manager.completeTask(
            task.id
        )

        XCTAssertTrue(
            manager.allTasks().first?.isCompleted ?? false
        )
    }

    func testDeleteTask() {
        let storage = MockTaskStorage()

        let manager = TaskManager(
            storage: storage
        )

        manager.addTask(
            "Learn Clean Architecture"
        )

        guard let task = manager.allTasks().first else {
            XCTFail("Task should exist")
            return
        }

        manager.deleteTask(
            task.id
        )

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

    func testJSONExportStrategy() {
        let strategy = JSONExportStrategy()

        let tasks = [
            Task(
                title: "Learn Strategy Pattern"
            )
        ]

        let result = strategy.export(tasks)

        XCTAssertTrue(
            result.contains("Learn Strategy Pattern")
        )

        XCTAssertTrue(
            result.contains("isCompleted")
        )
    }

    func testCSVExportStrategy() {
        let strategy = CSVExportStrategy()

        let tasks = [
            Task(
                title: "Learn Strategy Pattern"
            )
        ]

        let result = strategy.export(tasks)

        XCTAssertTrue(
            result.contains(
                "id,title,isCompleted"
            )
        )

        XCTAssertTrue(
            result.contains(
                "Learn Strategy Pattern"
            )
        )
    }

    func testTaskExporterUsesInjectedStrategy() {
        let exporter = TaskExporter(
            strategy: MockTaskExportStrategy()
        )

        let tasks = [
            Task(
                title: "Learn Dependency Injection"
            )
        ]

        let result = exporter.export(tasks)

        XCTAssertEqual(
            result,
            "Mock Export"
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

private struct MockTaskExportStrategy: TaskExportStrategy {

    func export(_ tasks: [Task]) -> String {
        "Mock Export"
    }
}
