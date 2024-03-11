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
                //Delete Geasture
                .onDelete(perform: deleteNote)
            }
        }
        .padding()
    }
    
    //AddFunc
    func addNote() {
        let notes = Notes()
        notes.title = "New Note"
        modelContext.insert(notes)
    }
    
    //DeleteFunc
    func deleteNote(_ indexSet: IndexSet) {
        for index in indexSet {
            let notes = notes[index]
            modelContext.delete(notes)
        }
    }
}

#Preview(windowStyle: .automatic) {
    ContentView()
}
