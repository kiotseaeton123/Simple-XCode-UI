//
//  ViewController.swift
//  NightPorterTableView
//
//  Created by zhongyuan liu on 9/16/22.
//

import UIKit

//code to remove keyboard: https://stackoverflow.com/questions/24126678/close-ios-keyboard-by-touching-anywhere-using-swift
extension UIViewController {
    
        func hideKeyboardWhenTappedAround() {
        let tap = UITapGestureRecognizer(target: self, action:            #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

class ViewController: UIViewController, UITableViewDataSource{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Welcome S&P"
        
    }
    
    let basicInfo = [
        "S&P Timeline",
        "What is S&P?"
    ]
    let roiCalculator = [
        "Calculate ROI",
        "What is ROI?"
    ]
    let surprise = [
        "Click here for a surprise!"
    ]
    
    @IBAction func toggleDarkMode(_ sender: Any) {
        let darkSwitch = sender as! UISwitch
        if darkSwitch.isOn{
            view.backgroundColor = UIColor.darkGray
        }else{
            view.backgroundColor = UIColor.systemTeal
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return basicInfo.count
        case 1: return roiCalculator.count
        case 2: return surprise.count
        default: return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "aCell", for:  indexPath)

        cell.accessoryType = .disclosureIndicator
        
        switch indexPath.section{
        case 0:
            cell.textLabel?.text = basicInfo[indexPath.row]
        case 1:
            cell.textLabel?.text = roiCalculator[indexPath.row]
        case 2:
            cell.textLabel?.text = surprise[indexPath.row]
        default:
            cell.textLabel?.text = "this won't happen"
        }
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "S&P Information"
        case 1:
            return "Calculate Your Return"
        case 2:
            return "Surprise"
        default:
            return nil
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


        if let _ = segue.destination as? ViewController,
           let cell = sender as? UITableViewCell{
            performSegue(withIdentifier: "segueToROI", sender: cell)

        }
        
    }
    
}

