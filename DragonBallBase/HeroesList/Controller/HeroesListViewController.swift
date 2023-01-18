//
//  HeroesListViewController.swift
//  DragonBallBase
//
//  Created by David Robles Lopez on 18/1/23.
//

import Foundation
import UIKit

class HeroesListViewController: UIViewController {
    
    var mainView: HeroesListView { self.view as! HeroesListView }  // enlazamos este viewController con la vista que hemos creado nosotros en view. el self.view es el view que todo controller tiene
    var heroes: [HeroModel] = []
    
    var viewModel: HeroListViewModel?                                           // se declara
    
    var tableViewDataSource: HeroesListTableViewDataSource?
    var tableViewDelegate: HeroesListTableViewDelegate?
    
    override func loadView() {                                                       // es la que tu llamas para que se vea la app, que es la clase que tu has creado
        view = HeroesListView()
        
        tableViewDataSource = HeroesListTableViewDataSource(tableView: mainView.heroesTableview)
        mainView.heroesTableview.dataSource = tableViewDataSource
        
        tableViewDelegate =  HeroesListTableViewDelegate()
        mainView.heroesTableview.delegate = tableViewDelegate
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = HeroListViewModel()                                         // se crea
        setUpUpdateUI()
        getData()
        setUpTableDelegate()
    }
    func setUpUpdateUI() {
        // PREPARANDOME PARA RECIBIR LOS DATOS QUE VIENEN DEL VIEWMODEL
        viewModel?.updateUI = { [weak self] heroes in
            self?.heroes = heroes
            self?.tableViewDataSource?.heroes = heroes                          // con esto actualiza la tabla, xk ya tiene el reloadData
        }
    }
    
    
    func getData() {
            // CALL API TO GET HERO LIST
            viewModel?.fetchData()    // esto viene del viewModel de MVVM
        }
    
    
    func setUpTableDelegate() {
        tableViewDelegate?.didTapOnCell = { [weak self] index in
            
            guard let datasource = self?.tableViewDataSource else {
                return
            }
            
            // Get the hero in the hero likst according to the position
            let hero = datasource.heroes[index]
            
            // prepare the viewcontroller that I want to present
            let heroDetailViewController = HeroesDetailViewController(heroeDetailModel: hero)
            
            // present the controller to show the details
            
            self?.present(heroDetailViewController, animated: true)         // es como un navigationController, pero se ve de arriba abajo
        }
    }
        
}
    


