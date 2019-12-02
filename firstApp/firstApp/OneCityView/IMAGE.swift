//
//  IMAGE.swift
//  firstApp
//
//  Created by Maciej Krysiak on 18/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct IMAGE: View {
    @State private var scale: CGFloat = 1.0
    @State private var dragOffset = CGSize.zero
     var image: Image
        var body: some View {
            image
                .resizable()
                .frame(width: 715.0, height: 400.0)
                .fixedSize(horizontal: false, vertical: true)
                .scaleEffect(scale)
                .gesture(MagnificationGesture()
                    .onChanged { value in
                    self.scale = value.magnitude
                })
            .onAppear {
                let baseAnimation = Animation.default
               // let repeated = baseAnimation.
                return withAnimation(baseAnimation) {
                    self.scale = 0.5
                }
            }
    }
}

struct IMAGE_Previews: PreviewProvider {
    static var previews: some View {
        IMAGE(image: Image("warsaw"))
    }
}
