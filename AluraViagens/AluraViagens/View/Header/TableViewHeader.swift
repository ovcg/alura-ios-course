//
//  TableViewHeader.swift
//  AluraViagens
//
//  Created by Otávio Gomes on 25/04/25.
//

import UIKit

class TableViewHeader: UIView {
    
    @IBOutlet var headerView: UIView!
    
    @IBOutlet var bannerImageView: UIImageView!
    @IBOutlet var banner: UIView!
    @IBOutlet var tituloLabel: UILabel!
    
    func configuraView() {
        banner.layer.cornerRadius = 10
        banner.layer.masksToBounds = true
        headerView.layer.cornerRadius = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.phone ? 500 : 200
        headerView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]
    }
}
