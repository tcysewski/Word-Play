//
//  FinalViewController.swift
//  Word Play
//
//  Created by Trey Cysewski on 10/28/19.
//  Copyright © 2019 Trey Cysewski. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    var madlibs = MadLibs()

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.text = madlibs.writeStory()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
