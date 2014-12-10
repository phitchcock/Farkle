//
//  ViewController.swift
//  Farkle
//
//  Created by Peter Hitchcock on 10/8/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dieLabels:[UILabel] = []
    var randomNumber = arc4random_uniform(6) + 1

    @IBOutlet weak var dieOneLabel: DieLabel!
    @IBOutlet weak var dieTwoLabel: UILabel!
    @IBOutlet weak var dieThreeLabel: UILabel!
    @IBOutlet weak var dieFourLabel: UILabel!
    @IBOutlet weak var dieFiveLabel: UILabel!
    @IBOutlet weak var dieSixLabel: UILabel!



    @IBAction func onRollButtonPressed(sender: AnyObject) {

        dieOneLabel.text = "\(randNum(6))"
        dieTwoLabel.text = "\(randNum(6))"
        dieThreeLabel.text = "\(randNum(6))"
        dieFourLabel.text = "\(randNum(6))"
        dieFiveLabel.text = "\(randNum(6))"
        dieSixLabel.text = "\(randNum(6))"

    }

    override func viewDidLoad() {
        super.viewDidLoad()

        dieLabels = [dieOneLabel, dieTwoLabel, dieThreeLabel, dieFourLabel, dieFiveLabel, dieSixLabel]

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func randNum(limit: Int) -> Int {
        return Int(arc4random_uniform(UInt32(limit) + 1))
    }


}

