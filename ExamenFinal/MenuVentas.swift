//
//  MenuVentas.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class MenuVentas: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    @IBOutlet weak var btnNuevaVenta: NSButton!
    @IBOutlet weak var btnConsulta: NSButton!
    @IBOutlet weak var btnIndicadores: NSButton!
    
    // Variables locales
    @objc dynamic var login:ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
}
