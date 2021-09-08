//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct ScrumsView: View {
    var scrums: [DailyScrum]
    var body: some View {
        List {
            ForEach(scrums) { scrum in
                
                NavigationLink(destination: scrumDetail(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.color)
            }
        }.padding()
        .navigationTitle("Daily Scrums")
    }
}

struct ScrumsView_Previews: PreviewProvider {
    
    static var scrums = DailyScrum.data
    static var previews: some View {
        NavigationView {
        ScrumsView(scrums: scrums)
        }
    }
}
