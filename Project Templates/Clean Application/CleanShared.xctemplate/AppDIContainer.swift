//
//  AppDIContainer.swift
//  

import Foundation

final class AppDIContainer {
    
    // MARK: - Properties
    private lazy var appConfiguration: AppConfiguration = {
        return AppConfiguration()
    }()
    
    // MARK: - Splash Module
    func makeSplashModule() -> SplashModule {
        let dependencies = SplashModuleDependencies()
        return .init(dependencies: dependencies)
    }
}
