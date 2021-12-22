//
//  ___VARIABLE_sceneIdentifier___.swift
//

import SwiftUI

protocol ___VARIABLE_sceneIdentifier___Dependencies {
    func make___VARIABLE_sceneIdentifier___View(flow: ___VARIABLE_sceneIdentifier___ViewFlowClosure) -> AnyView
}

struct ___VARIABLE_sceneIdentifier___: View {
    
    private let dependencies: ___VARIABLE_sceneIdentifier___Dependencies
    
    private let flow: ___VARIABLE_sceneIdentifier___FlowClosure
    
    init(dependencies: ___VARIABLE_sceneIdentifier___Dependencies, flow: ___VARIABLE_sceneIdentifier___FlowClosure) {
        self.dependencies = dependencies
        self.flow = flow
    }
    
    var body: some View {
        dependencies.make___VARIABLE_sceneIdentifier___View(flow: nil)
    }
}

#if DEBUG
@available(iOS 13.0, *)
struct ___VARIABLE_sceneIdentifier____Previews: PreviewProvider {
    static var previews: some View {
        AccountUtilities(dependencies: FakeAccountUtilitiesDependency(), flow: nil)
            .previewDevice("iPhone 13 Pro Max")
    }
}

class Fake___VARIABLE_sceneIdentifier___Dependency: AccountUtilitiesDependencies {
    
    func makeAccountView(flow: AccountViewFlowClosure) -> AnyView {
        AnyView(___VARIABLE_sceneIdentifier___View(
            viewModel: .init(MockViewModel(state: .init())))
        )
    }
}
#endif
