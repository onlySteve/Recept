//
//  StartViewController.swift
//  Recept
//
//  Created by olbu on 3/6/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import UIKit

import RxSwift
import RxDataSources
import RxCocoa

final class StartController: UIViewController, StartView {
    
    //controller handler
    var onMenuItemSelect: (MenuItemSelectAction)?
    var itemsMenuList: Variable <[MenuItemAction]> = Variable([])
    var onSearchItemSelect: ((UINavigationController) -> ())?
    
    @IBOutlet weak var headerTitleLabel: UILabel!
    @IBOutlet weak var headerSearchButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func setupTableView() {
        
        //Setup TableView
        itemsMenuList.asObservable().bindTo(tableView.rx.items(cellIdentifier: "startControllerCellID")) { index, model, cell in
            cell.textLabel?.text = model.rawValue
            }.disposed(by: disposeBag)
        
        tableView.rx.modelSelected(MenuItemAction.self).subscribe(onNext: {
            self.onMenuItemSelect?($0)
        }).addDisposableTo(disposeBag)
        
    }
    
    @IBAction func searchButtonAction(_ sender: UIButton) {
        onSearchItemSelect?(self.navigationController!)
    }
}

