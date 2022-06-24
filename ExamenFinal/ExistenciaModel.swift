//
//  ExistenciaModel.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Foundation
class ExistenciaModel: NSObject {
    @objc dynamic var IDExistencia: String
    @objc dynamic var IDProducto: String
    @objc dynamic var IDAlmacenista: String
    @objc dynamic var NombreProducto: String
    @objc dynamic var Descripcion: String
    @objc dynamic var Cantidad: Int
    
    
    init(_ IDExistencia: String, _ IDProducto: String, _ IDAlmacenista: String, _ NombreProducto: String, _ Descripcion: String, _ Cantidad: Int) {
        self.IDExistencia = IDExistencia
        self.IDProducto = IDProducto
        self.IDAlmacenista = IDAlmacenista
        self.NombreProducto = NombreProducto
        self.Descripcion = Descripcion
        self.Cantidad = Cantidad
    }
}
