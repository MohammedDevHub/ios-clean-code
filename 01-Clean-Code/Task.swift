//
//  Task.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 29/09/2026.
//

import Foundation

struct Task {

    let id: UUID
    var title: String
    var isCompleted: Bool

    init(
        id: UUID = UUID(),
        title: String,
        isCompleted: Bool = false
    ) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}
