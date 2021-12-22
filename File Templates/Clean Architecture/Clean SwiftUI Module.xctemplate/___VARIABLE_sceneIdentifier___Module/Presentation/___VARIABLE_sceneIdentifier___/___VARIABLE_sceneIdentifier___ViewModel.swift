//
//  ___VARIABLE_sceneIdentifier___ViewModel.swift
//

import Combine
import Foundation


typealias ___VARIABLE_sceneIdentifier___ViewFlowClosure = ((___VARIABLE_sceneIdentifier___ViewFlow) -> Void)?

enum ___VARIABLE_sceneIdentifier___ViewFlow: Identifiable, Hashable {
    public var id: Self { self }
    case none
}

enum ___VARIABLE_sceneIdentifier___ViewInput {
    case onAppear
}

struct ___VARIABLE_sceneIdentifier___ViewState {
    var loading: Bool = false
    var error: Error?
}

fileprivate enum ___VARIABLE_sceneIdentifier___ViewResult { }

class ___VARIABLE_sceneIdentifier___ViewModel: ViewModel {
    
    // MARK: - Properties
    private let flow: ___VARIABLE_sceneIdentifier___ViewFlowClosure
    
    @Published
    var state: ___VARIABLE_sceneIdentifier___ViewState = .init()
    
    private let input: PassthroughSubject<___VARIABLE_sceneIdentifier___ViewInput, Never> = .init()
    
    private var bag: Set<AnyCancellable> = .init()
    
    // MARK: - Initializers
    init(flow: ___VARIABLE_sceneIdentifier___ViewFlowClosure) {
        self.flow = flow
        
        input.flatMap(mapToResult)
            .compactMap{ $0 }
            .sink(receiveValue: reduce)
            .store(in: &bag)
        
    }
    
    func trigger(_ input: ___VARIABLE_sceneIdentifier___ViewInput) {
        self.input.send(input)
    }
}


private extension ___VARIABLE_sceneIdentifier___ViewModel {
    
    private func mapToResult(_ input: ___VARIABLE_sceneIdentifier___ViewInput) -> AnyPublisher<___VARIABLE_sceneIdentifier___ViewResult?, Never> {
        switch input {
        case .onAppear:
            return Just(nil).eraseToAnyPublisher()
        }
    }
}


private extension ___VARIABLE_sceneIdentifier___ViewModel {
    
    private func reduce(_ result: ___VARIABLE_sceneIdentifier___ViewResult) { }
}
