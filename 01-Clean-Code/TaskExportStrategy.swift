//
//  TaskExportStrategy.swift
//  CleanCodeLab
//
//  Created by Ahmed Emad on 07/10/2026.
//

import Foundation

protocol TaskExportStrategy {

    func export(_ tasks: [Task]) -> String
}
