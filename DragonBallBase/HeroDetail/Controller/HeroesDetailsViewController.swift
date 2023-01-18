//
//  HeroesDetailsViewController.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class HeroesDetailViewController: UIViewController {
    var mainView: HeroesDetailView { self.view as! HeroesDetailView }
    
    init(heroeDetailModel: HeroModel) {
        super.init(nibName: nil, bundle: nil)
        mainView.configure(heroeDetailModel)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = HeroesDetailView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

