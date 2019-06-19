//
//  ViewController.swift
//  bullseye
//
//  Created by Eric Blancas on 6/17/19.
//  Copyright © 2019 Eric Blancas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentValue: Int = 0;
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func showAlert() {
        let message = "The Value of \(currentValue)"
        let alert = UIAlertController(title: "Hello World", message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Awesome", style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        print("The Value of \(slider.value)")
        let roundedValue = slider.value.rounded()
        print("The Rounded Value of \(roundedValue)")
        currentValue = Int(roundedValue)
    }
}

