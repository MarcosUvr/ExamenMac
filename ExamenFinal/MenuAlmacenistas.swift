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
        } else if sender.title == "Consulta Productos" {
            performSegue(withIdentifier: "consultaProductosSegue", sender: login)
        } else if sender.title == "Nueva Existencia" {
            performSegue(withIdentifier: "nuevaExistenciaSegue", sender: login)
        } else if sender.title == "Consulta Existencias" {
            performSegue(withIdentifier: "consultaExistenciaSegue", sender: login)
        }else if sender.title == "Indicadores" {
            performSegue(withIdentifier: "indicadoresAlmacenistaSegue", sender: login)
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "nuevoProductoSegue" {
            (segue.destinationController as! NuevoProducto).login = login
        } else if segue.identifier == "consultaProductosSegue" {
            (segue.destinationController as! ConsultaProducto).login = login
        } else if segue.identifier == "nuevaExistenciaSegue" {
            (segue.destinationController as! NuevaExistencia).login = login
        } else if segue.identifier == "consultaExistencizSegue" {
            (segue.destinationController as! ConsultaExistencias).login = login
        } else if segue.identifier == "indicadoresAlmacenistaSegue" {
            (segue.destinationController as! IndicadoresAlmacenista).login = login
        }
    }
}

