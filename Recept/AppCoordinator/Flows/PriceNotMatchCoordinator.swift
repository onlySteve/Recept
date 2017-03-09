//
//  PriceNotMatchCoordinator.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

final class PriceNotMatchCoordinator: BaseCoordinator, PriceNotMatchOutput {
    
    var finishFlow: (()->())?
    
    private let factory: PriceNotMatchModuleFactory
    private let router: Router
    
    init(router: Router,
         factory: PriceNotMatchModuleFactory) {
        self.factory = factory
        self.router = router
    }
    
    override func start() {
        showPriceNotMatch()
    }
    
    //MARK: - Run current flow's controllers
    
    private func showPriceNotMatch() {
        let priceNotMatchHandler = factory.makePriceNotMatchHandler()
        priceNotMatchHandler.onFormFillUpComplete = finishFlow
        router.push(priceNotMatchHandler, animated: true)
    }
}

