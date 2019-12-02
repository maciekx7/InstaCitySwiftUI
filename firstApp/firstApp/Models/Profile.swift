//
//  Profile.swift
//  firstApp
//
//  Created by Maciej Krysiak on 01/12/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI

class Profile: ObservableObject{
    @Published var name :String = UserDefaults.standard.string(forKey: "name")
}


