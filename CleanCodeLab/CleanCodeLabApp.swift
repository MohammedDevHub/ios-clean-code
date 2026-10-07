//
//  CleanCodeLabApp.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 29/09/2026.
//

import SwiftUI

@main
struct CleanCodeLabApp: App {

    private let tasks: [Task] = [
        Task(
            title: "Learn Clean Code",
            isCompleted: true
        ),
        Task(
            title: "Learn SOLID",
            isCompleted: true
        ),
        Task(
            title: "Learn Design Patterns",
            isCompleted: false
        )
    ]

    private let jsonExporter = TaskExporter(
        strategy: JSONExportStrategy()
    )

    private let csvExporter = TaskExporter(
        strategy: CSVExportStrategy()
    )

    var body: some Scene {
        WindowGroup {
            ContentView(
                jsonResult: jsonExporter.export(tasks),
                csvResult: csvExporter.export(tasks)
            )
        }
    }
}

struct ContentView: View {

    let jsonResult: String
    let csvResult: String

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(
                    alignment: .leading,
                    spacing: 24
                ) {
                    Text("Strategy Pattern")
                        .font(.largeTitle)
                        .bold()

                    Text("JSON Export")
                        .font(.headline)

                    Text(jsonResult)
                        .font(.system(.body, design: .monospaced))
                        .textSelection(.enabled)

                    Divider()

                    Text("CSV Export")
                        .font(.headline)

                    Text(csvResult)
                        .font(.system(.body, design: .monospaced))
                        .textSelection(.enabled)
                }
                .padding()
            }
            .navigationTitle("Clean Code Lab")
        }
    }
}
