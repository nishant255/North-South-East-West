//
//  ViewController.swift
//  North South East West
//
//  Created by Nishant Patel on 3/17/17.
//  Copyright © 2017 Nishant Patel. All rights reserved.
//

import UIKit

class DirectionViewController: UIViewController, DisplayDirectionViewControllerDelegate {

    @IBOutlet weak var northButton: UIButton!
    @IBOutlet weak var westButton: UIButton!
    @IBOutlet weak var eastButton: UIButton!
    @IBOutlet weak var southButton: UIButton!
    
    @IBAction func northButtonPressed(_ sender: UIButton) {
        print("North Button Pressed")
        performSegue(withIdentifier: "directionSegue", sender: sender)
    }
    
    @IBAction func westButtonPressed(_ sender: UIButton) {
        print("West Button Pressed")
        
        performSegue(withIdentifier: "directionSegue", sender: sender)
    }
    
    @IBAction func eastButtonPressed(_ sender: UIButton) {
        print("East Button Pressed")
        
        performSegue(withIdentifier: "directionSegue", sender: sender)
    }
    
    @IBAction func southButtonPressed(_ sender: UIButton) {
        print("South Button Pressed")
        performSegue(withIdentifier: "directionSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller = segue.destination as! DisplayDirectionViewController
        controller.delegate = self
        if sender is UIButton {
            let currentSender = sender as! UIButton
            controller.directionTravelled = currentSender.currentTitle!
        }
        
    }
    
    func buttonPressed(_ controller: DisplayDirectionViewController) {
        dismiss(animated: true, completion: nil)
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        northButton.setTitle("North", for: UIControlState.normal)
        eastButton.setTitle("East", for: UIControlState.normal)
        westButton.setTitle("West", for: UIControlState.normal)
        southButton.setTitle("South", for: UIControlState.normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

