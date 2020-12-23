//
//  Task.swift
//  ViewStateManagement
//
//  Created by Phil Mui on 12/23/20.
//

import Foundation

class Task : ObservableObject {
    internal init(name: String = "", isComplete: Bool = false, lastCompleted: Date? = nil) {
        self.name = name
        self.isComplete = isComplete
        self.lastCompleted = lastCompleted
    }
    
    var name: String
    @Published var isComplete: Bool
    var lastCompleted: Date?
}
