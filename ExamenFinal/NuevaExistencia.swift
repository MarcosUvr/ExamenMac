//
//  NuevaExistencia.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Cocoa

class NuevaExistencia: NSViewController {

    // Variables del código
    @objc dynamic var login:ViewController!
    @IBOutlet weak var btnMenos: NSButton!
    @IBOutlet weak var btnMas: NSButton!
    @IBOutlet weak var cbID: NSComboBox!
    @IBOutlet weak var btnAgregar: NSButton!
    @IBOutlet weak var tCantidad: NSTextField!
    //@IBOutlet weak var Products: [ProductModel] = []
    var cantidad: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        tCantidad.integerValue = cantidad
        //Products = login.Productos
        
    }
    
    @IBAction func AgregarExistencia(_ sender: Any) {
        
    }
    
    @IBAction func Contador(_ sender: NSButton) {
        if sender.title == "+" {
            cantidad += 1
        } else if sender.title == "-" {
            if (cantidad == 0) {
            } else {
                cantidad -= 1
            }
        }
        tCantidad.integerValue = cantidad
        
    }
    
}
