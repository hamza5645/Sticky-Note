//
//  ContentView.swift
//  Sticky Note
//
//  Created by Hamza Osama on 3/11/24.
//

import SwiftUI
import RealityKit
import RealityKitContent
import SwiftData

struct ContentView: View {
    //SwiftData
    @Environment(\.modelContext) var modelContext
    @Query var notes: [Notes]
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button("Add Note") {
                    addNote()
                }
                .foregroundColor(.yellow)
                .padding()
            }
            Spacer()
            
            List {
                ForEach(notes) { notes in
                    Text(notes.title)
                }
            }
        }
        .padding()
    }
    
    func addNote() {
        let note = Notes()
        modelContext.insert(note)
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
