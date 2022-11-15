//
//  ContentView.swift
//  FitnessApp
//
//  Created by bashayer reda on 11/14/22.
//  Copyright © 2022 bashayer reda. All rights reserved.
//

import SwiftUI
struct LandingView: View {
    @State private var isActive = false
    var body: some View {
        NavigationView{
            GeometryReader{ proxy in
                VStack{
                    Spacer().frame(height: proxy.size.height * 0.18)
                    Text("Increment").font(.system(size: 50, weight: .medium, design: .default)).foregroundColor(.white)
                    Spacer()
                    NavigationLink(destination: CreateChallenge(), isActive: self.$isActive){
                        
                        Button(action: {
                            self.isActive = true
                        }){
                            HStack{
                                Spacer()
                                Image(systemName: "plus.circle")
                                    .font(.system(size : 24,weight: .semibold))
                                    .foregroundColor(.white)
                                Text("Create a challenge")
                                    .font(.system(size: 24))
                                    .foregroundColor(.white)
                                Spacer()
                            }
                        }.padding(.horizontal, 15)
                            .padding(.vertical, 10)
                            .buttonStyle(PrimaryButtonStyle(fillColor: .darkPrimaryColor))
                        
                    }
                }.frame(maxWidth: .infinity,maxHeight: .infinity)
                    .background(Image("pullup")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .overlay(Color.black.opacity(0.4))
                        .frame(width:proxy.size.width)
                        .edgesIgnoringSafeArea(.all))
                
            }
        }.accentColor(.primary)
    }
}



struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            LandingView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
            
            LandingView()
                .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
                .previewDisplayName("iPhone 11 Pro Max")
            LandingView()
                .previewDevice(PreviewDevice(rawValue: "iPhone SE"))
                .previewDisplayName("iPhone SE  ")
        }
        
    }
}

