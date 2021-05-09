//
//  SplashViewModel.swift
//

import Foundation

struct SplashViewModelClosures {
    let goToDashboard: () -> Void
}

protocol SplashViewModelInput {
    func viewDidAppear()
}

protocol SplashViewModelOutput { }

typealias SplashViewModel = SplashViewModelInput & SplashViewModelOutput

final class DefaultSplashViewModel: SplashViewModel {
    
    private let closures: SplashViewModelClosures?
    
    // MARK: - OUTPUT
    
    
    init(closures: SplashViewModelClosures?) {
        self.closures = closures
    }
    
    private func startWork() {
        goToDashboard()
    }
    
    func goToDashboard() {
        DispatchQueue.main.async { [weak self] in
            guard let self = self else { return }
            self.closures?.goToDashboard()
        }
    }
}

// MARK: - INPUT. View event methods
extension DefaultSplashViewModel {
    func viewDidAppear() { startWork() }
}
