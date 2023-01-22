//
//  LoginViewModel.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 21/1/23.
//

import Foundation
import UIKit

class LoginViewModel: NSObject {
    
    override init() {
        
    }
    
    func fetchLogin(email: String, password: String, completion: @escaping (String) -> Void) {
        
        let email: String? = email
        let password: String? = password
        
        let apiClient = ApiClient.shared
        
        apiClient.login(user: email!, password: password!) { loginToken, error in
            
            completion(loginToken ?? "Su contraseña o usario es incorrecto, intentelo de nuevo")
            
        }
    }
}
