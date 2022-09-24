//
//  ContentView.swift
//  Lesson 4.5 List
//
//  Created by Psycho on 24.09.2022.
//

import SwiftUI

struct MainScreenView: View {
    private let personInfo = Person.getContactList()
    
    var body: some View {
        TabView {
            ContactsView(persons: personInfo)
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Contacts")
                }
            NumbersView(persons: personInfo)
                .tabItem {
                    Image(systemName: "phone.fill")
                    Text("Numbers")
                }
        }
    }
}

struct MainScreenView_Previews: PreviewProvider {
    static var previews: some View {
        MainScreenView()
    }
}
