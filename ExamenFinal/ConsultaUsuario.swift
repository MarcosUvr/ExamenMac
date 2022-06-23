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
    //var Index: Int = 0
    var index: Int!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here
        Users = login.Usuarios
        for x in Users {
            cbID.addItem(withObjectValue: x.ID)
        }
        print("numero de usuario \(login.Usuarios.count)")

    }
    
    @IBAction func ModificarUsuario(_ sender: Any) {
        if Users.contains(where: {$0.ID == cbID.stringValue }) {
            let Index = Users.map({$0.ID})
            
            index = Index.firstIndex(of: cbID.stringValue)
        }
        //login.posicion = Index
    }
    
    @IBAction func EliminarUsuario(_ sender: Any) {
        if Users.contains(where: {$0.ID == cbID.stringValue }) {
            let Index = Users.map({$0.ID})
            
            index = Index.firstIndex(of: cbID.stringValue)
            
            //login.Ventas.remove(at: index)
            print("\(index), \(Index)")
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "modificarUsuarioSegue" {
            (segue.destinationController as! ModificarUsuario).login = login
        }
        
    }
    
}
