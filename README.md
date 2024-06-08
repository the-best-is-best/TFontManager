# TFontManager

[![Version](https://img.shields.io/cocoapods/v/TFontManager.svg?style=flat)](https://cocoapods.org/pods/TFontManager)
[![License](https://img.shields.io/cocoapods/l/TFontManager.svg?style=flat)](https://cocoapods.org/pods/TFontManager)
[![Platform](https://img.shields.io/cocoapods/p/TFontManager.svg?style=flat)](https://cocoapods.org/pods/TFontManager)

## Example
 ```swift 
  import TFontManager

class AppDelegate: NSObject, UIApplicationDelegate , UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        TFontManager.shared.setFontMappings([
            fontsFamiliy[0] : [
                .regular: SharedRes.fonts().montserrat_regular.fontName,
                .medium: SharedRes.fonts().montserrat_medium.fontName,
                .bold: SharedRes.fonts().montserrat_bold.fontName
                
            ],
            fontsFamiliy[1]: [
                .medium: SharedRes.fonts().inter_medium.fontName
            ],
            fontsFamiliy[2]: [
                .regular: SharedRes.fonts().tiny5_regular.fontName
            ]
            
        ])
        ```
                  
         return true
        
    }
}

let fontsFamiliy: [String] = [
    "montserrat",
    "inter",
    "tiny5"
]

 
 ```
 
 ```swift 
  struct ContentView: View {
  
    var body: some View {
     
        if let regularFont = TFontManager.shared.customFont(family: fontsFamiliy[2], size: 16, weight: .regular) {
            
            Text("greet").font(regularFont)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

 ```
 

## Requirements

## Installation

TFontManager is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TFontManager'
```

## Author

Michelle Raouf, michelle.raouf@outlook.com

## License

TFontManager is available under the MIT license. See the LICENSE file for more info.
