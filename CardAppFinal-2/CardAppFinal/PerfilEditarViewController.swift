//
//  PerfilEditarViewController.swift
//  CardAppFinal
//
//  Created by APPS2T on 9/2/22.
//

import UIKit

class PerfilEditarViewController: UIViewController {
    
    @IBOutlet var nombre: UITextField!
    @IBOutlet var contraseña: UITextField!
    @IBOutlet var descripcion: UITextField!
    @IBOutlet var telefono: UITextField!
    
    let saveUser = UserDefaults.standard
    
    
    
    override func viewDidLoad() {

        super.viewDidLoad()

        if let nombreSave = saveUser.string(forKey: "nombreSave"){
            nombre.text = nombreSave
        }
        if let contraseñaSave = saveUser.string(forKey: "contraseñaSave"){
            descripcion.text = contraseñaSave
        }
        if let descripcionSave = saveUser.string(forKey: "descripcionSave"){
            contraseña.text = descripcionSave
        }

        if let telefonoSave = saveUser.string(forKey: "telefonoSave"){
            telefono.text = telefonoSave
        }
        
        //INTEGER
        /*if let telefonoSave = saveUser.integer(forKey: "telefonoSave"){
            telefono.text = telefonoSave
        }*/
    }
    
    
    
    @IBAction func confirmarCambiosButton(_ sender: Any) {
        let nombreSave = nombre.text
        if nombreSave != nil{
            saveUser.set(nombreSave, forKey: "nombreSave")
        }

        let contraseñaSave = contraseña.text
        
        if contraseñaSave != nil{
            saveUser.set(contraseñaSave, forKey: "contraseñaSave")
        }
        
        
        let descripcionSave = descripcion.text

        if descripcionSave != nil{

            saveUser.set(descripcionSave, forKey: "descripcionSave")
        }
        
        let telefonoSave = telefono.text

        if telefonoSave != nil{

            saveUser.set(telefonoSave, forKey: "telefonoSave")
        }
        
    }
}
