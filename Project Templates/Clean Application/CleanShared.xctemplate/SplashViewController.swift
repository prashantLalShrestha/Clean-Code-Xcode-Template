//
//  SplashViewController.swift
//

import UIKit

final class SplashViewController: UIViewController {
    
    // MARK: - Outlets
    
    // MARK: ViewModel
    private var viewModel: SplashViewModel
    
    // MARK: - Properties
    
    // MARK: - Initializers
    init(with viewModel: SplashViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - ViewController Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationBarConfig()
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        viewModel.viewDidAppear()
    }
}

// MARK: - Configurations
private extension SplashViewController {
    // MARK: - NavigationBar Configuration
    func navigationBarConfig() {
        self.navigationController?.isNavigationBarHidden = true
    }
}
