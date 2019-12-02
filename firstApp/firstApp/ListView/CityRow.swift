//
//  ContentView.swift
//  firstApp
//
//  Created by Maciej Krysiak on 16/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct CityRow: View {
    var city: City

    var body: some View {
        HStack() {
            city.image
                .resizable()
                .frame(width: 50, height: 50)
                
                
            Text(city.country)
            
            Spacer()
            
            if city.isFavorite {
                Image(systemName: "star.fill")
                    .imageScale(.medium)
                    .foregroundColor(.yellow)
                
            }
        }
    }
}

#if DEBUG
struct CityRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
        CityRow(city: CityData[0])
        CityRow(city: CityData[1])
    }.previewLayout(.fixed(width: 300, height: 70))
    }
}
#endif
