//
//  ModificarUsuario.swift
//  ExamenFinal
//
//  Created by Marcos Valdez on 23/06/22.
//

import Cocoa

class ModificarUsuario: NSViewController {

    // Variables del código
    @IBOutlet weak var tName: NSTextField!
    @IBOutlet weak var tApellidoP: NSTextField!
    @IBOutlet weak var tApellidoM: NSTextField!
    @IBOutlet weak var tCorreo: NSTextField!
    @IBOutlet weak var tPassword1: NSTextField!
    @IBOutlet weak var tPassword2: NSTextField!
    @IBOutlet weak var tTelefono: NSTextField!
    @IBOutlet weak var cbRol: NSComboBox!
    @IBOutlet weak var cbSexo: NSComboBox!
    @IBOutlet weak var btnAgregar: NSButton!
    
    @objc dynamic var login:ViewController!
    @objc dynamic var Users:[PersonModel] = []
    var AlertBox = NSAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        //tName.stringValue =
        Users = login.Usuarios
    }
    
    @IBAction func ModificarUsuario(_ sender: Any) {
        if Validaciones() {
            //login.Usuarios[login.posicion] = (PersonModel(login.ID[login.posicion], tName.stringValue, tApellidoP.stringValue, tApellidoM.stringValue, cbSexo.stringValue, tCorreo.stringValue, tPassword1.stringValue, cbRol.stringValue, tTelefono.stringValue, false, login.Usuarios.Aportacion[login.posicion]))
            
            //Users[login.posicion] = (PersonModel(Users.ID[login.posicion], tName.stringValue, tApellidoP.stringValue, tApellidoP.stringValue, cbSexo.stringValue, tCorreo.stringValue, tPassword1.stringValue, cbRol.stringValue, tTelefono.stringValue, false, Int(Users[login.posicion])))
        }
        
        
        
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "menuUsuarioSegue" {
            (segue.destinationController as! MenuAddUsuario).login = login
        } else if segue.identifier == "menuVentasSegue" {
            (segue.destinationController as! MenuVentas).login = login
        } else if segue.identifier == "menuAlmacenistaSegue" {
            (segue.destinationController as! MenuAlmacenistas).login = login
        } else if segue.identifier == "indicadoresAdminSegue" {
            (segue.destinationController as! IndicadoresAdmin).login = login
        }
    }
    
    func Validaciones() -> Bool {
        let letras = CharacterSet.letters
        let numeros = CharacterSet.decimalDigits
        
        if (tName.stringValue == "" || tApellidoP.stringValue == "" || tApellidoM.stringValue == "" || tCorreo.stringValue == "" || tPassword1.stringValue == "" || tPassword2.stringValue == "" || tTelefono.stringValue == "" || cbRol.stringValue == "" ){
            
            AlertBox.messageText = "No puede haber campos vacios"
            AlertBox.runModal()
            return false
        }
        
        if !CharacterSet(charactersIn: tName.stringValue).isSubset(of: letras) || !CharacterSet(charactersIn: tApellidoP.stringValue).isSubset(of: letras) || !CharacterSet(charactersIn: tApellidoM.stringValue).isSubset(of: letras) || !CharacterSet(charactersIn: tTelefono.stringValue).isSubset(of: numeros){
            
            AlertBox.messageText = "Datos invalidos"
            AlertBox.runModal()
            return false
        }
        
        if tPassword1.stringValue != tPassword2.stringValue{
            AlertBox.messageText = "Las contraseñas no son iguales"
            AlertBox.runModal()
            return false
        }
        return true
    }
    
}
