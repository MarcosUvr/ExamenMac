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
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Sales = login.Ventas
        for x in Sales {
            cbID.addItem(withObjectValue: x.IDVenta)
        }
        btnModificar.isEnabled = false
        btnEliminar.isEnabled = false
    }
    
    @IBAction func CambioCbID(_ sender: Any) {
        if cbID.stringValue != nil {
            btnEliminar.isEnabled = true
            btnModificar.isEnabled = true
        }
    }
    
    @IBAction func EliminarVenta(_ sender: Any) {
        //if Sales.contains(where: {$0.IDVenta == //cbID.stringValue }) {
            let Index = Sales.map({$0.IDVenta})
            index = Index.firstIndex(of: cbID.stringValue)
            login.Ventas.remove(at: index)
        //}
    }
    
    @IBAction func ModificarVenta(_ sender: Any) {
        
    }
    
}
