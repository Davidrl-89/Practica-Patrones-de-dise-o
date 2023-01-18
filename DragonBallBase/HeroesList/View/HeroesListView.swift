//
//  HeroesListView.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class HeroesListView: UIView {
    
    // CREATE HEADER VIEW
    
    let headerLabel = {
        let label = UILabel()
        label.text = "MVC"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        //label.backgroundColor = .yellow
        label.translatesAutoresizingMaskIntoConstraints = false                      // siempre hay que ponerla en false
        
        return label
    }()
    
    
    
    // CREATE TABLE VIEW
    
    let heroesTableview = {
        let tableView = UITableView()
        //tableView.backgroundColor = .blue
        
        tableView.register(HeroesListViewCell.self, forCellReuseIdentifier: "HeroesListViewCell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // CREATE / ADD SUBVIEWS
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpViews() {
        backgroundColor = .white                                                    // para que la pantalla en vez de en negro, te salga en blanco
        
        addSubview(headerLabel)
        addSubview(heroesTableview)
        
        
        
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 60),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            headerLabel.heightAnchor.constraint(equalToConstant: 50),
            
            //heroesTableview.topAnchor.constraint(equalTo: headerLabel.topAnchor, constant: 50),
            heroesTableview.topAnchor.constraint(equalTo: headerLabel.bottomAnchor),
            heroesTableview.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            heroesTableview.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            heroesTableview.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            
        ])
        
        
    }
}

