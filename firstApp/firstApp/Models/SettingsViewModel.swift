//
//  SettingsViewModel.swift
//  firstApp
//
//  Created by Maciej Krysiak on 01/12/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import Foundation


class SettingsViewModel: ObservableObject {
    
    @Published var showFavoritesOnly: Bool = UserDefaults.standard.bool(forKey: "showFavoritesOnly") {
        didSet {
            UserDefaults.standard.set(self.showFavoritesOnly, forKey: "showFavoritesOnly")
        }
    }
    /*
    @Published var city: City = UserDefaults.standard.object(forKey: "city") {
        didSet {
            UserDefaults.standard.set(self.city, forKey: "city")
        }
    }
 */
}
