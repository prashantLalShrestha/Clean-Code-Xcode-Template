//
//  SplashDIContainer.swift
//  


import UIKit

final class SplashDIContainer {
    
    private let dependencies: SplashModuleDependencies
    
    // MARK: - Initializers
    init(dependencies: SplashModuleDependencies) {
        self.dependencies = dependencies
    }
    
}

// MARK: - SplashFlowCoordinatorDependencies
extension SplashDIContainer: SplashFlowCoordinatorDependencies {
    
    // MARK: - Splash
    func makeSplashViewController(closures: SplashViewModelClosures) -> UIViewController {
        return SplashViewController(with: makeSplashViewModel(closures: closures))
    }
    
    private func makeSplashViewModel(closures: SplashViewModelClosures) -> SplashViewModel {
        return DefaultSplashViewModel(closures: closures)
    }
    
    // MARK: - Flow Coordinators
    func makeSplashFlowCoordinator(navigationController: UINavigationController) -> SplashFlowCoordinator {
        return SplashFlowCoordinator(navigationController: navigationController, dependencies: self)
    }
    
}
