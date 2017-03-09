//
//  ApplicationMenuModel.swift
//  Recept
//
//  Created by olbu on 3/7/17.
//  Copyright © 2017 olbu. All rights reserved.
//

import UIKit
import RxSwift

enum MenuItemAction : String {
    case byCondition = "По состоянию"
    case byAlphabet = "По алфовиту"
    case login = "Войти"
    case signUp = "Регистрация"
    case priceNotMatch = "Цена не соответсвует?"
    case feedBackSession = "Обратная связь"
    case logout = "Выйти"
    case aboutApplication = "О приложении"
    case search = "Поиск по названию"
}

typealias MenuItemSelectAction = (_ menuItem: MenuItemAction) -> ()

protocol StartView: BaseView {
    
    var onMenuItemSelect: (MenuItemSelectAction)? { get set }
    var onSearchItemSelect: ((UINavigationController) -> ())? { get set }
    var itemsMenuList: Variable <[MenuItemAction]> { get set }
}
