//
//  ___VARIABLE_sceneIdentifier___DIContainer.swift
//

import Foundation
import SwiftUI

final class ___VARIABLE_sceneIdentifier___DIContainer {
    
    private let dependencies: ___VARIABLE_sceneIdentifier___ModuleDependencies
    
    // MARK: - Initializers
    init(dependencies: ___VARIABLE_sceneIdentifier___ModuleDependencies) {
        self.dependencies = dependencies
    }
    
}

// MARK: - ___VARIABLE_sceneIdentifier___Dependencies
extension ___VARIABLE_sceneIdentifier___DIContainer: ___VARIABLE_sceneIdentifier___Dependencies {
    
    // MARK: - ___VARIABLE_sceneIdentifier___
    func make___VARIABLE_sceneIdentifier___View(flow: ___VARIABLE_sceneIdentifier___ViewFlowClosure) -> AnyView {
        return AnyView(___VARIABLE_sceneIdentifier___View(viewModel: make___VARIABLE_sceneIdentifier___ViewModel(flow: flow)))
    }
    
    private func make___VARIABLE_sceneIdentifier___ViewModel(flow: ___VARIABLE_sceneIdentifier___ViewFlowClosure) -> AnyViewModel<___VARIABLE_sceneIdentifier___ViewInput, ___VARIABLE_sceneIdentifier___ViewState> {
        return .init(___VARIABLE_sceneIdentifier___ViewModel(flow: flow))
    }
    
    // MARK: - Flow
    func make___VARIABLE_sceneIdentifier___(flow: ___VARIABLE_sceneIdentifier___FlowClosure) -> ___VARIABLE_sceneIdentifier___ {
        ___VARIABLE_sceneIdentifier___(dependencies: self, flow: flow)
    }
    
}
