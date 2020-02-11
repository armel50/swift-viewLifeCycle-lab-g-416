//
//  ViewController.swift
//  FunWithViews
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        renitializeTheView()
    }
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2:UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    
//    label1.isHidden = true;
//    label2.isHidden = true;
//    label3.isHidden = true;
//    label4.isHidden = true;
//    label5.isHidden = true;
//    label6.isHidden = true;
    
    @IBOutlet weak var view1: UIView!
       @IBOutlet weak var view2: UIView!
       @IBOutlet weak var view3: UIView!
       @IBOutlet weak var view4: UIView!
       @IBOutlet weak var view5: UIView!
       @IBOutlet weak var view6: UIView!
       @IBOutlet weak var view7: UIView!

    var game: [String:Int] = ["round":0]
    @IBAction func dieButtonTapped(_ sender: AnyObject) {
        let dice = randomDiceRoll()
        game["round"] = (game["round"] ?? 0) + 1

        if game["round"] ?? 0 <= 6{
            displayLabel(dice)

            switch dice {
            case 1:
                view1.isHidden = true
                view2.isHidden = true
                view3.isHidden = true
                view5.isHidden = true
                view6.isHidden = true
                view7.isHidden = true

            case 2:
                view1.isHidden = true
                view2.isHidden = false
                view3.isHidden = true
                view4.isHidden = true
                view5.isHidden = true
                view6.isHidden = false
                view7.isHidden = true
            case 3:
                view1.isHidden = true
                view2.isHidden = false
                view3.isHidden = true
                view4.isHidden = false
                view5.isHidden = true
                view6.isHidden = false
                view7.isHidden = true
            case 4:
                view1.isHidden = false
                  view2.isHidden = false
                  view3.isHidden = true
                  view4.isHidden = true
                  view5.isHidden = true
                  view6.isHidden = false
                  view7.isHidden = false
            case 5:
                view1.isHidden = false
                view2.isHidden = false
                view3.isHidden = true
                view4.isHidden = false
                view5.isHidden = true
                view6.isHidden = false
                view7.isHidden = false
            case 6:
                view1.isHidden = false
                view2.isHidden = false
                view3.isHidden = false
                view4.isHidden = true
                view5.isHidden = false
                view6.isHidden = false
                view7.isHidden = false
                                                      
            default:
                print("nothing could be selected")
            }
        }else{
            renitializeTheView()
        }
    }
    
    // Returns back a random Int (1, 2, 3, 4, 5, or 6)
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
    }
    
    func displayLabel(_ num: Int){
        switch game["round"] {
        case 1:
            label1.text = "\(num)"
            label1.isHidden = false

        case 2:
            label2.text = "\(num)"
            label2.isHidden = false
        case 3:
            label3.text = "\(num)"
            label3.isHidden = false

        case 4:
            label4.text = "\(num)"
            label4.isHidden = false

        case 5:
            label5.text = "\(num)"
            label5.isHidden = false

        case 6:
            label6.text = "\(num)"
            label6.isHidden = false

        default:
            print("done")
        }
    }
    // this function renitialize the view
    func renitializeTheView() {
        view1.isHidden = false
        view2.isHidden = false
        view3.isHidden = false
        view4.isHidden = false
        view5.isHidden = false
        view6.isHidden = false
        view7.isHidden = false
    
        label1.isHidden = true
      label2.isHidden = true
       label3.isHidden = true
       label4.isHidden = true
       label5.isHidden = true
       label6.isHidden = true
        game["round"] = 0

    }

}
