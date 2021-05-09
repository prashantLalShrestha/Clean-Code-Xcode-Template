//
//  AppConfiguration.swift
//

import Foundation

final class AppConfiguration {
    
    private(set) lazy var apiBaseURL: URL = {
//        guard let apiBaseURL = Bundle.main.object(forInfoDictionaryKey: "ApiBaseURL") as? String else {
//            fatalError("ApiBaseURL must not be empty in plist")
//        }
//        let urlString = apiBaseURL.replacingOccurrences(of: "\\", with: "")
//        guard let url = URL(string: urlString) else {
//            fatalError("AppConfiguration: - COuldnot generate BaseUrl")
//        }
        guard let url = URL(string: "https://demo.base.url/") else {
            fatalError("AppConfiguration: - COuldnot generate BaseUrl")
        }
        return url
    }()
}
