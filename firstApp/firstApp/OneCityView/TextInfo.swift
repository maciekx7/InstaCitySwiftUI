//
//  TextInfo.swift
//  firstApp
//
//  Created by Maciej Krysiak on 16/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct TextInfo: View {
    @EnvironmentObject var userData: UserData
    @ObservedObject var SettingsVM = SettingsViewModel()
    
    var city: City
    
    var cityIndex: Int {
        userData.city.firstIndex(where: {$0.id == city.id})!
    }
    
    var body: some View {
        VStack() {
            HStack {
                Text(city.name)
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                
                Button(action: {
                    self.userData.objectWillChange.send()
                    self.userData.city[self.cityIndex].isFavorite.toggle()
                }) {
                    if self.userData.city[self.cityIndex].isFavorite {
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                    } else {
                        Image(systemName: "star")
                            .foregroundColor(Color.gray)
                    }
                }
            }
                
            Text(city.description)
                .font(.body)
                .foregroundColor(Color.gray)
                
                
            HStack() {
                Text("Region")
                    .font(.subheadline)
                    .foregroundColor(Color.orange)
                    .padding(.trailing)
                Spacer()
                Text(city.state)
                    .foregroundColor(Color.white)
                    
            }
            .padding(.top, 12.0)
            
            HStack() {
                Text("Population")
                    .font(.subheadline)
                    .foregroundColor(Color.orange)
                    .padding(.trailing)
                Spacer()
                Text("\(city.people)")
                    .foregroundColor(Color.white)
                    
            }
            
            
            HStack() {
                Text("Area")
                    .font(.subheadline)
                    .foregroundColor(Color.orange)
                    .padding(.trailing)
                Spacer()
                Text("\(city.area) km2")
                    .foregroundColor(Color.white)
                    
            }
           
        }
    }
}

struct TextInfo_Previews: PreviewProvider {
    static var previews: some View {
        TextInfo(city: CityData[0])
    }
}
