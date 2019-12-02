//
//  Home.swift
//  firstApp
//
//  Created by Maciej Krysiak on 17/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    var body: some View {
        
        TabView {
            //
            ContinentsHome()
                .tabItem {
                    Text("Categories")
                    Image(systemName: "star.fill")
            }
            
            
            CityList()
                .tabItem {
                    Text("All")
                    Image(systemName: "list.bullet")
            }
            
            
        }
          .environment(\.colorScheme, .dark)
            
        .edgesIgnoringSafeArea(.top)
        
        }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
