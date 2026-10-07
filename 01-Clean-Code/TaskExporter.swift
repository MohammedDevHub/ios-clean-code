//
//  TaskExporter.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 29/09/2026.
//

import Foundation

final class TaskExporter {

    private let strategy: any TaskExportStrategy

    init(strategy: any TaskExportStrategy) {
        self.strategy = strategy
    }

    func export(_ tasks: [Task]) -> String {
        strategy.export(tasks)
    }
}
