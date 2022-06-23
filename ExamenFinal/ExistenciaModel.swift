//
//  ExistenciaModel.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Foundation
class ExistenciaModel: NSObject {
    @objc dynamic var IDProducto: String
    @objc dynamic var NombreProducto: String
    @objc dynamic var Descripcion: String
    @objc dynamic var Cantidad: Int
    
    
    init(_ IDProducto: String, _ NombreProducto: String, _ Descripcion: String, _ Cantidad: Int) {
        self.IDProducto = IDProducto
        self.NombreProducto = NombreProducto
        self.Descripcion = Descripcion
        self.Cantidad = Cantidad
    }
}
