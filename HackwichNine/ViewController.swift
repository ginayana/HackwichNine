//
//  ViewController.swift
//  HackwichNine
//
//  Created by Gina Yanagihara on 3/30/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    var text = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myLabel.text = "My Segmented Control"
        segmentedControl.selectedSegmentIndex = -1
        
        
    }
    @IBAction func textInputIntoField(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            myLabel.text = textField.text!
        case 1:
            myLabel.text = text
        case 2:
            myLabel.text = text
        default:
            break
        }
        
    }

    @IBAction func segmentedControlPressed(_ sender: Any) {
   switch segmentedControl.selectedSegmentIndex {
    case 0:
       myLabel.text = "First Segment has been Selected"
   case 1:
       myLabel.text = "Second Segment has been Selected"
    case 2:
        myLabel.text = "Whoohoo this makes sense now!"
   default:
        break
    }
    
}

}

