//
//  HeroesListViewDelegate.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class HeroesListTableViewDelegate: NSObject, UITableViewDelegate {
    
    var didTapOnCell: ((Int) -> Void)?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {     // para cuando tocas la celda hace algo
        // When tapping on a specific cell
        // Open another view controller to show the hero details
        
        didTapOnCell?(indexPath.row)
    }
    
    
}

