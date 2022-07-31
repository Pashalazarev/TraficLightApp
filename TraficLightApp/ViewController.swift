//
//  ViewController.swift
//  TraficLightApp
//
//  Created by Macbook on 31.07.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var starButton: UIButton!
    @IBOutlet var nextButton: UIButton!
    
    var counter = 1.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        redLightView.layer.cornerRadius = 59.5
        yellowLightView.layer.cornerRadius = 59.5
        greenLightView.layer.cornerRadius = 59.5
        
        starButton.layer.cornerRadius = 15
    }
    
    @IBAction func startButtonPressed() {
        starButton.setTitle("Next", for: .normal)
        if counter == 1 {
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            counter -= 0.5
        } else if counter == 0.5{
            redLightView.alpha = 0.3
            yellowLightView.alpha = 1
            counter -= 0.5
        } else if counter == 0 {
            yellowLightView.alpha = 0.3
            greenLightView.alpha = 1
            counter += 1
        }
    }
    }




