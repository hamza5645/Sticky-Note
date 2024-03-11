//
//  Notes.swift
//  Sticky Note
//
//  Created by Hamza Osama on 3/11/24.
//

import Foundation
import SwiftData

@Model
class Notes {
    var title: String
    var discription: String
    
    init(title: String = "", discription: String = "") {
        self.title = title
        self.discription = discription
    }
}
