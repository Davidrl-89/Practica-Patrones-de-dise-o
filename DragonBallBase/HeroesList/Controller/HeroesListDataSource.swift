//
//  HeroesListDataSource.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class HeroesListTableViewDataSource: NSObject,  UITableViewDataSource {
    
    let tableView: UITableView
    
    //var heroes: [HeroModel] = []
    var heroes: [HeroModel] = [] {
        didSet {
            DispatchQueue.main.async {              // te aseguras que se vea en la cola correcta
                self.tableView.reloadData()
            }
        }
    }
    
    init(tableView: UITableView, heroes: [HeroModel] = [] ) {
        self.heroes = heroes
        self.tableView = tableView
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        heroes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "HeroesListViewCell", for: indexPath) as! HeroesListViewCell
        
        let hero = heroes[indexPath.row]
        
        //cell.textLabel?.text = hero.name
        cell.configure(hero)
        
        return cell
    }
}
