//
//  ___VARIABLE_sceneIdentifier___View.swift
//

import Foundation
import SwiftUI

struct ___VARIABLE_sceneIdentifier___View: View {
    
    @ObservedObject var viewModel: AnyViewModel<___VARIABLE_sceneIdentifier___ViewInput, ___VARIABLE_sceneIdentifier___ViewState>
    
    var body: some View {
        Text("___VARIABLE_sceneIdentifier___ View")
    }
}

#if DEBUG
@available(iOS 13.0, *)
struct ___VARIABLE_sceneIdentifier___View_Previews: PreviewProvider {
    static var previews: some View {
        ___VARIABLE_sceneIdentifier___View(
            viewModel: .init(MockViewModel(state: .init()))
        )
    }
}
#endif
