//
//  ContentView.swift
//  TFontManager_Example
//
//  Created by MichelleRaouf on 09/06/2024.
//  Copyright © 2024 CocoaPods. All rights reserved.
//

import SwiftUI
import TFontManager

struct ContentView: View {
  
    var body: some View {
            
        Text("greet").tCustomFont(family: "EBGaramond", size: 22, weight: .thin)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
