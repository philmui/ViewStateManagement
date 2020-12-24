//
//  ContentView.swift
//  ViewStateManagement
//
//  Created by Phil Mui on 12/23/20.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var theTask: Task
    
    var body: some View {
        VStack {
            HStack {
                // Checkmark if complete
                Image(systemName: theTask.isComplete ?  "checkmark.square" : "square")
                Text(theTask.name)
            }
            
            ControlPanel()
        }
    }
}

struct ControlPanel: View {
    @EnvironmentObject var theTask: Task
    
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
    @StateObject private static var task = Task(name: "Walk around perimeter", isComplete: false, lastCompleted: nil)

    static var previews: some View {
        // let previewTask = Task(name: "Check all windows", isComplete: false, lastCompleted: nil)
        
        ContentView().environmentObject(task)
    }
}

