//
//  ContentView.swift
//  firstApp
//
//  Created by Maciej Krysiak on 16/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var city: City
    
    
    var body: some View {
        VStack {
            ScrollView {
            
                    
                MapView(city: city)
                    .frame(height: 300)
                    
                
                ImageView(image: city.image)
                    .offset(x: 0, y: -130)
                    .padding(.bottom, -130)
                
                
                
                TextInfo(city: city)
                    .padding(.horizontal, 12.0)
                
                Spacer()
            }
            .background(Color.black)
                .environment(\.colorScheme, .dark)
            .navigationBarTitle(Text(verbatim: city.country), displayMode: .inline)
                
            }
        
        }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(city: CityData[1])
    }
}
#endif
