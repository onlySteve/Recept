//
//  AuthControllersFactory.swift
//  ApplicationCoordinator
//
//  Created by Andrey Panov on 08.05.16.
//  Copyright © 2016 Andrey Panov. All rights reserved.
//

final class ModuleFactoryImp:
            LoginModuleFactory,
            SignUpModuleFactory,
            StartModuleFactory,
            PriceNotMatchModuleFactory{

    func makeLoginHandler() -> LoginView {
        return LoginController.controllerFromStoryboard(.auth)
    }
    
    func makeSignUpHandler() -> SignUpView {
        return SignUpController.controllerFromStoryboard(.auth)
    }
    
    
    func makeStartOutput() -> StartView {
        return StartController.controllerFromStoryboard(.main)
    }
    
    
    func makePriceNotMatchHandler() -> PriceNotMatchView {
        return PriceNotMatchController.controllerFromStoryboard(.main)
    }


}
