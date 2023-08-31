//
//  ProdutoModel.swift
//  Help Construction
//
//  Created by Student07 on 24/08/23.
//

import Foundation

struct Produto: Identifiable{
    var id: Int
    var nome: String
    var preco: Float
    var imagem: String
    var quantidade: Int?
    var preco_final: Float?
}
