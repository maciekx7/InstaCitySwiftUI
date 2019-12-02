//
//  ContinentsRow.swift
//  firstApp
//
//  Created by Maciej Krysiak on 17/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct ContinentsRow: View {
    var continentName: String
    var items: [City]
    
    
    var body: some View {
            VStack(alignment: .leading) {
                Text(self.continentName)
                    .font(.headline)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(self.items) { city in
                            NavigationLink(
                                destination: ContentView(
                                    city: city
                                )
                            ) {
                                ContinentItem(city: city)
                            }
                        }
                    }
                }
                .frame(height: 185)
            }
        }
    }
    

struct ContinentItem: View {
    var city: City
    
    var body: some View {
        VStack() {
            city.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            HStack {
                Text(city.name)
                    .font(.caption)
                    
                
                Spacer()
                
                Text(city.country)
                    .font(.caption)
                    .foregroundColor(Color.gray)
            }
        }
        .padding(.leading, 15)
    }
}

struct ContinentsRow_Previews: PreviewProvider {
    static var previews: some View {
        ContinentsRow(
            continentName: CityData[0].continent.rawValue,
            items: Array(CityData.prefix(3))
        )
    }
}
