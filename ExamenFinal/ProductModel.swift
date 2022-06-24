//
//  ProductModel.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Foundation

class ProductModel: NSObject {
    @objc dynamic var ID: String
    @objc dynamic var Nombre: String
    @objc dynamic var Descripcion: String
    @objc dynamic var PrecioCompra: Double
    @objc dynamic var PrecioVenta: Double
    @objc dynamic var Cantidad: Int
    
    init(_ ID: String, _ Nombre: String, _ Descripcion: String, _ PrecioCompra: Double, _ PrecioVenta: Double, _ Cantidad: Int) {
        self.ID = ID
        self.Nombre = Nombre
        self.Descripcion = Descripcion
        self.PrecioCompra = PrecioCompra
        self.PrecioVenta = PrecioVenta
        self.Cantidad = Cantidad
    }
}
