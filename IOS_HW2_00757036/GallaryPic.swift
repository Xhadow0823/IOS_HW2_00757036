//
//  GallaryPic.swift
//  IOS_HW2_00757036
//
//  Created by 翁星宇 on 2020/10/18.
//

import SwiftUI

struct GallaryPic: View {
    let fname: String
    var body: some View {
        Image(fname)
            .resizable()
            .scaledToFit()
            .padding(5)
            .navigationTitle("Gallary Item")
    }
}

struct GallaryPic_Previews: PreviewProvider {
    static var previews: some View {
        GallaryPic(fname: "gp7")
    }
}
