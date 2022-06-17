//
//  VentaModel.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Foundation

class VentaModel: NSObject {
    @objc dynamic var ID: String
    @objc dynamic var IDVendedor: String
    
    init(_ ID: String, _ IDVendedor: String) {
        self.ID = ID
        self.IDVendedor = IDVendedor
    }
}
