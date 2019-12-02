//
//  UserData.swift
//  firstApp
//
//  Created by Maciej Krysiak on 16/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var city = CityData
    
        /*{
        didSet {
            let encoder = JSONEncoder()
            
            if let encoded = try?
                encoder.encode(city) {
                    UserDefaults.standard.set(encoded, forKey: "city")
            }
        }
    }*/
}

