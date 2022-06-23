//
//  ModificarProducto.swift
//  ExamenFinal
//
//  Created by Marcos Valdez on 23/06/22.
//

import Cocoa

class ModificarProducto: NSViewController {
    
    @objc dynamic var login:ViewController!
    @objc dynamic var Users:[PersonModel] = []
    var posicion: Int!
    var AlertBox = NSAlert()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
