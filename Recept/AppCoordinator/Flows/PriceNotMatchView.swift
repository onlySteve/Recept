//
//  PriceNotMatchView.swift
//  Recept
//
//  Created by olbu on 3/9/17.
//  Copyright © 2017 olbu. All rights reserved.
//

struct PriceNotMatchForm {
    var receptWasDeclined = false
    var pillName = ""
    var releaseForm = ""
    var dosage = ""
    var count = ""
    var pharmacyName = ""
    var realPrice = ""
    var priceWithDiscount = false
    
    var isFormComplete: Bool {
        return self.pillName.isEmpty && self.releaseForm.isEmpty && self.dosage.isEmpty && self.count.isEmpty && self.pharmacyName.isEmpty && self.realPrice.isEmpty
    }
}

protocol PriceNotMatchView: BaseView {
    var onFormFillUpComplete: (() -> ())? { get set }
    var onBackButton: (() -> ())? { get set }
    var form: PriceNotMatchForm{ get set }
}
