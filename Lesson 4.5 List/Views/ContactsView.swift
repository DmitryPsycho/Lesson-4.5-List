//
//  ContactsView.swift
//  Lesson 4.5 List
//
//  Created by Psycho on 24.09.2022.
//

import SwiftUI

struct ContactsView: View {
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: ContactDetailsView(person: person)) {
                    Text(person.fullName)
                }
            }
            .navigationTitle("Contact List")
            .listStyle(.plain)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView(persons: Person.getContactList())
    }
}
