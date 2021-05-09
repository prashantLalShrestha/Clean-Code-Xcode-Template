//
//  AppFlowCoordinator.swift
//  

import UIKit


final class AppFlowCoordinator {
    
    private weak var navigationController: UINavigationController!
    private let appDIContainer: AppDIContainer
    
    
    init(navigationController: UINavigationController,
         appDIContainer: AppDIContainer) {
        self.navigationController = navigationController
        navigationController.modalPresentationStyle = .fullScreen
        self.appDIContainer = appDIContainer
    }
    
    func start() {
        startSplashModule(in: navigationController)
    }
    
    
    private func startSplashModule(in navigationController: UINavigationController) {
        let splashModule = appDIContainer.makeSplashModule()
        splashModule.startSplashFlow(in: navigationController) { [unowned navigationController] flowIntent in
            switch flowIntent {
            case .dashboard: break
            }
        }
    }
}


private extension AppFlowCoordinator {
    
    /**
     Used to create a starting navigation controller with an escaping funciton in order to initialize a module flow in it
     
     - parameter startModule: should contain a function to a module flow
     
     - returns: navigation controller with a starting module flow in it.
     */
    func makeNavigationController(with startModule: @escaping (UINavigationController) -> Void) -> UINavigationController {
        let navigationController = UINavigationController()
        navigationController.modalPresentationStyle = .fullScreen
        startModule(navigationController)
        return navigationController
    }
}
