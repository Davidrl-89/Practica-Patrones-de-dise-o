//
//  LoginView.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class LoginView: UIView {
    
    let emailTextField = {
       let textField = UITextField()
       
        textField.backgroundColor = .white
        textField.placeholder = "Usuario"
        textField.translatesAutoresizingMaskIntoConstraints = false
    
        return textField
    }()
    
    let passwordTextField = {
        let textField = UITextField()
        
         textField.backgroundColor = .white
         textField.placeholder = "Contraseña"
         textField.translatesAutoresizingMaskIntoConstraints = false
     
         return textField
    }()
    
    private let loginButton: UIButton = {
            let button = UIButton(type: .system)

            var configuration = UIButton.Configuration.filled()
            configuration.title = "Entrar"
        
            button.configuration = configuration
            button.translatesAutoresizingMaskIntoConstraints = false
            return button
        }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        
        backgroundColor = .systemTeal
        
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
        
        
        NSLayoutConstraint.activate([
            
            emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 250),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            emailTextField.heightAnchor.constraint(equalToConstant: 34),
            emailTextField.widthAnchor.constraint(equalToConstant: 220),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.topAnchor, constant: 80),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 90),
            passwordTextField.widthAnchor.constraint(equalToConstant: 220),
            passwordTextField.heightAnchor.constraint(equalToConstant: 34),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.topAnchor, constant: 80),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 125),
            loginButton.heightAnchor.constraint(equalToConstant: 34),
            loginButton.widthAnchor.constraint(equalToConstant: 120)
       
        ])
    }
}
