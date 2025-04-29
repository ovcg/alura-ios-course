//
//  ViagemDestaqueViewModel.swift
//  AluraViagens
//
//  Created by Otávio Gomes on 28/04/25.
//

class ViagemDestaqueViewModel: ViagemViewModel {
   
    var tituloSessao: String {
        return "Destaques"
    }
    
    var tipo: ViagemViewModelType {
        return .destaques
    }
    
    var viagens: [Viagem]
    
    var numeroDeLinhas: Int {
        return viagens.count
    }
    
    init(viagens: [Viagem]) {
        self.viagens = viagens
    }
}
