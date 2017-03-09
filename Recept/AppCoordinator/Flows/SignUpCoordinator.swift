//
//  SignUpCoordinator.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

final class SignUpCoordinator: BaseCoordinator, AuthCoordinatorOutput {
    
    var finishFlow: (()->())?
    
    private let factory: SignUpModuleFactory
    private let router: Router
    
    init(router: Router,
         factory: SignUpModuleFactory) {
        self.factory = factory
        self.router = router
    }
    
    override func start() {
        showSignUp()
    }
    
    //MARK: - Run current flow's controllers
    
    private func showSignUp() {
        let signUpHandler = factory.makeSignUpHandler()
        signUpHandler.onBackButton = finishFlow
        signUpHandler.onSignUpComplete = finishFlow
        router.push(signUpHandler, animated: true)
    }
}

