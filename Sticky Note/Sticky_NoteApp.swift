//
//  Sticky_NoteApp.swift
//  Sticky Note
//
//  Created by Hamza Osama on 3/11/24.
//

import SwiftUI

@main
struct Sticky_NoteApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Notes.self)
    }
}
