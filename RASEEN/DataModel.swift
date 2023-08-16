//
//  Detail.swift
//  CustomTabbarSwiftUI
//
//  Created by Revan on 21/01/1445 AH.
//

import Foundation
import SwiftUI


struct DataModel: Identifiable {
    let id = UUID()
    let word: String
    var region: String
    var meanings: [MeaningModel]
}

struct MeaningModel: Identifiable {
    let id = UUID()
    let meaning: String
    var example: String?
    var upvotes: Int
    var downvotes: Int 
    var isSaved: Bool

    mutating func isSave() {
        isSaved = true
        }
    
    mutating func upvote() {
            upvotes += 1
        }
        
    mutating func downvote() {
            downvotes += 1
        }
}
