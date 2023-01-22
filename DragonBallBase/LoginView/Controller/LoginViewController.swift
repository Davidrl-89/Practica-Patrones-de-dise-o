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
    
    var viewModel: LoginViewModel?
    var loginButton: UIButton?
    var passwordTextField: UITextField?
    var emailTextField: UITextField?
    var errormessageView: UILabel?
    var login: String?
    
    
    override func loadView() {
        
        let loginView = LoginView()
        
        loginButton = loginView.getLoginButtonView()
        emailTextField = loginView.getEmailView()
        passwordTextField = loginView.getPasswordView()
        errormessageView = loginView.getErrorView()
        
        
        view = loginView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = LoginViewModel()
        
        loginButton?.addTarget(self, action: #selector(didLoginTapped), for: .touchUpInside)
    }
    
    
    func setupTab() {
        let navigationController = UINavigationController(rootViewController: HeroesListViewController())
        self.present(navigationController, animated: true)
    }
    
    func getLogin(email: String, password: String){
        
        viewModel?.fetchLogin(email: email, password: password, completion: { response in
            DispatchQueue.main.async {
                self.errormessageView?.text = response
                self.setupTab()
            }
            
        })
        
    }
    
    @objc func didLoginTapped(sender: UIButton!) {
        
        guard let email = emailTextField?.text,
              !email.isEmpty else {
            print("email is empty")
            return
        }
        guard let password = passwordTextField?.text, !password.isEmpty else {
            print("Password is empty")
            return
        }
        
        self.getLogin(email: email, password: password)
    }
    
}

