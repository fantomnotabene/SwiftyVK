import SwiftyVK




#if os(iOS)
    import UIKit
    
    
    
    @UIApplicationMain
    final class AppDelegate : UIResponder, UIApplicationDelegate {
        var window: UIWindow?
        
        func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
            _ = VKDelegateExample()
            return true
        }
        
        func application(_ app: UIApplication, open url: URL, options: [UIApplicationOpenURLOptionsKey : Any] = [:]) -> Bool {
            VK.processURL(url: url, options: options)
            return true
        }
        
        
        func application(_ application: UIApplication, open url: URL, sourceApplication: String?, annotation: Any) -> Bool {
            VK.processURL_old(url: url, sourceApplication: sourceApplication)
            return true
        }
    }
#endif




#if os(OSX)
    import Cocoa
    
    
    
    @NSApplicationMain
    final class AppDelegate : NSObject, NSApplicationDelegate {
        
        func applicationDidFinishLaunching(_ aNotification: Notification) {
            _ = VKDelegateExample()
        }
    }
#endif



extension AppDelegate {
    @IBAction func buttonDown(_ sender: AnyObject) {
        APIWorker.action(sender.tag)
    }
}
