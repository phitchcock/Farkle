//
//  DieLabel.swift
//  Farkle
//
//  Created by Peter Hitchcock on 10/8/14.
//  Copyright (c) 2014 Peter Hitchcock. All rights reserved.
//

import UIKit

class DieLabel: UILabel {

    @IBAction func onTapped(sender: UITapGestureRecognizer) {
        
    }

    func roll() -> Void {
        var randomRoll = arc4random_uniform(6) + 1
        self.text = "\(randomRoll)" as NSString
    }

}
