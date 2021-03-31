//
//  ViewController.swift
//  HomeWork2.3
//
//  Created by Артур Петин on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVS = segue.destination as? WelcomeViewController else {return}
        welcomeVS.userWelcome = user
    }
    
        let user = "Test"
        let pass = "Qwerty1"
    
    @IBAction func forgetUserName(_ sender: Any) {
        let alert = UIAlertController(title: "You're user name", message: "\(user)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"UserName\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func forgetPassword(_ sender: Any) {
        let alert = UIAlertController(title: "You're password", message: "\(pass)", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
        NSLog("The \"Password\" alert occured.")
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func loginButton(_ sender: Any) {
        let enterUserName = (userName.text ?? "")
        let enterPassword = (password.text ?? "")
        if enterUserName != user || enterPassword != pass{
            let alert = UIAlertController(title: "Ошибка", message: "Не верный логин или пароль", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: { _ in
            NSLog("Возникло предупреждение об не верном пароле")
            }))
            self.present(alert, animated: true, completion: nil)
        }
    }
}

