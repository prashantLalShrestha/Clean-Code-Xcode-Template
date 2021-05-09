//
//  SplashModule.swift
//

import UIKit


public struct SplashModuleDependencies {
    
    public init () { }
}

// MARK: - SplashModule
public struct SplashModule {
    
    private let diContainer: SplashDIContainer
    
    public init(dependencies: SplashModuleDependencies) {
        self.diContainer = SplashDIContainer(dependencies: dependencies)
    }
    
    public func startSplashFlow(in navigationController: UINavigationController, flow: @escaping SplashFlowIntentClosure) {
        let flowCoordinator = diContainer.makeSplashFlowCoordinator(navigationController: navigationController)
        flowCoordinator.start(flow: flow)
    }
}
