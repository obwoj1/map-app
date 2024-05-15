//
//  ContentView.swift
//  MapKitDemo
//
//  Created by Oba W on 2/27/24.
//

import SwiftUI
import MapKit
struct ContentView: View {
    
    let tu = CLLocationCoordinate2D(latitude:39.39687,longitude:-76.58922)
    let msu = CLLocationCoordinate2D(latitude:39.34369,longitude:-76.58436)
    
    var body: some View {
        Map(){
            Marker("Townson", coordinate: tu)
            Marker("Morgan State", coordinate: msu)
        }
        .safeAreaInset(edge: .bottom){
            
            HStack{
                Spacer()
                Button{
                } label: {
                    Text("Morgan State")
                    
                }
                Spacer()
            }
            .padding(.top)
            
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
