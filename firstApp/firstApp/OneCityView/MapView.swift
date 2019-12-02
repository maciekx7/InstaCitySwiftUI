//
//  MapView.swift
//  firstApp
//
//  Created by Maciej Krysiak on 16/11/2019.
//  Copyright © 2019 Maciej Krysiak. All rights reserved.
//

import SwiftUI
import MapKit

class Place: NSObject, MKAnnotation {
  let locationName: String
  let coordinate: CLLocationCoordinate2D
  
  init(locationName: String, coordinate: CLLocationCoordinate2D) {
    self.locationName = locationName
    self.coordinate = coordinate
    
    super.init()
  }
  
  var subtitle: String? {
    return locationName
  }
}


struct MapView: UIViewRepresentable {
    var city: City
    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        MKMapView()
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
       
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region =  MKCoordinateRegion(center: city.locationCoordinate, span: span)
        let pin = Place(locationName: city.name,  coordinate: city.locationCoordinate)
        uiView.setRegion(region, animated:true)
        uiView.addAnnotation(pin)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(city: CityData[0])
    }
}
