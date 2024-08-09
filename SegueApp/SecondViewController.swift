//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Dilara Akdeniz on 9.08.2024.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = myName

        // Do any additional setup after loading the view.
    }
    

}
