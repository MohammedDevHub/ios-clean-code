//
//  CleanCodeLabApp.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 29/09/2026.
//

import SwiftUI

@main
struct CleanCodeLabApp: App {

    private let taskManager = TaskManager(
        storage: TaskStorage()
    )

    var body: some Scene {
        WindowGroup {
            Text("Clean Code Lab")
        }
    }
}
