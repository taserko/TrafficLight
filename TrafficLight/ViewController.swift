//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sergey Konovalov on 01.06.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var lightRed: UIView!
    @IBOutlet var lightYellow: UIView!
    @IBOutlet var lightGreen: UIView!
    
    @IBOutlet var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lightRed.layer.cornerRadius = 60
        lightYellow.layer.cornerRadius = 60
        lightGreen.layer.cornerRadius = 60
        buttonStart.layer.cornerRadius = 10
    }
    
    @IBAction func buttonStartTapped(_ sender: UIButton) {
        buttonStart.setTitle("Next", for: .normal)
        
        if lightRed.alpha == 1 {
            lightRed.alpha = 0.5
            lightYellow.alpha = 1
            return
        }

        if lightYellow.alpha == 1 {
            lightYellow.alpha = 0.5
            lightGreen.alpha = 1
            return
        }

        if lightGreen.alpha == 1 {
            lightGreen.alpha = 0.5
            lightRed.alpha = 1
            return
        }
        
        lightRed.alpha = 1
    }
    
}

