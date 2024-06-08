//
//  FontManager.swift
//  TFontManager
//
//  Created by MichelleRaouf on 08/06/2024.
//

import Foundation
import SwiftUI

public class TFontManager {
    public static let shared = TFontManager()
    
    private init() {
    
    }
    
    private var fontFamilies: [String: [Font.Weight: String]] = [:]
    private let accessQueue = DispatchQueue(label: "org.cocoapods.TFontManager", attributes: .concurrent)
     
    // Method to set font mappings
    public func setFontMappings(_ mappings: [String: [Font.Weight: String]]) {
           var updatedMappings: [String: [Font.Weight: String]] = [:]
           for (family, weights) in mappings {
               var updatedWeights: [Font.Weight: String] = [:]
               for (weight, fontName) in weights {
                   let updatedFontName = fontName.replacingOccurrences(of: ".ttf", with: "")
                   updatedWeights[weight] = updatedFontName
               }
               updatedMappings[family] = updatedWeights
           }
           
           accessQueue.async(flags: .barrier) {
               self.fontFamilies = updatedMappings
           }
       }
        
        // Method to get custom font with specific weight for a given font family
        public func customFont(family: String, size: CGFloat, weight: Font.Weight) -> Font? {
            var fontName: String?
         
            accessQueue.sync {
                fontName = self.fontFamilies[family]?[weight]
            }
            
            guard let name = fontName else {
                print("Font not found for family: \(family) with weight: \(weight)")
                return nil
            }
            
            return Font.custom(name, size: size)
        }

}
