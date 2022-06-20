//
//  MenuVentas.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class MenuVentas: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    @IBOutlet weak var btnNuevaVenta: NSButton!
    @IBOutlet weak var btnConsulta: NSButton!
    @IBOutlet weak var btnIndicadores: NSButton!
    
    // Variables locales
    @objc dynamic var login:ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func Navegacion(_ sender: NSButton) {
        if sender.title == "Nueva Venta" {
            performSegue(withIdentifier: "nuevaVentaSegue", sender: login)
        } else if sender.title == "Consulta" {
            performSegue(withIdentifier: "menuVentasSegue", sender: login)
        } else if sender.title == "Almacen" {
            performSegue(withIdentifier: "menuAlmacenistaSegue", sender: login)
        } else if sender.title == "Indicadores" {
            print("Indicadores")
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "nuevaVentaSegue" {
            (segue.destinationController as! NuevaVenta).login = login
        } else if segue.identifier == "consultaVentaSegue" {
            (segue.destinationController as! NuevaVenta).login = login
        }
    }
}
