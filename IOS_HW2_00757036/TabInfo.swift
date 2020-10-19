//
//  TabInfo.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct TabInfo: View {
    var body: some View {
        VStack{
            Image("info")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 250)
                .shadow(radius: 5)
            Text("Creater by Eric W.")
                .bold()
            Text("\n")
            Link(destination: URL(string: "https://github.com/Xhadow0823")!, label: {
                Text("GitHub")
            })
            Link(destination: URL(string: "https://medium.com/@eric17618")!, label: {
                Text("Medium")
            })
            Text("\n2020\n")
            Group{
                Text("Select Icon")
                HStack{
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                        }) {
                        Image("square")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                    }
                    Button(action: {
                        UIApplication.shared.setAlternateIconName(nil)
                        }) {
                        Image("mario")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50)
                    }
                }
            }
        }
    }
}

struct TabInfo_Previews: PreviewProvider {
    static var previews: some View {
        TabInfo()
    }
}
