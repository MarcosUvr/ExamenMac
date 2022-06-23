//
//  VentaModel.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Foundation

class VentaModel: NSObject {
    @objc dynamic var IDVenta: String
    @objc dynamic var IDVendedor: String
    
    init(_ IDVenta: String, _ IDVendedor: String) {
        self.IDVenta = IDVenta
        self.IDVendedor = IDVendedor
    }
}
