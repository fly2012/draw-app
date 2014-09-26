//
//  ViewController.swift
//  draw
//
//  Created by daniel on 9/26/14.
//  Copyright (c) 2014 beforeload. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var drawView: AnyObject!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func clearView(sender: UIButton) {
        var theDrawView = drawView as DrawView
        theDrawView.lines = []
        theDrawView.setNeedsDisplay()
    }
    
    @IBAction func colorSelected(button: UIButton) {
        var theDrawView = drawView as DrawView
        var color : UIColor!
        if (button.titleLabel?.text == "Red") {
            color = UIColor.redColor()
        } else if (button.titleLabel?.text == "Black") {
            color = UIColor.blackColor()
        }
        theDrawView.drawColor = color
    }
}

