//
//  ___FILENAME___
//

import UIKit


public struct ___VARIABLE_sceneIdentifier___ModuleDependencies {
    
    public init () { }
}

// MARK: - ___VARIABLE_sceneIdentifier___Module
public struct ___VARIABLE_sceneIdentifier___Module {
    
    private let diContainer: ___VARIABLE_sceneIdentifier___DIContainer
    
    public init(dependencies: ___VARIABLE_sceneIdentifier___ModuleDependencies) {
        self.diContainer = ___VARIABLE_sceneIdentifier___DIContainer(dependencies: dependencies)
    }
    
    public func start___VARIABLE_sceneIdentifier___Flow(in navigationController: UINavigationController, flow: @escaping ___VARIABLE_sceneIdentifier___FlowIntentClosure) {
        let flowCoordinator = diContainer.make___VARIABLE_sceneIdentifier___FlowCoordinator(navigationController: navigationController)
        flowCoordinator.start(flow: flow)
    }
}
