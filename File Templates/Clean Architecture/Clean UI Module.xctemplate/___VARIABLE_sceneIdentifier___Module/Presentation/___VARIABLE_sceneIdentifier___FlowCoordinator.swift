//
//  ___FILENAME___
//

import UIKit

protocol ___VARIABLE_sceneIdentifier___FlowCoordinatorDependencies {
    func make___VARIABLE_sceneIdentifier___ViewController(closures: ___VARIABLE_sceneIdentifier___ViewModelClosures) -> UIViewController
}

class ___VARIABLE_sceneIdentifier___FlowCoordinator {
    
    private let navigationController: UINavigationController
    private let dependencies: ___VARIABLE_sceneIdentifier___FlowCoordinatorDependencies
    
    
    init(navigationController: UINavigationController,
         dependencies: ___VARIABLE_sceneIdentifier___FlowCoordinatorDependencies) {
        self.navigationController = navigationController
        self.dependencies = dependencies
    }
    
    
    func start(flow: @escaping ___VARIABLE_sceneIdentifier___FlowIntentClosure) {
        self.start___VARIABLE_sceneIdentifier___(flow: flow)
    }
    
    private func start___VARIABLE_sceneIdentifier___(flow: @escaping ___VARIABLE_sceneIdentifier___FlowIntentClosure) {
        let closures = ___VARIABLE_sceneIdentifier___ViewModelClosures()
        let vc = dependencies.make___VARIABLE_sceneIdentifier___ViewController(closures: closures)
        navigationController.pushViewController(vc, animated: true)
    }
}
