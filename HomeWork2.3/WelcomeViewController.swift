//
//  WelcomeViewController.swift
//  HomeWork2.3
//
//  Created by Артур Петин on 31.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeMessage: UILabel!
    
    var userWelcome = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeMessage.text = "Hi! \(userWelcome)"
        }
    
    @IBAction func logout(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
