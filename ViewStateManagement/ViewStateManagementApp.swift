//
//  ViewStateManagementApp.swift
//  ViewStateManagement
//
//  Created by Phil Mui on 12/23/20.
//

import SwiftUI

@main
struct ViewStateManagementApp: App {
    @StateObject private var task = Task(name: "Walk around perimeter", isComplete: false, lastCompleted: nil)
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(task)
        }
    }
}
