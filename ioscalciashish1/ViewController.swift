//
//  ViewController.swift
//  ioscalciashish1
//
//  Created by Student016 on 22/08/18.
//  Copyright © 2018 ra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Number1:Double = 0.0
    var Number2:Double = 0.0
    var opr:String = " "
    override func viewDidLoad() {
       super.viewDidLoad()
        Resulttext.text = ""
         }
    @IBOutlet weak var Resulttext: UITextField!
    
    
    @IBAction func pressbutton(_ sender: UIButton)
    {
        let title:String = String(sender.titleLabel!.text!)
        Resulttext.text! = Resulttext.text! + title
    }
    
    @IBAction func plus(_ sender: UIButton)
    {
    Number1 = Double(Resulttext.text!)!
        Resulttext.text = ""
        opr = "+"
    }
    
    @IBAction func minus(_ sender: UIButton) {
        Number1 = Double(Resulttext.text!)!
        Resulttext.text = ""
        opr = "-"
        
    }
    
    @IBAction func multipli(_ sender: UIButton) {
    
        Number1 = Double(Resulttext.text!)!
        Resulttext.text = ""
        opr = "*"
    }
    
    
    @IBAction func division(_ sender: UIButton) {
    
        Number1 = Double(Resulttext.text!)!
        Resulttext.text = ""
        opr = "/"
    }
    
    
    
    
    @IBOutlet weak var digitpress: UIButton!
    
    
    
    @IBAction func equalto(_ sender: UIButton) {
        var result:Double = 0
        Number2 = Double(Resulttext.text!)!
        switch opr {
        case "+": result = Number1 + Number2
        case "-": result = Number1 - Number2
        case "*": result = Number1 * Number2
        case "/": result = Number1 / Number2
        default:
            result = 0
        }
    Resulttext.text = String(result)
    }
    
    @IBAction func clear(_ sender: UIButton) {
        Resulttext.text = ""
    }
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

