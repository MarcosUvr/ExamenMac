//
//  ConsultaProducto.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Cocoa

class ConsultaProducto: NSViewController {

    // Variables del código
    @IBOutlet weak var btnModificar: NSButton!
    @IBOutlet weak var btnEliminar: NSButton!
    @IBOutlet weak var cbID: NSComboBox!
    @objc dynamic var login:ViewController!
    @objc dynamic var Products: [ProductModel] = []
    var index: Int!
    var index2: Int = 0
    var AlertBox = NSAlert()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        Products = login.Productos
        for x in Products {
            cbID.addItem(withObjectValue: x.ID)
        }
    }
    
    @IBAction func ModificarProductos(_ sender: Any) {
        
    }
    
    @IBAction func EliminarProductos(_ sender: Any) {
        if Products.contains(where: {$0.ID == cbID.stringValue }) {
            var Index = Products.map({$0.ID})
            
            index = Index.firstIndex(of: cbID.stringValue)
            index2 = index
            
            login.Productos.remove(at: index2)
            
        }
        AlertBox.messageText = "Registro eliminado"
        AlertBox.runModal()
        dismiss(self)
        
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "modificarProductoSegue" {
            (segue.destinationController as! ModificarUsuario).login = login
            //(segue.destinationController as! ModificarUsuario).posicion = index
        }
        
    }
    
}
