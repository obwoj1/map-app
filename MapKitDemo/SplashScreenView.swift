//
//  SplashScreenView.swift
//  MapKitDemo
//
//  Created by Oba W on 2/27/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isactive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if isactive {
            ContentView()
        } else {
            VStack{
              
                VStack{
        
                    Image("bmore")
                        .resizable()
                        .padding()
                        .font(.system(size: 80))
                        .cornerRadius(1.5)
                        
                    Text("Rates")
                        .font(Font.custom("Baskerbille-Bold", size : 26))
                        .foregroundColor(.black.opacity(0.80))
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() +  2.0) {
                    withAnimation{
                        self.isactive = true
                    }
                    
               
                }
            }
        }
       
    }
}

#Preview {
    SplashScreenView()
}
