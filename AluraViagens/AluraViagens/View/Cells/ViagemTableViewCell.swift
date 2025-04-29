//
//  ViagemTableViewCell.swift
//  AluraViagens
//
//  Created by Otávio Gomes on 28/04/25.
//

import UIKit

class ViagemTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var backGroundViewCell: UIView!
    
    @IBOutlet weak var viagemImage: UIImageView!
    
    @IBOutlet weak var tituloViagemLabel: UILabel!

    
    @IBOutlet weak var subtituloViagemLabel: UILabel!
    @IBOutlet weak var diariaViagemLabel: UILabel!
    
    @IBOutlet weak var precoViagemLabel: UILabel!
    @IBOutlet weak var precoViagemSemDescontoLabel: UILabel!
    
    
    func configuraCelula(_ viagem: Viagem?) {
        viagemImage.image = UIImage(named: viagem?.asset ?? "")
        tituloViagemLabel.text = viagem?.titulo
        subtituloViagemLabel.text = viagem?.subtitulo
        precoViagemLabel.text = "R$ \(viagem?.preco ?? 0.00)"
        
        let atributoPrecoSemDesconto = NSMutableAttributedString(string: "R$ \(viagem?.precoSemDesconto ?? 0.00)")
        atributoPrecoSemDesconto.addAttribute(NSAttributedString.Key.strikethroughStyle, value: 1, range: NSMakeRange(0, atributoPrecoSemDesconto.length))
        precoViagemSemDescontoLabel.text = atributoPrecoSemDesconto.string
        
        if let numeroDias = viagem?.diaria, let numeroDeHospedes = viagem?.hospedes {
            
            let diarias = numeroDias == 1 ? "dia" : "dias"
            let hospedes = numeroDeHospedes == 1 ? "hospede" : "hospedes"
            
            diariaViagemLabel.text = "\(numeroDias) \(diarias) - \(numeroDeHospedes) \(hospedes)"
        }
        
        DispatchQueue.main.async {
            self.backGroundViewCell.addSombra()
        }
    }
}
