//
//  ConactView.swift
//  Lesson 4.5 List
//
//  Created by Psycho on 24.09.2022.
//

import SwiftUI

struct ContactView: View {
    let contact: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
        }
    }
}

struct ConactView_Previews: PreviewProvider {
    static var previews: some View {
        ConactView(contact: Person.getContactList())
    }
}
