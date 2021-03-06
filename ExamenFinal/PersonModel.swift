//
//  PersonModel.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Foundation

class PersonModel: NSObject {
    @objc dynamic var ID: String
    @objc dynamic var Nombre: String
    @objc dynamic var ApellidoP: String
    @objc dynamic var ApellidoM: String
    @objc dynamic var Sexo: String
    @objc dynamic var Correo: String
    @objc dynamic var Password: String
    @objc dynamic var Rol: String
    @objc dynamic var Telefono: String
    @objc dynamic var Logged: Bool
    @objc dynamic var Aportacion: Int
    // Este es un comentario
    
    init (_ ID: String, _ Nombre: String, _ ApellidoP: String, _ ApellidoM: String, _ Sexo: String, _ Correo: String, _ Password: String, _ Rol: String, _ Telefono: String, _ Logged: Bool, _ Aportacion: Int) {
        self.ID = ID
        self.Nombre = Nombre
        self.ApellidoP = ApellidoP
        self.ApellidoM = ApellidoM
        self.Sexo = Sexo
        self.Correo = Correo
        self.Password = Password
        self.Rol = Rol
        self.Telefono = Telefono
        self.Logged = Logged
        self.Aportacion = Aportacion
    }
}
