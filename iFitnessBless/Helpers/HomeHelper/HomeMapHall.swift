//
//  HomeMapHall.swift
//  iFitnessBless
//
//  Created by Blessme on 25.10.2021.
//

import SwiftUI
import MapKit

struct Marker: Identifiable{
    let id = UUID()
    var location: MapMarker
}

struct HomeMapHall: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 55.665066, longitude: 37.597717), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.2))
    
    let marker = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: 55.665066, longitude: 37.597717), tint: .purple))]
    
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: marker){ marker in
            marker.location
        }.edgesIgnoringSafeArea(.all)
    }
    
    
}

struct HomeMapHall_Previews: PreviewProvider {
    static var previews: some View {
        HomeMapHall()
        
        
    }
}
