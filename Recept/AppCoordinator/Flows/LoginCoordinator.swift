//
//  LoginCoordinator.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

final class LoginCoordinator: BaseCoordinator, AuthCoordinatorOutput {
    
    var finishFlow: (()->())?
    
    private let factory: LoginModuleFactory
    private let router: Router
    
    init(router: Router,
         factory: LoginModuleFactory) {
        self.factory = factory
        self.router = router
    }
    
    override func start() {
        showLogin()
    }
    
    //MARK: - Run current flow's controllers
    
    private func showLogin() {
        let loginHandler = factory.makeLoginHandler()
        loginHandler.onBackButton = finishFlow
        loginHandler.onCompleteAuth = finishFlow
        router.push(loginHandler, animated: true)
    }
}
