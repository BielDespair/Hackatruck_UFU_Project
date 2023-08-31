//
//  pedidoDetailView.swift
//  Help Construction
//
//  Created by Student24 on 24/08/23.
//

import SwiftUI

struct pedidoDetailView: View {
    
    @State var cor = Color(red: 0.93, green: 0.93, blue: 0.93, opacity: 1)
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.yellow, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                
                Text("Detalhes do Pedido")
                    .font(.title)
                    .bold()
                
                ZStack{
                    
                    Rectangle()
                        .frame(width: 350,height: 100)
                        .cornerRadius(50)
                        .foregroundColor(cor)
                    VStack{
                        HStack{
                            AsyncImage(url: URL(string:"https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRmrYRy__ctWhtMrtpjl8lzZbNP6WzPIsXAGPetr6CEbVKp7rCt")){ image in
                                image
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 90, height: 90)
                                    .cornerRadius(50)
                                    .offset(x: 5, y: 0)
                                
                            } placeholder: {
                                Color.gray
                            }
                            VStack{
                                ZStack{
                                    
                                    Text("Morada Nova Materiais de Construção")
                                        .frame(width: 210,height: 50)
                                        .foregroundStyle(.black)
                                        .bold()
                                }
                                
                            }
                            
                            Text("$$$")
                                .offset(x: -70, y: 30)
                                .fontWeight(.medium)
                        }
                    }
                }
                
                HStack{
                    AsyncImage(
                        url: URL(string:"https://cdn.leroymerlin.com.br/products/cimento_cp_ii_f_32_todas_as_obras_50kg_votoran_89368944_ee1c_600x600.jpg"),
                        content: { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75, alignment: .center)
                                .clipShape(Circle())
                                .offset(x: 0, y: 0)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                    VStack{
                        Text("Cimento 50KG Votoran")
                            .fontWeight(.medium)
                            .padding(.bottom, 10)
                        
                        
                        Text("R$ 32,90  x3")
                            .offset(x:-20)
                    }.frame(width: 150, height: 75, alignment: .center)
                        .offset(x:-5)
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        
                        Text("R$ 98,7")
                            .font(.system(size: 15))
                        
                    }
                    .frame(width: 60, height: 60, alignment: .center)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    .background(.gray)
                    .cornerRadius(20)
                    .offset(x: 7, y: 0)
                    
                    
                    
                }.frame(width: 340, height: 85, alignment: .center)
                    .background(Color("grayProduto"))
                    .cornerRadius(20)
                //             Produto(id: 7, nome: "Bloco de Concreto", preco: 1.59, imagem: "https://ducacec.com.br/product_images/h/911/BVV19X19X39__32427_std.JPG"
                HStack{
                    AsyncImage(
                        url: URL(string:"https://ducacec.com.br/product_images/h/911/BVV19X19X39__32427_std.JPG"),
                        content: { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .frame(width: 75, height: 75, alignment: .center)
                                .clipShape(Circle())
                                .offset(x: 0, y: 0)
                        },
                        placeholder: {
                            ProgressView()
                        }
                    )
                    
                    VStack{
                        Text("Bloco de Concreto")
                            .fontWeight(.medium)
                            .padding(.bottom, 10)
                        
                        
                        Text("R$  1,59  x2")
                            .offset(x:-20)
                    }.frame(width: 150, height: 75, alignment: .center)
                        .offset(x:-5)
                    
                    ZStack{
                        
                        Rectangle()
                            .foregroundColor(.white)
                            .cornerRadius(20)
                        
                        Text("R$ 3,18")
                            .font(.system(size: 15))
                        
                    }
                    .frame(width: 60, height: 60, alignment: .center)
                    .padding(.top, 5)
                    .padding(.bottom, 5)
                    .padding(.leading, 5)
                    .padding(.trailing, 5)
                    .background(.gray)
                    .cornerRadius(20)
                    .offset(x: 7, y: 0)
                    
                    
                    
                }.frame(width: 340, height: 85, alignment: .center)
                    .background(Color("grayProduto"))
                    .cornerRadius(20)
                
                
                
                Spacer()
                
                HStack{
                    Text("Finalizado")
                        .font(.title3)
                        .frame(width: 110, height: 20, alignment: .leading)
                    
                    Text("13/08/2023")
                        .font(.title3)
                        .frame(width: 110, height: 20, alignment: .trailing)
                }.padding(.bottom, 3)
                
                HStack{
                    Text("Entregue")
                        .font(.title3)
                        .frame(width: 110, height: 20, alignment: .leading)
                    
                    Text("14/08/2023")
                        .font(.title3)
                        .frame(width: 110, height: 20, alignment: .trailing)
                }.padding(.bottom, 10)
                
                HStack{
                    Text("Valor Total")
                        .font(.title3)
                        .frame(width: 110, height: 20, alignment: .leading)
                    
                    Text("R$ 101.88")
                        .font(.title3)
                        .frame(width: 105, height: 20, alignment: .trailing)
                    
                }.fontWeight(.heavy)
                    .font(.title3)
                    .padding(.bottom, 35)
                
                VStack{
                    Text("Nota Fiscal Disponível")
                        .fontWeight(.heavy)
                        .font(.title3)
                }.padding(13)
                    .background(.blue)
                    .clipShape(Capsule())
                    .padding(.bottom, 15    )
            }
        }
    }
}

struct pedidoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        pedidoDetailView()
    }
}

