//
//  SignUpFlowOutput.swift
//  ApplicationCoordinator
//
//  Created by Andrey Panov on 17.05.16.
//  Copyright © 2016 Andrey Panov. All rights reserved.
//

protocol SignUpView: BaseView {
    
    var onSignUpComplete: (() -> ())? { get set }
    var onBackButton: (() -> ())? { get set }
}
