//
//  ThirdViewController.swift
//  NightPorterTableView
//
//  Created by zhongyuan liu on 9/16/22.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Surprise"

    }
    @IBAction func changedSegment(_ sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0{
            view.backgroundColor = .cyan
        }else{
            view.backgroundColor = .systemPink
        }
    }
    



}
