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
            "montserrat": [
                .regular: "Montserrat-Regular.ttf",
                .medium: "Montserrat-Medium.ttf",
                .bold: "Montserrat-Bold.ttf"
                
            ],
            "inter": [
                .medium: "Inter-Medium.ttf"
            ],
            "tiny5": [
                .regular: "tiny5-Regular.ttf"
            ]
            
        ])
        ```
                  
         return true
        
    }
}

 
 ```
 
 ```swift 
  struct ContentView: View {
  
    var body: some View {
     
        
            
            Text("greet").tCustomFont(family: "Tiny5", size: 22, weight: .regular)
        
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
