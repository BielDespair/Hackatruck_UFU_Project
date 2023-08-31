//
//  ContentView.swift
//  lojaDetalhe
//
//  Created by Student24 on 21/08/23.
//

import SwiftUI

struct lojaView: View {
    
    @State var estaAberta: Bool = false;
    @State var barraDeBusca: String = "";
    
    @State var carrinho: [Int: Int] = [:];
    
    var produtosArray: [Produto] = [
        Produto(id: 1, nome: "Cimento 50KG Votoran", preco: 32.9, imagem: "https://cdn.leroymerlin.com.br/products/cimento_cp_ii_f_32_todas_as_obras_50kg_votoran_89368944_ee1c_600x600.jpg"),
        Produto(id: 2, nome: "Areia", preco: 32.9, imagem: "data:image/jpeg;base64,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"),
        Produto(id: 3, nome: "Pedra Brita", preco: 32.9, imagem: "https://images.tcdn.com.br/img/img_prod/999130/pedra_brita_numero_1_metro_cubico_8091_1_5eb75e4d37e81285fb55c15ff76dc29e.jpeg"),
        Produto(id: 4, nome: "Tijolo", preco: 2.80, imagem: "https://s3-sa-east-1.amazonaws.com/files-sc.sigecloud.com.br/Producao/d44929e6-cc78-42cf-a7c0-268911100c2e/ImagensProdutos/6265da09a79fcb125cef342a_600x600.jpeg"),
        Produto(id: 5, nome: "Argamassa AC3", preco: 29.79, imagem: "https://cdn.awsli.com.br/600x1000/466/466641/produto/147230869/1dee02fc75.jpg"),
        Produto(id: 6, nome: "Tinta Suvinil Fosco Completo", preco: 89.50, imagem: "https://images.tcdn.com.br/img/img_prod/622407/tinta_acrilica_premium_fosco_completo_18l_suvinil_4029_1_a20c908c2f900239b3e79fec44c324e8.jpg"),
        Produto(id: 7, nome: "Bloco de Concreto", preco: 1.59, imagem: "https://ducacec.com.br/product_images/h/911/BVV19X19X39__32427_std.JPG"),
        Produto(id: 8, nome: "Armação de Ferro", preco: 24.69, imagem: "https://www.grauti.com.br/imagens/thumbs/armacao-de-ferro.jpg"),
        Produto(id: 9, nome: "Carrinho de Mão", preco: 199.99, imagem: "https://d31dtgi5yshghi.cloudfront.net/Custom/Content/Products/86/79/8679_carrinho-de-mao-esfera-vermelho-117048_m1_637721539030898268.jpg")
    ]
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())];
    
    var body: some View {
        
        VStack {
            
            
            VStack{
                ScrollView{
                Spacer(minLength: 25)
                    AsyncImage(
                        url: URL(string:"https://www.aboutcivil.org/sites/default/files/2017-10/bricks-construction.jpg"),
                        content: { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .clipped()
                                .offset(x: 0, y: 50)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                HStack{
                    VStack{
                        
                        if(estaAberta){
                            Text("loja aberta")
                                .fontWeight(.medium)
                                .font(.system(size:20))
                                .frame(width: 130, height: 20, alignment: .center)
                                .foregroundColor(Color("appleGreen"))
                                .bold()
                                
                        } else {
                            Text("loja fechada")
                                .fontWeight(.medium)
                                .font(.system(size:20))
                                .frame(width: 130, height: 30, alignment: .center)
                                .foregroundColor(Color("appleRed"))
                                .bold()
                                .background(.white)
                                .clipShape(Capsule())
                                .offset(x:10)
                        }
                        
                        AsyncImage(
                            url: URL(string:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRmrYRy__ctWhtMrtpjl8lzZbNP6WzPIsXAGPetr6CEbVKp7rCt"),
                            content: { image in
                                image
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100, alignment: .center)
                                    .clipShape(Circle())
                            },
                            placeholder: {
                                ProgressView()
                            }
                        )
                        
                    }.frame(width: 130, height: .infinity, alignment: .center)
                    
                    Text("Morada nova materiais de construcao")
                        .fontWeight(.medium)
                        .font(.system(size:22))
                        .frame(width: 240, height: .infinity, alignment: .center)
                        .offset(x: -3, y: 10)
                }.offset(x: 0, y: 0)
                
                
                HStack{
                    Text("🔍")
                        .padding(.leading, 15)
                    TextField("Buscar", text: $barraDeBusca)
                        .padding(.leading, 4)
                }
                .frame(width: 250, height: 35, alignment: .center)
                .background(Color("grayProduto"))
                .clipShape(Capsule())
                .offset(x: 0, y: -7)
                
                //ScrollView{
                    
                    LazyVGrid(columns: columns) {
                        ForEach(produtosArray.filter { produto in
                            barraDeBusca.isEmpty || produto.nome.localizedCaseInsensitiveContains(barraDeBusca)
                        }) { produto in
                            ProdutoCard(produto, $carrinho)
                        }
                    }
                }
            }
            .background(.white)
            .padding(.bottom, 40)
            .cornerRadius(40)
            .padding(.bottom, -240)
            .offset(x: 0, y: -200)
        }
    }
}

struct lojaView_Previews: PreviewProvider {
    static var previews: some View {
        lojaView()
    }
}
