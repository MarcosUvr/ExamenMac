//
//  NuevoProducto.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class NuevoProducto: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    @IBOutlet weak var tName: NSTextField!
    @IBOutlet weak var tDescription: NSTextField!
    @IBOutlet weak var tPrecioC: NSTextField!
    
    // Variables locales
    @objc dynamic var login:ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
