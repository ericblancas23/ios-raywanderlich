//
//  ViewController.swift
//  bullseye
//
//  Created by Eric Blancas on 6/17/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0
    
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
    
    @IBAction func showAlert() {
        
        let message = "The value of the slider is now: \(currentValue)"
        
        let alert = UIAlertController(title: "Hello, World!", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        let roundedValue = slider.value.rounded()
        currentValue = Int(roundedValue)
    }
}

