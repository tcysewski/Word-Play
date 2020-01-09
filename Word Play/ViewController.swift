//
//  ViewController.swift
//  Word Play
//
//  Created by Trey Cysewski on 10/22/19.
//  Copyright © 2019 Trey Cysewski. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Connection for input text fields
    @IBOutlet weak var noun0TextField: UITextField!
    @IBOutlet weak var noun1TextField: UITextField!
    @IBOutlet weak var noun2TextField: UITextField!
    @IBOutlet weak var noun3TextField: UITextField!
    @IBOutlet weak var adjective0TextField: UITextField!
    @IBOutlet weak var adjective1TextField: UITextField!
    @IBOutlet weak var verb1TextField: UITextField!
    @IBOutlet weak var verb2TextField: UITextField!
    var madlibs = MadLibs()
    
    //Connection final label
    
    //Connection Next button and code/story
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func OnButtonTapped(_ sender: Any) {
        // do some kind of entry validation
        if noun0TextField.text!.count != 0 &&
            noun2TextField.text!.count != 0 &&
            noun1TextField.text!.count != 0 &&
            noun3TextField.text!.count != 0 &&
            adjective0TextField.text!.count != 0 &&
            adjective1TextField.text!.count != 0 &&
            verb1TextField.text!.count != 0 &&
            verb2TextField.text!.count != 0 {
            madlibs.noun0 = noun0TextField.text!
            madlibs.noun1 = noun1TextField.text!
            madlibs.noun2 = noun2TextField.text!
            madlibs.noun3 = noun3TextField.text!
            madlibs.adjective1 = adjective1TextField.text!
            madlibs.adjective0 = adjective0TextField.text!
            madlibs.verb1 = verb1TextField.text!
            madlibs.verb2 = verb2TextField.text!
            performSegue(withIdentifier: "FirstToSecondSegue", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! FinalViewController
        dvc.madlibs = self.madlibs
    }
}
