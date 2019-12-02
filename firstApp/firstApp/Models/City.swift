
/*

Abstract:
The model for an individual landmark.
*/

import SwiftUI
import CoreLocation

struct City: Hashable, Codable, Identifiable {
    var id: Int
    var country: String
    var name: String
    var description: String
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var state: String
    var people: Int
    var area: Int
    var continent: Continent
    var isFavorite: Bool
    var isFeatured: Bool
    

    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    enum Continent: String, CaseIterable, Codable, Hashable {
        case europe = "Europe"
        case asia = "Asia"
        case america = "America"
    }
    
    
}

extension City {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

