//
//  TabCharacter.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct TabCharacter: View {
    var body: some View {
        NavigationView {

            List {
                Section(header: Text("Full Cast")){
                    ScrollView(.horizontal){
                        HStack(spacing: 20){
                            ForEach(1..<5){
                                (index) in
                                NavigationLink(
                                    destination: PageTab()){
                                    Image("tp\(index)")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 250)
                                }
                            }
                        }
                    }
                }
                let chs = [leaders, protagonists, antagonists]
                let labels = ["Leaders", "Protagonists", "Antagonists"]
                ForEach(chs.indices){
                    (index) in
                    Section(header: Text(labels[index])){
                        ForEach(chs[index]){
                                (leader) in
                                NavigationLink(
                                    destination: CharacterPage(character: leader)){
                                    CharacterRow(character: leader)
                                }
                        }
                    }
                }
            }
            .navigationBarTitle("Characters in Mario World")
        }
    }
}

struct TabCharacter_Previews: PreviewProvider {
    static var previews: some View {
        TabCharacter()
    }
}
