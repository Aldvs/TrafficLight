//
//  ViewController.swift
//  TrafficLight
//
//  Created by admin on 08.12.2021.
//

import UIKit

enum CurrentLight {
    case red, yellow, blue
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var blueLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        blueLight.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.layer.bounds.width / 2
        yellowLight.layer.cornerRadius = yellowLight.layer.bounds.width / 2
        blueLight.layer.cornerRadius = blueLight.layer.bounds.width / 2
    }

    @IBAction func startPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            blueLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .blue
        case .blue:
            yellowLight.alpha = lightIsOff
            blueLight.alpha = lightIsOn
            currentLight = .red
        }
    }
}

