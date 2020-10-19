//
//  CharacterPage.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct CharacterPage: View {
    let character: Character
    var body: some View {
        VStack{
            HStack{
                Image(character.fname)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 200)
                Link(destination: URL(string: character.link)!, label: {
                    Text(character.name)
                        .bold()
                })
                Spacer()
            }.padding(.horizontal, 20)
            TextEditor(text: .constant(character.intro))
                .frame(height: 150)
                .padding(.horizontal, 20)
            Spacer()
        }
        .navigationTitle(character.name)
    }
}

struct CharacterPage_Previews: PreviewProvider {
    static var previews: some View {
        CharacterPage(character: leaders[4])
    }
}
