//
//  LoginController.swift
//  ApplicationCoordinator
//
//  Created by Andrey Panov on 23/04/16.
//  Copyright © 2016 Andrey Panov. All rights reserved.
//

import UIKit

final class LoginController: UIViewController, LoginView {

    //controller handler
    var onCompleteAuth: (() -> ())?
    var onBackButton: (() -> ())?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(backButtonTapped))
//        
//        self.navigationItem.leftBarButtonItem = newBackButton
        
        title = "Login"
    }
    
    func backButtonTapped() {
        onBackButton?()
    }
    
    @IBAction func loginButtonClicked(_ sender: AnyObject) {
        onCompleteAuth?()
    }
    
}
