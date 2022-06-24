//
//  NuevaExistencia.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 22/06/22.
//

import Cocoa

class NuevaExistencia: NSViewController {

    // Variables del código
    @objc dynamic var login:ViewController!
    @objc dynamic var Products: [ProductModel] = []
    @objc dynamic var Almacenistas: [PersonModel] = []
    @objc dynamic var Stock: [ExistenciaModel] = []
    @IBOutlet weak var btnMenos: NSButton!
    @IBOutlet weak var btnMas: NSButton!
    @IBOutlet weak var cbIDProducto: NSComboBox!
    @IBOutlet weak var cbIDAlmacenista: NSComboBox!
    @IBOutlet weak var btnAgregar: NSButton!
    @IBOutlet weak var tCantidad: NSTextField!
    var AlertBox = NSAlert()
    var cantidad: Int = 0
    var y: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        tCantidad.integerValue = cantidad
        Products = login.Productos
        Almacenistas = login.Usuarios
        Stock = login.Existencias
        for x in Almacenistas {
            if x.Rol == "Almacenista" {
                cbIDAlmacenista.addItem(withObjectValue: x.ID)
            }
        }
    }
    
    @IBAction func AgregarExistencia(_ sender: Any) {
        // Agregamos la aportación al almacenista
        for x in 0...Almacenistas.count - 1 {
            if login.Usuarios[x].ID == cbIDAlmacenista.stringValue {
                login.Usuarios[x].Aportacion += 1
                y = x
            }
        }
        y = 0
        // Agregamos las nuevas existencias al stock del producto
        for x in 0...Products.count - 1 {
            if login.Productos[x].ID == cbIDProducto.stringValue {
                login.Productos[x].Cantidad += cantidad
                
                /*if login.Existencias[x].Cantidad >= cantidad {
                    login.Existencias[x].Cantidad -= cantidad
                } else {
                    AlertBox.messageText = "No hay suficiente producto en stock"
                    AlertBox.runModal()
                }*/
                y = x
            }
        }
        login.Existencias.append(ExistenciaModel("IDExistencia", cbIDProducto.stringValue, cbIDAlmacenista.stringValue, login.Productos[y].Nombre, login.Productos[y].Descripcion, cantidad))
    }
    
    @IBAction func Contador(_ sender: NSButton) {
        if sender.title == "+" {
            cantidad += 1
        } else if sender.title == "-" {
            if (cantidad == 0) {
            } else {
                cantidad -= 1
            }
        }
        tCantidad.integerValue = cantidad
        
    }
    
}
