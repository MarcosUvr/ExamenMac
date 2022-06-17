//
//  ViewController.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class ViewController: NSViewController {

    // Declaramos nuestras variables de la interfaz (t = textField, btn = Botón)
    @IBOutlet weak var tEmail: NSTextField!
    @IBOutlet weak var tPassword: NSTextField!
    @IBOutlet weak var btnLogin: NSButton!
    
    // Declaramos nuestras variables del código
    var email: String = ""
    var userFound: Bool = false
    var password: String = ""
    var Usuarios: [PersonModel] = [PersonModel("A001MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "hotmail.com", "swagmen123", "Admin"), PersonModel("A001MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "ahotmail.com", "swagmen123", "Almacenista"), PersonModel("A001MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "bhotmail.com", "swagmen1234", "Vendedor")]
    var Ventas: [VentaModel] = []
    var Productos: [ProductModel] = []
    var AlertBox = NSAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func Login(_ sender: Any) {
        email = tEmail.stringValue
        password = tPassword.stringValue
        
        // Validamos que los datos ingresados sean del tipo que esperamos que sean
        
        
        // Validamos que las credenciales introducidas coincidan con las credenciales guardadas
        for user in Usuarios {
            if email == user.Correo && password == user.Password {
                // El ingreso ha sido correcto
                if user.Rol == "Admin" {
                    // Nos manda al menú de admin
                    AlertBox.messageText = "Entramos al menú de admin"
                } else if user.Rol == "Almacenista" {
                    // Nos manda al menú de almacenista
                    AlertBox.messageText = "Entramos al menú de Almacenista"
                } else if user.Rol == "Vendedor" {
                    // Nos manda al menú de vendedor
                    AlertBox.messageText = "Entramos al menú de Vendedor"
                }
                AlertBox.runModal()
                userFound = true
            }
        }
        // No ha encontrado el usuario en los registros
        if !userFound {
            AlertBox.messageText = "Usuario no encontrado, inténtelo más tarde :)"
            AlertBox.runModal()
        }
        // Reiniciamos la variable de usuario encontrado a su valor original
        userFound = false
    }
    
}

