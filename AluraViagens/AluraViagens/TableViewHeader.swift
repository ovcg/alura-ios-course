//
//  TableViewHeader.swift
//  AluraViagens
//
//  Created by Otávio Gomes on 25/04/25.
//

import UIKit

class TableViewHeader: UIView {
    
    
    @IBOutlet var bannerImageView: UIImageView!
    @IBOutlet var headerView: UIView!
    
    @IBOutlet var tituloLabel: UILabel!
    
    func configuraView() {
        headerView.backgroundColor = UIColor(red: 30.0/255.0, green: 59.0/255.0, blue: 119.0/255.0, alpha: 1)
    }
}
