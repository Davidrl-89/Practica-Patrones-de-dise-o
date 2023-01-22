//
//  LoginView.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let headerLabel = {
        let label = UILabel()
        label.text = "LOGIN"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false                      // siempre hay que ponerla en false
        
        return label
    }()
    
    let emailTextField = {
       let textField = UITextField()
       
        textField.backgroundColor = .white
        textField.autocapitalizationType = .none
        textField.placeholder = "Usuario"
        textField.translatesAutoresizingMaskIntoConstraints = false
    
        return textField
    }()
    
    let passwordTextField = {
        let textField = UITextField()
        
         textField.backgroundColor = .white
         textField.placeholder = "Contraseña"
         textField.isSecureTextEntry = true
         textField.translatesAutoresizingMaskIntoConstraints = false
     
         return textField
    }()
    
    let loginButton = {
        let button = UIButton()
        
            button.setTitle("LOGIN", for: .normal)
            button.backgroundColor = .systemBlue
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    let errormessageView = {
           let label = UILabel()
           label.textAlignment = .center
           label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
           label.numberOfLines = 0
           label.translatesAutoresizingMaskIntoConstraints = false
           return label
       }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getLoginButtonView() -> UIButton {
        return loginButton
    }
    
    func getEmailView() -> UITextField {
        return emailTextField
    }
    
    func getPasswordView() -> UITextField {
        return passwordTextField
    }
    
    func getErrorView() -> UILabel {
        return errormessageView
    }
    
    
    
    
    
    func setUpViews() {
        
        backgroundColor = .systemTeal
        
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        addSubview(headerLabel)
        addSubview(errormessageView)
        
        
        NSLayoutConstraint.activate([
            
            headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 140),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            headerLabel.heightAnchor.constraint(equalToConstant: 50),
            
            emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 250),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            emailTextField.heightAnchor.constraint(equalToConstant: 34),
            emailTextField.widthAnchor.constraint(equalToConstant: 220),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 80),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            passwordTextField.widthAnchor.constraint(equalToConstant: 220),
            passwordTextField.heightAnchor.constraint(equalToConstant: 34),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 80),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 130),
            loginButton.heightAnchor.constraint(equalToConstant: 34),
            loginButton.widthAnchor.constraint(equalToConstant: 120),
            
            errormessageView.widthAnchor.constraint(equalToConstant: 20),
            errormessageView.topAnchor.constraint(equalTo: loginButton.topAnchor, constant: 80),
            errormessageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 60),
            errormessageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -60),
            errormessageView.heightAnchor.constraint(equalToConstant: 180),
            errormessageView.widthAnchor.constraint(equalToConstant: 20)
       
        ])
    }
}
