//
//  ConsultaUsuario.swift
//  ExamenFinal
//
//  Created by Marcos Valdez on 19/06/22.
//

import Cocoa

class ConsultaUsuario: NSViewController {

    // Variables de la interfaz
    
    // Varibles del código
    @objc dynamic var login:ViewController!
    @objc dynamic var Users : [PersonModel] = [PersonModel("A001MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "hotmail.com", "swagmen123", "Admin", "21645616"), PersonModel("A002MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "ahotmail.com", "swagmen123", "Almacenista", "21645616"), PersonModel("A003MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "bhotmail.com", "swagmen1234", "Vendedor", "21645616")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here
//        Users = login.Usuarios
    }
    
}
