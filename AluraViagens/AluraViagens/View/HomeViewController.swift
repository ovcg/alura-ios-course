//
//  ViewController.swift
//  AluraViagens
//
//  Created by Otávio Gomes on 15/04/25.
//

import UIKit

class HomeViewController: UIViewController {
  
    @IBOutlet var viagensTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        configuraTableView()
        view.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
    
    func configuraTableView() {
        viagensTableView.register(
            UINib(nibName: "ViagemTableViewCell", bundle: nil),
            forCellReuseIdentifier: "ViagemTableViewCell"
        )
        viagensTableView.dataSource = self
        viagensTableView.delegate = self
    }
}

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sessaoDeViagens?[section].numeroDeLinhas ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellViagem = tableView.dequeueReusableCell(withIdentifier: "ViagemTableViewCell") as? ViagemTableViewCell else {
            fatalError("error to create ViagemTableViewCell")
        }
        let viewModel = sessaoDeViagens?[indexPath.section]
        
        switch viewModel?.tipo {
        case .destaques:
            cellViagem.configuraCelula(viewModel?.viagens[indexPath.row])
            return cellViagem
        default:
            return UITableViewCell()
        }
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = Bundle.main.loadNibNamed("TableViewHeader", owner: self, options: nil)?.first as? TableViewHeader
        headerView?.configuraView()
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 300
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 400 : 475
    }
}
