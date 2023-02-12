//
//  Voto.swift
//  CarnavalEPVC
//
//  Created by Gustavo on 10/02/2023.
//

import Foundation
import Firebase

class Voto{
    var votacao: Float?
    var turma: String?
    var nome: String?
    var talento: String?
    
    init(votacao: Float, turma: String, nome: String, talento: String) {
        self.nome = nome;
        self.talento = talento;
        self.turma = turma;
        self.votacao = votacao
    }
    
}
