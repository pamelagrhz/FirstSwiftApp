//
//  ViewController.swift
//  Hello
// ViewController.swift
//  Created by Pamela Ruíz on 4/26/19.
//  Copyright © 2019 pamelagrhz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel! //label
    @IBOutlet weak var name: UITextField!//texto que se ingresa en el textbox
    
    override func viewDidLoad() {//metodo que contiene lo que se carga/cambia al iniciar la aplicacion
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func button(_ sender: UIButton) {//esta es la accion que se realizará al presionar el boton
        let labelName = name.text!//la variable tendra el texto que ingresas en texbox
        let alertController:UIAlertController=UIAlertController(title: "Hola \(labelName)", message: "Hemos pulsado el boton ", preferredStyle: .alert)//esta es una alerta de tipo "alerta" que sucedera al presionar el boton
        
        
        
        let ok:UIAlertAction=UIAlertAction(title: "ok", style: .default, handler: nil)//ahora hacemos la accion de la alerta; creamos el boton ok con un estilo default y un handler nulo (sin accion)
        alertController.addAction(ok)//agregamos el boton a la alerta
        present (alertController,animated: true, completion: nil)
        
        label.text="Hola \(labelName), como estás?"//cambiamos el label a un hola (nombre que se ingresó), como estás
    }
    
}

