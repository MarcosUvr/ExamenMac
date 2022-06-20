//
//  NuevoUsuario.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class NuevoUsuario: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    @IBOutlet weak var tName: NSTextField!
    @IBOutlet weak var tApellidoP: NSTextField!
    @IBOutlet weak var tApellidoM: NSTextField!
    @IBOutlet weak var tCorreo: NSTextField!
    @IBOutlet weak var tPassword1: NSTextField!
    @IBOutlet weak var tPassword2: NSTextField!
    @IBOutlet weak var tTelefono: NSTextField!
    @IBOutlet weak var cbRol: NSComboBox!
    @IBOutlet weak var btnEliminar: NSButton!
    @IBOutlet weak var btnModificar: NSButton!
    @IBOutlet weak var btnAgregar: NSButton!
    
    // Variables locales
    @objc dynamic var login:ViewController!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func AgregarUsuario(_ sender: Any) {
        // Falta agregar las validaciones para crear el usuario
        login.Usuarios.append(PersonModel(tName.stringValue, tName.stringValue, tApellidoP.stringValue, tApellidoM.stringValue, "Sexo", tCorreo.stringValue, tPassword1.stringValue, cbRol.stringValue))
    }
    
    
}
