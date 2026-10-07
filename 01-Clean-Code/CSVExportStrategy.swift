//
//  CSVExportStrategy.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 07/10/2026.
//

import Foundation

struct CSVExportStrategy: TaskExportStrategy {

    func export(_ tasks: [Task]) -> String {
        var lines = [
            "id,title,isCompleted"
        ]

        for task in tasks {
            let line = [
                task.id.uuidString,
                task.title.replacingOccurrences(
                    of: ",",
                    with: " "
                ),
                String(task.isCompleted)
            ]
            .joined(separator: ",")

            lines.append(line)
        }

        return lines.joined(separator: "\n")
    }
}
