//
//  ConsultaUsuario.swift
//  ExamenFinal
//
//  Created by Marcos Valdez on 19/06/22.
//

import Cocoa

class ConsultaUsuario: NSViewController {

    // Variables de la interfaz
    @IBOutlet weak var cbID: NSComboBox!
    @IBOutlet weak var btnModificar: NSButton!
    @IBOutlet weak var btnEliminar: NSButton!
    
    
    // Varibles del código
    @objc dynamic var login:ViewController!
    @objc dynamic var Users : [PersonModel] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here
        Users = login.Usuarios
        for x in Users {
            cbID.addItem(withObjectValue: x.ID)
        }
        print("numero de usuario \(login.Usuarios.count)")

    }
    
}
