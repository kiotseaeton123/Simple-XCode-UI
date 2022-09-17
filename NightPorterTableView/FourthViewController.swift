//
//  FourthViewController.swift
//  SinkOrSwim
//
//  Created by zhongyuan liu on 9/16/22.
//

import UIKit

class FourthViewController: UIViewController, UICollectionViewDataSource {
    let reuseIdentifier = "cell"
    let message = ["S&P", "is", "up", "five", "points"]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return message.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath as IndexPath) as! CustomCollectionViewCell
//
//        for number in 0...4{
//            cell.myLabel.text = message[number]
//        }
        cell.backgroundColor = UIColor.cyan
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
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
