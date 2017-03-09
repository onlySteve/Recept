//
//  PriceNotMatchOutput.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

protocol PriceNotMatchOutput: class {
    var finishFlow: (()->())? { get set }
}
