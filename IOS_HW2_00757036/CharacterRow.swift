//
//  CharacterRow.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct CharacterRow: View {
    let character: Character
    var body: some View {
        HStack{
            Image(character.fname)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipped()
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(radius: 5)
            VStack{
                Text(character.name)
                    .bold()
                // bigger size
            }
            Spacer()
        }.padding(20)
    }
}

struct CharacterRow_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRow(character: leaders[1])
            .previewLayout(.sizeThatFits)
    }
}
