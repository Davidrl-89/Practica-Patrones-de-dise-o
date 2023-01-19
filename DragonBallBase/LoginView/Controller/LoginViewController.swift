//
//  LoginViewController.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class LoginViewController: UIViewController {
    var mainView: LoginView { self.view as! LoginView }
    
    
    override func loadView() {
        view = LoginView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    
    
    
}
