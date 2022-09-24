//
//  ConactView.swift
//  Lesson 4.5 List
//
//  Created by Psycho on 24.09.2022.
//

import SwiftUI

struct ContactDetailsView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                Spacer()
            }
            PersonInfoView(person: person.phoneNumber, imageName: "phone")
            PersonInfoView(person: person.email, imageName: "tray")
        }
        .navigationTitle(person.fullName)
    }
}

struct ConactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailsView(person: Person.getContactList().first!)
    }
}
