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
    
    init(_ ID: String, _ Nombre: String, _ Descripcion: String) {
        self.ID = ID
        self.Nombre = Nombre
        self.Descripcion = Descripcion
    }
}
