//
//  ___VARIABLE_sceneIdentifier___Module.swift
//

import Foundation
import SwiftUI

public struct ___VARIABLE_sceneIdentifier___ModuleDependencies {
    
    public init () { }
}

// MARK: - ___VARIABLE_sceneIdentifier___Module
public struct ___VARIABLE_sceneIdentifier___Module {
    
    private let diContainer: ___VARIABLE_sceneIdentifier___DIContainer
    
    public init(dependencies: ___VARIABLE_sceneIdentifier___ModuleDependencies) {
        self.diContainer = ___VARIABLE_sceneIdentifier___DIContainer(dependencies: dependencies)
    }
    
    @ViewBuilder
    public func start(flow: ___VARIABLE_sceneIdentifier___FlowClosure) -> some View {
        diContainer.make___VARIABLE_sceneIdentifier___(flow: flow)
    }
}
