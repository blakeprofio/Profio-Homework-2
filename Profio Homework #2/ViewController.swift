//
//  ViewController.swift
//  Profio Homework #2
//
//  Created by Blake Profio on 2/6/20.
//  Copyright © 2020 Blake Profio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    var madlibTemplate : String = "On <date>, meet <name> at <place>, so you can <verb> together. When you <verb> together, it will be <adjective>,and neither of you will survive."
    
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var verbInput: UITextField!
    
    @IBOutlet weak var adjectiveInput: UITextField!
    
    @IBOutlet weak var dateInput: UITextField!
    
    @IBOutlet weak var placeInput: UITextField!
    
    @IBOutlet weak var outputText: UITextField!

    @IBAction func pressButton(_ sender: Any) {
        outputText.text = madlibTemplate.replacingOccurrences(of:"<date>",with: dateInput.text!)
        
        outputText.text = outputText.text?.replacingOccurrences(of:"<name>",with: nameInput.text!)
        
        outputText.text = outputText.text?.replacingOccurrences(of:"<place>",with: placeInput.text!)
        
        outputText.text = outputText.text?.replacingOccurrences(of:"<verb>",with: verbInput.text!)
        
        outputText.text = outputText.text?.replacingOccurrences(of:"<adjective>",with: adjectiveInput.text!)

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }


}

