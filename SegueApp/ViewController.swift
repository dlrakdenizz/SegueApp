//
//  ViewController.swift
//  SegueApp
//
//  Created by Dilara Akdeniz on 8.08.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    
    var username = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("viewDidLoad function called") //VC ilk yüklendiğinde gözükenler
        //viewDidLoad call just when open the VC first time. If you call SecondVC and then try to come back first one, you can't see actions in the viewDid Load.
        nameText.text = ""
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear function called") //VC koybolduğunda gözükecek olan
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called") 
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        username = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.myName = username
            
        }
    }
    
}

