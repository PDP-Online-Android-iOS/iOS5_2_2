//
//  HomeScreen.swift
//  Task 2
//
//  Created by Ogabek Matyakubov on 25/11/22.
//

import SwiftUI
import MapKit

struct MapPinPlace: Identifiable {
    let id = UUID()
    let coordinate: CLLocationCoordinate2D
}

struct HomeScreen: View {
    
    @State var region = MKCoordinateRegion(center: .init(latitude: 41.55857906680719, longitude: 60.62243755912467), latitudinalMeters: 300, longitudinalMeters: 300)
    
    @State var pin = MapPinPlace(coordinate: .init(latitude: 41.55857906680719, longitude: 60.62243755912467))
    
    var body: some View {
        
        Map(
            coordinateRegion: $region,
            showsUserLocation: true,
            userTrackingMode: nil,
            annotationItems: [pin]
        ) { item in
            MapMarker(coordinate: item.coordinate)
        }
                                     
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
