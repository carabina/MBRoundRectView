//
//  ViewController.swift
//  Sample
//
//  Created by Manish Bhande on 16/05/17.
//  Copyright © 2017 Manish Bhande. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cornerView: MBRoundRectView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func leftTopSwitch(_ sender: UISwitch) {
        cornerView.topLeft = sender.isOn
    }
    
    @IBAction func rightTopSwitch(_ sender: UISwitch) {
        cornerView.topRight = sender.isOn
    }
    
    @IBAction func leftBottomSwitch(_ sender: UISwitch) {
        cornerView.bottomLeft = sender.isOn
    }
    
    @IBAction func rightBottomSwitch(_ sender: UISwitch) {
        cornerView.bottomRight = sender.isOn
    }
    
}

