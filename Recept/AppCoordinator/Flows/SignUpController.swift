//
//  SignUpController.swift
//  ApplicationCoordinator
//
//  Created by Andrey Panov on 23/04/16.
//  Copyright © 2016 Andrey Panov. All rights reserved.
//

import UIKit

final class SignUpController: UIViewController, SignUpView {
    
    //controller handler
    var onSignUpComplete: (() -> ())?
    var onBackButton: (() -> ())?
    
    @IBOutlet weak var signUpButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SignUp"
        
        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(backButtonTapped))
        
        self.navigationItem.leftBarButtonItem = newBackButton
        
    }
    
    @IBAction func signUpClicked(_ sender: AnyObject) {
        onSignUpComplete?()
    }
    
    func backButtonTapped() {
        onBackButton?()
    }
    
}
