//
//  ViewController.swift
//  BingeBot
//
//  Created by Hiya Shah on 12/26/19.
//  Copyright © 2019 Hiya Shah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var activitiesStackView: UIStackView!
    
    @IBOutlet weak var activitiesLabel: UILabel!
    @IBOutlet weak var randomActivitiesLabel: UILabel!
    @IBOutlet weak var botSpokenLabel: UILabel!
    @IBOutlet weak var randomActLabel: UILabel!
    @IBOutlet weak var addActTextField: UITextField!
    
    @IBOutlet weak var randomActStackView: UIStackView!
    @IBOutlet weak var addActBtn: UIButton!
    
    var shows: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        activitiesStackView.isHidden = true
        randomActStackView.isHidden = true
        
    }


    func updateShowsLabel() {
        activitiesLabel.text = shows.joined(separator: " - ")
    }
    
    @IBAction func randomBingeShowButtonWasPressed(_ sender: Any) {
        randomActLabel.text = shows.randomElement()
        randomActLabel.isHidden = false
        botSpokenLabel.isHidden = false
    }
    
    @IBAction func addShowBtnWasPressed(_ sender: Any) {
        
        
        guard let showName = addActTextField.text else {return}
        if showName.count > 0 {
            shows.append(showName)
            updateShowsLabel()
            addActTextField.text = ""
            activitiesStackView.isHidden = false
        }
        if shows.count > 1 {
            randomActStackView.isHidden = false
            botSpokenLabel.isHidden = true
            randomActLabel.isHidden = true
        }
    }
}

