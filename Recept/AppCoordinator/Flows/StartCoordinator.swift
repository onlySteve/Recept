//
//  StartCoordinator.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

final class StartCoordinator: BaseCoordinator, StartCoordinatorOutput {
    
    var finishFlow: MenuItemSelectAction?
    
    
    private let factory: StartModuleFactory
    private let router: Router
    
    init(router: Router,
         factory: StartModuleFactory) {
        self.factory = factory
        self.router = router
    }
    
    override func start() {
        showStart()
    }
    
    //MARK: - Run current flow's controllers
    
    private func showStart() {
        let startOutput = factory.makeStartOutput()
        startOutput.itemsMenuList.value = startViewItemsMenuList(loginStatus: false)
        startOutput.onMenuItemSelect = {[weak self] in
            self?.finishFlow?($0)
        }
        router.setRootModule(startOutput)
    }
    
    
    private func startViewItemsMenuList(loginStatus: Bool) -> (Array <MenuItemAction>) {
        return loginStatus ? [MenuItemAction.byCondition, MenuItemAction.byAlphabet, MenuItemAction.priceNotMatch, MenuItemAction.logout] : [MenuItemAction.byCondition, MenuItemAction.byAlphabet, MenuItemAction.login, MenuItemAction.signUp, MenuItemAction.priceNotMatch, MenuItemAction.feedBackSession]
    }

}

