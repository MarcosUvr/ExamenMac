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
      //  if Validaciones() {
            
        //} else {
            
        //}
            let ID = GenerarID(nombre: tName.stringValue, apellidoP: tApellidoP.stringValue, apellidoM: tApellidoM.stringValue, rol: cbRol.stringValue)
        login.Usuarios.append(PersonModel(ID, tName.stringValue, tApellidoP.stringValue, tApellidoM.stringValue, "Sexo", tCorreo.stringValue, tPassword1.stringValue, cbRol.stringValue, tTelefono.stringValue, false))
            print(ID)
        }
        
        func GenerarID(nombre: String, apellidoP: String, apellidoM:String, rol:String) -> String {
            let name = nombre[nombre.startIndex]
            let lastName = apellidoP[apellidoP.startIndex]
            let lasNameM = apellidoM[apellidoM.startIndex]
            var roll = rol[rol.startIndex]
            if rol == "Almacenista" {
                roll = "a"
            }
            let nID = String(format: "%03d", login.Usuarios.count + 1)
            let nuevoID = "\(name)" + "\(lastName)" + "\(lasNameM)" + "\(nID)" + "\(roll)"
            return nuevoID
        }
    
   /* func Validaciones(str:String?, num:Double?) -> Bool {
        var letras = CharacterSet.letters
        var numeros = CharacterSet.decimalDigits
        if !CharacterSet(charactersIn: tName.stringValue).isSubset(of: numeros) {
            
        }
        return true
    }*/
    
}
