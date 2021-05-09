//
//  AppDelegate.swift
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    
    let appDIContainer = AppDIContainer()
    var appFlowCoordinator: AppFlowCoordinator?
    var window: UIWindow?
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        applyAppearance()
        
        start()
        
        return true
    }

}


private extension AppDelegate {
    func applyAppearance() {
    }
    
    func start() {
        if window == nil {
            window = UIWindow()
        }
        let navigationController = UINavigationController()

        window?.rootViewController = navigationController
        appFlowCoordinator = AppFlowCoordinator(navigationController: navigationController,
                                                appDIContainer: appDIContainer)
        appFlowCoordinator?.start()
        window?.makeKeyAndVisible()
    }
}


