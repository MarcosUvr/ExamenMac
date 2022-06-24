//
//  NuevaVenta.swift
//  ExamenFinal
//
//  Created by ISSC_411_2022 on 16/06/22.
//

import Cocoa

class NuevaVenta: NSViewController {

    // Declaramos nuestras variables de la interfaz(t = textBox, cb = ComboBox, btn = Botón)
    @IBOutlet weak var cbIDVendedor: NSComboBox!
    @IBOutlet weak var cbIDProducto: NSComboBox!
    @IBOutlet weak var cbIDCliente: NSComboBox!
    @IBOutlet weak var btnMenos: NSButton!
    @IBOutlet weak var btnMas: NSButton!
    @IBOutlet weak var tCantidad: NSTextField!
    @IBOutlet weak var btnAgregar: NSButton!
    var cantidad: Int = 0
    var y: Int = 0
    
    // Variables locales
    @objc dynamic var login:ViewController!
    @objc dynamic var Vendedores: [PersonModel] = []
    @objc dynamic var Products: [ProductModel] = []
    var AlertBox = NSAlert()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        tCantidad.integerValue = cantidad
        Vendedores = login.Usuarios
        Products = login.Productos
        for x in Vendedores {
            if x.Rol == "Vendedor" {
                cbIDVendedor.addItem(withObjectValue: x.ID)
            } else if x.Rol == "Cliente" {
                cbIDCliente.addItem(withObjectValue: x.ID)
            }
            
        }
        for y in Products {
            cbIDProducto.addItem(withObjectValue: y.ID)
        }
    }
    
    @IBAction func AgregarVenta(_ sender: Any) {
        if validaciones() {
            for x in 0...Vendedores.count - 1 {
                if login.Usuarios[x].ID == cbIDVendedor.stringValue {
                    login.Usuarios[x].Aportacion += 1
                    
                }
                print("ID Usuario: \(login.Usuarios[x].ID), Aportacion: \(login.Usuarios[x].Aportacion)")
                
            }
            for x in 0...Products.count - 1 {
                if login.Productos[x].ID == cbIDProducto.stringValue {
                    if login.Existencias[x].Cantidad >= cantidad {
                        login.Existencias[x].Cantidad -= cantidad
                    } else {
                        AlertBox.messageText = "No hay suficiente producto en stock"
                        AlertBox.runModal()
                    }
                    login.Usuarios[x].Aportacion += 1
                    y = x
                }
            }
            let IDVenta = GenerarID(cliente: cbIDCliente.stringValue, vendedor: cbIDVendedor.stringValue)
            login.Ventas.append(VentaModel(IDVenta, cbIDVendedor.stringValue, cbIDProducto.stringValue, "Cliente", cantidad, 0, 10))
            AlertBox.messageText = "Se ha creado la venta con éxito"
            AlertBox.runModal()
            dismiss(self)
        }
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
    
    func GenerarID(cliente: String, vendedor: String) -> String {
        let client = cliente[cliente.startIndex]
        let client2 = cliente[cliente.index(after: cliente.startIndex)]
        let seller = vendedor[vendedor.startIndex]
        let selller2 = vendedor[vendedor.index(after: vendedor.startIndex)]
        
        let nID = String(format: "%03d", login.Ventas.count + 1)
        let nuevoID = "V" + "\(nID)" + "\(client)" + "\(client2)" + "\(seller)" + "\(selller2)"
        return nuevoID
    }
    
    func validaciones() -> Bool{
        if (cbIDCliente.stringValue == "" || cbIDProducto.stringValue == "" || cbIDVendedor.stringValue == "" || tCantidad.stringValue == "") {
            AlertBox.messageText = "No puede haber campos vacios"
            AlertBox.runModal()
            return false
        }
        return true
    }
}
