//
//  ContactsVM.swift
//  Walkie-Talkie
//
//  Created by Zaporozhchenko Oleksandr on 14.05.2020.
//  Copyright © 2020 maxatma. All rights reserved.
//

import Bond
import ReactiveKit
import SwiftyUserDefaults


final class ContactsVM: BondViewModel {
    var items = MutableObservableArray<СontactCellVM>()
    
    override init() {
        super.init()
        let ids = Defaults[\.roomIds]
        items.replace(with: ids.map { СontactCellVM(model: $0)})
    }
}


extension DefaultsKeys {
    var roomIds: DefaultsKey<[String]> { .init("roomIds", defaultValue: []) }
    var selesctedId: DefaultsKey<String?> { .init("selesctedId") }
}

