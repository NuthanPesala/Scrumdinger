//
//  scrumDetail.swift
//  Scrumdinger
//
//  Created by Nuthan Raju on 08/09/21.
//

import SwiftUI

struct scrumDetail: View {
    
    var scrum: DailyScrum
    
    var body: some View {
        List {
            Section(header: Text("Meeting Info")) {
                NavigationLink(destination: MeetingView()) {
                    Label("Start Meeting", systemImage: "timer")
                        .accessibility(label: Text("Start Meeting"))
                }
                HStack {
                    Label("Length", systemImage: "clock")
                        .accessibility(label: Text("Meeting length"))
                    Spacer()
                    Text("\(scrum.lengthInMinutes) minutes")
                    
                }
                HStack {
                Label("Color", systemImage: "paintpalette")
                    Spacer()
                    Image(systemName: "checkmark.fill")
                        .foregroundColor(scrum.color)
                }
            }
            Section(header: Text("Attendees")) {
                ForEach(scrum.attendees, id: \.self) {
                    attendee in
                    Label(attendee, systemImage: "person")
                        .accessibilityLabel(Text("Person"))
                        .accessibilityValue(Text(attendee))
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .navigationTitle(Text(scrum.title))
    }
}

struct scrumDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        scrumDetail(scrum: DailyScrum.data[0])
        }
    }
}
