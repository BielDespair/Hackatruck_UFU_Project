//
//  lojaModel.swift
//  Help Construction
//
//  Created by Student07 on 18/08/23.
//

import Foundation
import SwiftUI

//struct Produto: Codable, Hashable {
//
//    let nome: String
//    let valor: Float
//    let imagem: String?
//}
//
struct Loja: Codable, Hashable {
    let nome: String
    let imagem: String?
    let custo: String?
}


struct Lojas: Decodable{
    let _id: String
    let _rev: String
    let nome: String
    let preco: String
    let imagem: String
}
extension Image {
    init?(imagem: String) {
        guard let data = Data(base64Encoded: imagem) else { return nil }
        guard let uiImage = UIImage(data: data) else { return nil }
        self = Image(uiImage: uiImage)
    }
}
