//
//  PresonInfoView.swift
//  Lesson 4.5 List
//
//  Created by Psycho on 24.09.2022.
//

import SwiftUI

struct PersonInfoView: View {
    let person: String
    let imageName: String
    
    var body: some View {
        HStack {
            Text(Image(systemName: imageName))
                .foregroundColor(.blue)
            Text(person)
        }
    }
}

struct PresonInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfoView(person: "", imageName: "")
    }
}
