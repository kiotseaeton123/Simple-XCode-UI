//
//  ViewController.swift
//  SinkOrSwim
//
//  Created by zhongyuan liu on 9/8/22.
//

import UIKit

class ViewController: UIViewController {

    var initialInvestment: Float = 0
    var time: Float = 0
    var APY: Float = 0
    
    @IBOutlet weak var ROITextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func initialInvestment(_ sender: UITextField) {
        //called whenever value of textfield is updated
        
        //binding to assign to temporary constant _value
        //force unwrap; text won't be nil
        if let _value = Float(sender.text!){
            initialInvestment = _value
        }else{
            initialInvestment = 0
        }
    }
    @IBAction func timeChanged(_ sender: UITextField) {
        if let _value = Float(sender.text!){
            time = _value;
        }else{
            time = 0;
        }
    }
    @IBAction func yieldChanged(_ sender: UITextField) {
        if let _value = Float(sender.text!){
            APY = _value
        }else{
            APY = 0
        }
    }
    @IBAction func calculatePressed(_ sender: Any) {
        let _ROI = initialInvestment * (1 + APY/100)
       
        ROITextField.text = String(_ROI)
    }
}

