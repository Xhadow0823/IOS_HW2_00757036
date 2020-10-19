//
//  PageTab.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct PageTab: View {
    var body: some View {
        TabView {
            ForEach(1..<5){
                (index) in
                Image("tp\(index)")
                    .resizable()
                    .scaledToFit()
                    .tabItem {
                        Text("\(index)")
                    }
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .navigationTitle("Full Cast")
    }
}

struct PageTab_Previews: PreviewProvider {
    static var previews: some View {
        PageTab()
    }
}
