//
//  HelloUserViewController.swift
//  myResume
//
//  Created by Kir Pir on 31.05.2020.
//  Copyright © 2020 Kirill_Presnyakov. All rights reserved.
//

import UIKit

class HelloUserViewController: UIViewController {
    @IBOutlet var helloUserLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloUserLabel.text = "Hello " + userName
    }
    
    @IBAction func logOutButtonPressed(_ sender: Any) {
        dismiss(animated: true)
    }
    
    /*
     Я пытался реализовать выход через
     segue, но при нажатии на кнопку
     LogOut ничего не происходило.
     */
    
//    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
//    let deleteInfo = segue.source as! ViewController
//        deleteInfo.userNameTextField.text = ""
//        deleteInfo.userPasswordTextField.text = ""
//    }
    

    
    
    
    
    
}
    

