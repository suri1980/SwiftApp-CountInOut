//
//  ViewController.swift
//  CountInOut
//
//  Created by Thota, Surendra Babu on 20/5/15.
//  Copyright (c) 2015 Thota, Surendra Babu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    var defaultCount : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addOneButton(sender: UIButton) {
        defaultCount = defaultCount + 1
        outputLabel.text = "\(defaultCount)"
        
        if (defaultCount < 0){
            outputLabel.textColor = UIColor.redColor()
        }else{
            outputLabel.textColor = UIColor.grayColor()
        }
        
    }
    @IBAction func resetToZero(sender: UIButton) {
        
        defaultCount = 0
        outputLabel.text = "\(defaultCount)"
        outputLabel.textColor = UIColor.blackColor()
        
    }

    @IBAction func minusOneButton(sender: UIButton) {
        defaultCount = defaultCount - 1
        outputLabel.text = "\(defaultCount)"
        if (defaultCount < 0){
            outputLabel.textColor = UIColor.redColor()
        }else{
            outputLabel.textColor = UIColor.grayColor()
        }
    }
}

