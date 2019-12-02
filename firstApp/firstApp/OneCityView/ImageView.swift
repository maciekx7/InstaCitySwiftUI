//
//  ImageView.swift
//  firstApp
//
//  Created by Maciej Krysiak on 16/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct ImageView: View {
    var image: Image
    var body: some View {
        NavigationLink(destination: IMAGE(image: image)) {
            image
                .renderingMode(.original)
                .resizable()
                .frame(width: 330.0, height: 250.0)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 2))
                .shadow(radius: 10)
        }
            
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(image: Image("warsaw"))
    }
}
