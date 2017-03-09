//
//  PriceNotMatchController.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import UIKit

final class PriceNotMatchController: UIViewController, PriceNotMatchView {
    
    //controller handler
    var onFormFillUpComplete: (() -> ())?
    var onBackButton: (() -> ())?
    var form: PriceNotMatchForm = PriceNotMatchForm()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        let newBackButton = UIBarButtonItem(title: "Back", style: UIBarButtonItemStyle.plain, target: self, action: #selector(backButtonTapped))
        //
        //        self.navigationItem.leftBarButtonItem = newBackButton
        
        title = "PriceNotMatch"
    }
    
    func backButtonTapped() {
        onBackButton?()
    }
    
    @IBAction func sendFormAction(_ sender: AnyObject) {
        onFormFillUpComplete?()
    }
    
}
