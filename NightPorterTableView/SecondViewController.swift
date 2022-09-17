//
//  SecondViewController.swift
//  NightPorterTableView
//
//  Created by zhongyuan liu on 9/16/22.
//

import UIKit

class SecondViewController: UIViewController {

    var initialInvestmentLabel: Float = 0
    
    var interest: Float = 0
    @IBOutlet weak var interestLabel: UITextField!
    @IBOutlet weak var interestStepper: UIStepper!
    
    var time: Float = 0
    @IBOutlet weak var timeLabel: UITextField!
    @IBOutlet weak var timeSlider: UISlider!
    
    @IBOutlet weak var yourReturnLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "ROI Calculator"
        
        interestStepper.wraps = true
        interestStepper.autorepeat = true
        interestStepper.maximumValue = 10
        
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
    }
    
    @IBAction func initialInvestmentChanged(_ sender: UITextField) {
        if let investment = Float(sender.text!){
            initialInvestmentLabel = investment
        }else{
            initialInvestmentLabel = 0
        }
    }
    
    @IBAction func stepperPressed(_ sender: UIStepper) {
        interestLabel.text = Float(sender.value).description
        interest = Float(sender.value)
    }
    
    @IBAction func sliderSlid(_ sender: UISlider) {
        time = Float(sender.value)
        timeLabel.text = String(format: "%.1f", time)
    }
    
    @IBAction func calculateReturn(_ sender: UIButton) {
//        let annualReturn = initialInvestment * (1 + interest / 100)
//        let compoundReturn = pow(annualReturn, time)
//        
//        yourReturnLabel.text = String(compoundReturn)
    }
    


}
