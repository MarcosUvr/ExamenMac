//
//  ConsultaVentas.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Cocoa

class ConsultaVentas: NSViewController {

    // Variables del código
    @objc dynamic var login:ViewController!
    @objc dynamic var Sales: [VentaModel] = []
    
    @IBOutlet weak var btnModificar: NSButton!
    @IBOutlet weak var btnEliminar: NSButton!
    @IBOutlet weak var cbID: NSComboBox!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Sales = login.Ventas
        for x in Sales {
            cbID.addItem(withObjectValue: x.IDVenta)
        }
    }
    
    @IBAction func EliminarVenta(_ sender: Any) {
        login
    }
    
    @IBAction func ModificarVenta(_ sender: Any) {
        
    }
    
}
