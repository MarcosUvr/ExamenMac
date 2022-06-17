//
//  MenuAdmin.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class MenuAdmin: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    @IBOutlet weak var btnUsuario: NSButton!
    @IBOutlet weak var btnVentas: NSButton!
    @IBOutlet weak var btnAlmacen: NSButton!
    @IBOutlet weak var btnIndicadores: NSButton!
    
    
    // Variables locales
    @objc dynamic var login:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    
    @IBAction func Navegacion(_ sender: NSButton) {
        if sender.title == "Usuario" {
            performSegue(withIdentifier: "menuUsuarioSegue", sender: login)
        } else if sender.title == "Ventas" {
            performSegue(withIdentifier: "menuVentasSegue", sender: login)
        } else if sender.title == "Almacen" {
            performSegue(withIdentifier: "menuAlmacenistaSegue", sender: login)
        } else if sender.title == "Indicadores" {
            print("Indicadores")
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "menuUsuarioSegue" {
            (segue.destinationController as! MenuAddUsuario).vc = login
        } else if segue.identifier == "menuVentasSegue" {
            (segue.destinationController as! NuevoProducto).login = login
        } else if segue.identifier == "menuAlmacenistaSegue" {
            (segue.destinationController as! NuevaVenta).login = login
        }
    }
    
}
