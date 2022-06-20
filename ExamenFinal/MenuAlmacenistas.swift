//
//  MenuAlmacenistas.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class MenuAlmacenistas: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    
    
    // Variables locales
    @objc dynamic var login:ViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func Navegacion(_ sender: NSButton) {
        if sender.title == "Nuevo Producto" {
            performSegue(withIdentifier: "nuevoProductoSegue", sender: login)
        } else if sender.title == "Productos" {
            performSegue(withIdentifier: "consultaProductos", sender: login)
        } else if sender.title == "Alta Existencias" {
            performSegue(withIdentifier: "nuevaExistenciaSegue", sender: login)
        } else if sender.title == "Indicadores" {
            print("Indicadores")
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "nuevoProductoSegue" {
            (segue.destinationController as! NuevoProducto).login = login
        } else if segue.identifier == "consultaProductos" {
            (segue.destinationController as! MenuVentas).login = login
        } else if segue.identifier == "menuAlmacenistaSegue" {
            (segue.destinationController as! MenuAlmacenistas).login = login
        }
    }
}

