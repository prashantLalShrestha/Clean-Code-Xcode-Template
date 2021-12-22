//
//  ___FILENAME___
//


import UIKit

final class ___VARIABLE_sceneIdentifier___DIContainer {
    
    private let dependencies: ___VARIABLE_sceneIdentifier___ModuleDependencies
    
    // MARK: - Initializers
    init(dependencies: ___VARIABLE_sceneIdentifier___ModuleDependencies) {
        self.dependencies = dependencies
    }
    
}

// MARK: - ___VARIABLE_sceneIdentifier___FlowCoordinatorDependencies
extension ___VARIABLE_sceneIdentifier___DIContainer: ___VARIABLE_sceneIdentifier___FlowCoordinatorDependencies {
    
    // MARK: - ___VARIABLE_sceneIdentifier___
    func make___VARIABLE_sceneIdentifier___ViewController(closures: ___VARIABLE_sceneIdentifier___ViewModelClosures) -> UIViewController {
        return ___VARIABLE_sceneIdentifier___ViewController(with: make___VARIABLE_sceneIdentifier___ViewModel(closures: closures))
    }
    
    private func make___VARIABLE_sceneIdentifier___ViewModel(closures: ___VARIABLE_sceneIdentifier___ViewModelClosures) -> ___VARIABLE_sceneIdentifier___ViewModel {
        return Default___VARIABLE_sceneIdentifier___ViewModel(closures: closures)
    }
    
    // MARK: - Flow Coordinators
    func make___VARIABLE_sceneIdentifier___FlowCoordinator(navigationController: UINavigationController) -> ___VARIABLE_sceneIdentifier___FlowCoordinator {
        return ___VARIABLE_sceneIdentifier___FlowCoordinator(navigationController: navigationController, dependencies: self)
    }
    
}
