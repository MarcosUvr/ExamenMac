//
//  ConsultaExistencias.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Cocoa

class ConsultaExistencias: NSViewController {

    // Variables del código
    @objc dynamic var login:ViewController!
    @objc dynamic var Existencia: [ExistenciaModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        //Existencia = login.Existencias
        print("\(login.Existencias.count)")
    }
    
}
