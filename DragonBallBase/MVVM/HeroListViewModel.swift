//
//  HeroListViewModel.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation

class HeroListViewModel: NSObject {             // me lo llevo al viewController para que me pinte el listado de heroes
    
    override init() {
        
    }
    
    var updateUI: ((_ heroes: [HeroModel]) -> Void)?                             // comunicacion entre viewModel y la View. como no la voy a inicializar la hago opcional
    
    func   fetchData() {
        
        let myToken = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InByaXZhdGUifQ.eyJpZGVudGlmeSI6IkUzM0EzQTYyLUIxN0QtNDg3MC04Qjk3LTRBMzU4QTE5MEY2QyIsImVtYWlsIjoiZHJvYmxlczk4OEBnbWFpbC5jb20iLCJleHBpcmF0aW9uIjo2NDA5MjIxMTIwMH0.KnY3n9Kh6uqG07ttj4UP5d_Q2wBdfsVyYHaLIH2WVnw"
        
        let apiClient = ApiClient(token: myToken)
        
        apiClient.getHeroes { [weak self] heroes, error in
            self?.updateUI?(heroes)
            
        }
    }
    
}
