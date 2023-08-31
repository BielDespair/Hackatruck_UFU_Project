//
//  ProdutoCard.swift
//  lojaDetalhe
//
//  Created by Student24 on 21/08/23.
//

import SwiftUI

struct ProdutoCard: View {
    
    var produto_details: Produto = Produto(id: 9, nome: "Cimento 50KG Votoran", preco: 32.9, imagem: "produtoIMG");
    
    @Binding var lista_produtos: [Int: Int];
    @State var isPresented: Bool = false;
    
    init(_ produto_details: Produto, _ lista_produtos: Binding<[Int:Int]>) {
        self.produto_details = produto_details;
        _lista_produtos = lista_produtos;
    }

    var body: some View {
        VStack{
            
            Button(action: {
                
                isPresented = true
                if lista_produtos.keys.contains(produto_details.id){
                    lista_produtos[produto_details.id]! += 1;
                } else {
                    lista_produtos[produto_details.id] = 1;
                }
                
                print( lista_produtos[produto_details.id]!)
                
            }){
                Image(systemName: "plus.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 25, height: 25, alignment: .center)
                    .foregroundColor(Color("precoColor"))
                    .zIndex(2)
            }.zIndex(1)
            .offset(x: 36, y:15)
            
            AsyncImage(
                url: URL(string:produto_details.imagem),
                content: { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 102, height: 100, alignment: .center)
                        .cornerRadius(20)
                        .offset(x: 0, y: -20)
                },
                placeholder: {
                    ProgressView()
                }
            )
            
            Text(produto_details.nome)
                .frame(width: 110, height: 43, alignment: .center)
                .fontWeight(.medium)
                .offset(x: 0, y: -20)

            Text("R$ \(produto_details.preco, specifier: "%.2f")")
                .fontWeight(.bold)
                .foregroundColor(Color("precoColor"))
                .offset(x: 0, y: -15)
        }
            .frame(width: 115, height: 200, alignment: .center)
            .background(Color("grayProduto"))
            .cornerRadius(20)
    }
}

struct ProdutoCard_Previews: PreviewProvider {

    static var previews: some View {
        
        ProdutoCard(Produto(id: 0, nome: "Cimento 50KG Votoran", preco: 32.9, imagem: "produtoIMG"), .constant([0:0]))
    }
}
