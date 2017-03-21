//
//  DisplayDirectionViewController.swift
//  North South East West
//
//  Created by Nishant Patel on 3/17/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class DisplayDirectionViewController: UIViewController {

    
    weak var delegate: DisplayDirectionViewControllerDelegate?
    @IBOutlet weak var directionTravelledLabel: UIButton!
    var directionTravelled: String?
    
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        delegate?.buttonPressed(self)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()                
        directionTravelledLabel.setTitle(self.directionTravelled, for: UIControlState.normal)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
