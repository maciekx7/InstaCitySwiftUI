//
//  CityList.swift
//  firstApp
//
//  Created by Maciej Krysiak on 16/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct CityList: View {
    @EnvironmentObject private var userData: UserData
    @ObservedObject var SettingsVM = SettingsViewModel()
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $SettingsVM.showFavoritesOnly) {
                    Text("Show Favorites Only")
                }
                
                ForEach(userData.city) { City in
                    if !self.SettingsVM.showFavoritesOnly || City.isFavorite {
                        NavigationLink(
                            destination: ContentView(city: City)
                                .environmentObject(self.userData)
                        )
                        {
                            CityRow(city: City)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Capitals"))
        }
    }
}

struct CityList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CityList()
                .environmentObject(UserData())
        }
    }
}
