//
//  Dailyscrum.swift
//  Scrumdinger
//
//  Created by Nuthan Raju on 08/09/21.
//

import Foundation
import SwiftUI

struct DailyScrum: Identifiable{
    var id: UUID
    var title: String
    var attendees: [String]
    var lengthInMinutes: Int
    var color: Color
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, color: Color) {
           self.id = id
           self.title = title
           self.attendees = attendees
           self.lengthInMinutes = lengthInMinutes
           self.color = color
       }
}

extension DailyScrum {
    static var data: [DailyScrum] {
        [
            DailyScrum(id: UUID(), title: "Design", attendees: ["Cathy", "Daisy", "Simon", "Jonathan"], lengthInMinutes: 10, color: Color("Design")),
            DailyScrum(id: UUID(), title: "App Dev", attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"], lengthInMinutes: 5, color: Color("App Dev")),
            DailyScrum(id: UUID(), title: "Web Dev", attendees: ["Chella", "Chris", "Christina", "Eden", "Karla", "Lindsey", "Aga", "Chad", "Jenn", "Sarah"], lengthInMinutes: 1, color: Color("Web Dev"))
        ]
    }
}

