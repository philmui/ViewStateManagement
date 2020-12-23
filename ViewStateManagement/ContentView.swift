//
//  ContentView.swift
//  ViewStateManagement
//
//  Created by Phil Mui on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var theTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
    var body: some View {
        VStack {
            HStack {
                // Checkmark if complete
                Image(systemName: theTask.isComplete ?  "checkmark.square" : "square")
                Text(theTask.name)
            }
            
            ControlPanel(theTask: self.theTask)
        }
    }
}

struct ControlPanel: View {
    @ObservedObject var theTask: Task
    
    var body: some View {
        if !theTask.isComplete {
            Button("Complete", action: {
                theTask.isComplete = true
            }).padding(.top)
        } else {
            Button("Reset", action: {
                theTask.isComplete = false
            }).padding(.top)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

