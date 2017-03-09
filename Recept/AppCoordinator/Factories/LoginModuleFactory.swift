//
//  LoginModuleFactory.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

protocol LoginModuleFactory {
    func makeLoginHandler() -> LoginView
}
