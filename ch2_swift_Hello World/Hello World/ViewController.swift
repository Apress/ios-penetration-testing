//
//  ViewController.swift
//  Hello World
//
//  Created by kunal Relan on 29/05/16.
//  Copyright © 2016 kunal Relan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    
    @IBOutlet weak var label1: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.label1.text = "Hello World From Swift"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

