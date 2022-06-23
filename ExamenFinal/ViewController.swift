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
    var Usuarios: [PersonModel] =
    [PersonModel("A001MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "hotmail.com", "swagmen123", "Admin", "21645616", false, 0),
     PersonModel("A002MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "ahotmail.com", "swagmen123", "Almacenista", "21645616", false, 0),
     PersonModel("A002MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "ahotmail.com", "swagmen123", "Vendedor", "21645616", false, 0),
     PersonModel("A004MVR", "Marcos", "Valdez", "Rodríguez", "Hombre", "chotmail.com", "swagmen1234", "Cliente", "21645616", false, 0)]
    var Ventas: [VentaModel] = [VentaModel("adsf", "fadsf", "fadsf", "fdasf", 5, 4.5, 7)]
    var Productos: [ProductModel] = [ProductModel("P001", "Mario Kart", "Fácil para humillar a Marcos con la antenita prendida", 68, 70)]
    var Existencias: [ExistenciaModel] = [ExistenciaModel("E001", "Call of Duty Modern Warfare", "Shooter en primera persona", 64)]
    var AlertBox = NSAlert()
    var posicion: Int = 0
    
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
        
        if Validaciones() {
            for user in Usuarios {
                if email == user.Correo && password == user.Password || email == user.ID && password == user.Password {
                    // El ingreso ha sido correcto
                    AlertBox.messageText = "Bienvenido \(user.Nombre)\nRol: \(user.Rol)"
                    AlertBox.runModal()
                    if user.Rol == "Admin" {
                        // Nos manda al menú de admin
                        //AlertBox.messageText = "Entramos al menú de admin"
                        performSegue(withIdentifier: "menuAdminSegue", sender: self)
                    } else if user.Rol == "Almacenista" {
                        // Nos manda al menú de almacenista
                        AlertBox.messageText = "Entramos al menú de Almacenista"
                        performSegue(withIdentifier: "menuAlmacenistaSegue", sender: self)
                    } else if user.Rol == "Vendedor" {
                        // Nos manda al menú de vendedor
                        AlertBox.messageText = "Entramos al menú de Vendedor"
                        performSegue(withIdentifier: "menuVentasSegue", sender: self)
                    }
                    
                    userFound = true
                }
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
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "menuAdminSegue" {
            (segue.destinationController as! MenuAdmin).login = self
        } else if segue.identifier == "menuAlmacenistaSegue" {
            (segue.destinationController as! MenuAlmacenistas).login = self
        } else if segue.identifier == "menuVentasSegue" {
            (segue.destinationController as! MenuVentas).login = self
        }
    }
    
    func Validaciones () -> Bool {
            if (tEmail.stringValue == "" || tPassword.stringValue == "" )
            {
                AlertBox.messageText = "No puede dejar campos vacios"
                AlertBox.runModal()
                return false
            }
            return true
        }
    
}

