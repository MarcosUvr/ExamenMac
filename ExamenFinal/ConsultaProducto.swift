//
//  ConsultaProducto.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Cocoa

class ConsultaProducto: NSViewController {

    // Variables del código
    @objc dynamic var login:ViewController!
    @objc dynamic var Products: [ProductModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Products = login.Productos
    }
    
}
