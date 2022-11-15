//
//  CreateChallenge.swift
//  FitnessApp
//
//  Created by bashayer reda on 11/16/22.
//  Copyright © 2022 bashayer reda. All rights reserved.
//

import SwiftUI
struct CreateChallenge : View {
    var body: some View {
        VStack {
            DropDownView()
            DropDownView()
            DropDownView()
              Button(action:{}){
                Text("Next").font(.system(size: 24, weight: .medium , design: .default))
            }
        }.navigationBarTitle("Create")
    }
}
