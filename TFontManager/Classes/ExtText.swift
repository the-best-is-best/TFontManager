//
//  ExtText.swift
//  TFontManager
//
//  Created by MichelleRaouf on 09/06/2024.
//

import Foundation
import SwiftUI

public extension Text {
    func tCustomFont(family: String, size: CGFloat, weight: Font.Weight ) -> Text {
        var font: Font?

        let accessQueue = DispatchQueue(label: "org.cocoapods.TFontManager")
        accessQueue.sync {
            font = TFontManager.shared.customFont(family: family, size: size, weight: weight)
        }

        guard font != nil else {
            print("Font not found for family: \(family) with weight: \(weight)")
            return self
        }

        return self.font(font)
    }
}
