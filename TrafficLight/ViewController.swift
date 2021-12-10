//
//  ViewController.swift
//  TrafficLight
//
//  Created by admin on 08.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        orangeView.alpha = 0.3
        greenView.alpha = 0.3
        startButton.layer.cornerRadius = 10
        startButton.setTitle("START", for: .normal)
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        redView.layer.cornerRadius = redView.layer.bounds.width / 2
        orangeView.layer.cornerRadius = orangeView.layer.bounds.width / 2
        greenView.layer.cornerRadius = greenView.layer.bounds.width / 2
    }

    @IBAction func startPressed() {
        
        if orangeView.alpha != 1 && greenView.alpha != 1 && redView.alpha != 1 {
            startButton.setTitle("NEXT", for: .normal)
            redView.alpha = 1
        } else if redView.alpha == 1 {
            redView.alpha = 0.3
            orangeView.alpha = 1
        } else if orangeView.alpha == 1 {
            orangeView.alpha = 0.3
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.3
            redView.alpha = 1
        }
    }
}

