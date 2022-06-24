//
//  NuevoProducto.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class NuevoProducto: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    @IBOutlet weak var tName: NSTextField!
    @IBOutlet weak var tDescription: NSTextField!
    @IBOutlet weak var tPrecioC: NSTextField!
    @IBOutlet weak var tPrecioV: NSTextField!
    
    // Variables locales
    @objc dynamic var login:ViewController!
    var AlertBox = NSAlert()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func Agregar(_ sender: Any) {
        if validaciones() {
            let ID = GenerarID(Name: tName.stringValue)
            print(ID)
            AlertBox.messageText = "Se agrego el producto exitosamente"
            AlertBox.runModal()
        }
    }
    
    func validaciones() -> Bool {
        let letras = CharacterSet.letters
        let numeros = CharacterSet.decimalDigits
        
        if (tName.stringValue.isEmpty || tDescription.stringValue.isEmpty || tPrecioC.stringValue.isEmpty || tPrecioV.stringValue.isEmpty ) {
            AlertBox.messageText = "No puede haber datos campos vacios"
            AlertBox.runModal()
            return false
        }
        
        if (!CharacterSet(charactersIn: tName.stringValue).isSubset(of: letras) || !CharacterSet(charactersIn: tDescription.stringValue).isSubset(of: letras) || !CharacterSet(charactersIn: tPrecioC.stringValue).isSubset(of: numeros) || !CharacterSet(charactersIn: tPrecioV.stringValue).isSubset(of: numeros)){
            
            AlertBox.messageText = "Datos no validos"
            AlertBox.runModal()
            return false
        }
        
        return true
    }
    
    func GenerarID(Name:String) -> String {
        
        let nombre = Name[Name.startIndex]
        let nombre2 = Name[Name.index(after: Name.startIndex)]
        let nombre3 = Name[Name.index(after: Name.index(after: Name.startIndex))]
        
        let nID = String(format: "%03d", login.Productos.count + 1)
        let nuevoID = "\(nombre)" + "\(nombre2)" + "\(nombre3)" + "\(nID)" + "P"
        
        return nuevoID
    }
}
