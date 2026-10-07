//
//  JSONExportStrategy.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 07/10/2026.
//

import Foundation

struct JSONExportStrategy: TaskExportStrategy {

    func export(_ tasks: [Task]) -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = [.prettyPrinted, .sortedKeys]

        do {
            let data = try encoder.encode(tasks)
            return String(
                decoding: data,
                as: UTF8.self
            )
        } catch {
            return "Failed to export tasks as JSON."
        }
    }
}
