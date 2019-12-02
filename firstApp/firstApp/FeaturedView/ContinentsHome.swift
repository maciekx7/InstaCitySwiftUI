//
//  Home.swift
//  firstApp
//
//  Created by Maciej Krysiak on 17/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct ContinentsHome: View {
    @State var ShowingProfile = false
    
    var continents : [String: [City]] {
        Dictionary(
            grouping: CityData,
            by: { $0.continent.rawValue }
        )
    }
    
    var featured: [City] {
        CityData.filter { $0.isFeatured }
    }
    
    
    var profileButton: some View {
        Button( action: {self.ShowingProfile.toggle() }) {
            Image(systemName: "person.crop.circle")
                .imageScale(.large)
                .accessibility(label: Text("User Profile"))
                .padding()
                
        }
    }
    
    var body: some View {
        
        NavigationView {
            List {
                FeaturedCities(cities: featured)
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                 
                ForEach(continents.keys.sorted(), id: \.self) { key in
                    ContinentsRow(continentName: key, items: self.continents[key]!)
                    }
                    .listRowInsets(EdgeInsets())
                
                }
                    .navigationBarTitle(Text("Featured"))
                    .navigationBarItems(trailing: profileButton)
                    .sheet(isPresented: $ShowingProfile) {
                            ProfileView()
                    }
            }
      
        
        }
}


struct FeaturedCities: View {
    var cities : [City]
    var body: some View {
        cities[0].image.resizable()
    }
}


struct ContinentsHome_Previews: PreviewProvider {
    static var previews: some View {
        ContinentsHome()
    }
}
