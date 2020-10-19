//
//  ContentView.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView{
            TabCharacter()
                .tabItem {
                    Image(systemName: "person.2.circle")
                    Text("Characters")
                }
            TabGallary()
                .tabItem {
                    Image(systemName: "tray.2")
                    Text("Gallary")
                }
            TabInfo()
                .tabItem {
                    Image(systemName: "info.circle")
                    Text("Info.")
                }
        }.accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}
