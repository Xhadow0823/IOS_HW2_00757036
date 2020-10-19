//
//  TabGallary.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct TabGallary: View {
    var body: some View {
        NavigationView{
            ScrollView(){
                LazyVGrid(columns: [GridItem(), GridItem()]){
                    ForEach(1..<14){
                        (index) in
                        VStack{
                            NavigationLink(
                                destination: GallaryPic(fname: "gp\(index)"),
                                label: {
                                    Image("gp\(index)")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(height: 200)
                                        .shadow(radius: 20)
                                })
                            
                        }
                    }
                }
                .navigationBarTitle("Mario World Gallary")
            }
        }
    }
}

struct TabGallary_Previews: PreviewProvider {
    static var previews: some View {
        TabGallary()
    }
}
