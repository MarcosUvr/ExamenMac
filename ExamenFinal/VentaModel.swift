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
    @objc dynamic var IDProducto: String
    @objc dynamic var IDCliente: String
    @objc dynamic var Cantidad: Int
    @objc dynamic var PrecioUnitario: Double
    @objc dynamic var PrecioTotal: Double
    
    
    init(_ IDVenta: String, _ IDVendedor: String, _ IDProducto: String, _ IDCliente: String, _ Cantidad: Int, _ PrecioUnitario: Double, _ PrecioTotal: Double) {
        self.IDVenta = IDVenta
        self.IDVendedor = IDVendedor
        self.IDProducto = IDProducto
        self.IDCliente = IDCliente
        self.Cantidad = Cantidad
        self.PrecioUnitario = PrecioUnitario
        self.PrecioTotal = PrecioTotal
    }
}
