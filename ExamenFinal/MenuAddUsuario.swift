//
//  MenuAddUsuario.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class MenuAddUsuario: NSViewController {

    @IBOutlet weak var btnNuevoUsuario: NSButton!
    @IBOutlet weak var btnConsultaUsuario: NSButton!
    
    //Variables locales
    @objc dynamic var login:ViewController!
    var a = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
    }
    
    @IBAction func Navegacion(_ sender: NSButton) {
        if sender.title == "Nuevo Usuario" {
            performSegue(withIdentifier: "nuevoUsuarioSegue", sender: login)
        } else if sender.title == "Consulta de Usuarios" {
            performSegue(withIdentifier: "consultaUsuarioSegue", sender: login)
        }
    }
    
    override func prepare(for segue: NSStoryboardSegue, sender: Any?) {
        if segue.identifier == "nuevoUsuarioSegue" {
            (segue.destinationController as! NuevoUsuario).login = login
        } else if segue.identifier == "consultaUsuarioSegue" {
            (segue.destinationController as! ConsultaUsuario).login = login
        }
    }
    
}
