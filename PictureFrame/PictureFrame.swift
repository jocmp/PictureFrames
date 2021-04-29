//
//  ContentView.swift
//  PictureFrame
//
//  Created by Josiah Campbell on 4/28/21.
//

import SwiftUI

struct PictureFrame: View {

    var body: some View {
        Image("night")
            .resizable()
            .border(Color(red: 238, green: 238, blue: 238), width: 20)
            .shadow(color: .black, radius: 2, x: 0, y: 2)
            .shadow(color: .black, radius: 2, x: 0, y: -2)
            .scaledToFit()
    }
}

struct PictureFrameMatte: View {
    var body: some View {
        ZStack {
            Rectangle()
            Image("night")
                .resizable()
                .border(Color(red: 238, green: 238, blue: 238), width: 40)
                .scaledToFill()
                .padding(15)
        }
        .shadow(color: .black, radius: 2, x: 0, y: 2)
        .shadow(color: .black, radius: 2, x: 0, y: -2)
        .frame(width: 400, height: 300)
    }
}

struct PictureFrame_Previews: PreviewProvider {
    static var previews: some View {
        PictureFrame()
            .padding()
            .previewLayout(.sizeThatFits)
        PictureFrameMatte()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
