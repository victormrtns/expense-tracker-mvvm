//
//  expense_tracker_mvvmApp.swift
//  expense-tracker-mvvm
//
//  Created by Victor Hugo Martins on 04/04/25.
//

import SwiftUI
import SwiftData

@main
struct expense_tracker_mvvmApp: App {
    var body: some Scene {
        WindowGroup {
            IncomeView()
        }
        .modelContainer(for:[IncomeItem.self])
    }
}
