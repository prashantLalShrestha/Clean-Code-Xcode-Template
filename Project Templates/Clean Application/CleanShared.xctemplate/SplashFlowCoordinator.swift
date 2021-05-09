//
//  SplashFlowCoordinator.swift
//  

import UIKit

protocol SplashFlowCoordinatorDependencies {
    func makeSplashViewController(closures: SplashViewModelClosures) -> UIViewController
}

final class SplashFlowCoordinator {
    
    private weak var navigationController: UINavigationController!
    private let dependencies: SplashFlowCoordinatorDependencies
    
    
    init(navigationController: UINavigationController,
         dependencies: SplashFlowCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    
    func start(flow: @escaping SplashFlowIntentClosure) {
        self.startSplash(in: navigationController, flow: flow)
    }
    
    private func startSplash(in navigationController: UINavigationController, flow: @escaping SplashFlowIntentClosure) {
        let closures = SplashViewModelClosures(
            goToDashboard: { flow(.dashboard) }
        )
        let vc = dependencies.makeSplashViewController(closures: closures)
        navigationController.pushViewController(vc, animated: true)
    }
}
