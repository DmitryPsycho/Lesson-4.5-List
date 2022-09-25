//
//  NumbersView.swift
//  Lesson 4.5 List
//
//  Created by Psycho on 24.09.2022.
//

import SwiftUI

struct NumbersView: View {
    let persons: [Person]
    
    var body: some View {
        List(persons) { person in
            Section(person.fullName) {
                Label(person.phoneNumber, systemImage: "phone")
                Label(person.email, systemImage: "tray")
            }
        }
        .listStyle(.plain)
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(persons: Person.getContactList())
    }
}
