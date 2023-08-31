//
//  PerfilPrestador.swift
//  HelpConstructions
//
//  Created by Student08 on 22/08/23.
//

import SwiftUI

struct PerfilPrestador: View {
    var prestador: ProfilePrestador
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.yellow, .white, .white, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            ScrollView {
                VStack {
                    VStack {
                        AsyncImage(url: URL(string: prestador.foto)){ image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 220, height: 220)
                                .cornerRadius(80)
                                .clipped()
                                
                        } placeholder: {
                            ZStack {
                                Circle().foregroundColor(.white)
                                    .frame(width: 220, height: 220)
                                Image("prestadorPadrao")
                                    .resizable()
                                    .scaledToFill()
                                    .padding(.top, 30.0)
                                    .cornerRadius(500)
                                    .frame(width: 220, height: 220)
                            }
                        }
                        if (prestador.renomado) {
                            Image("renomado")
                                .resizable()
                                .frame(width: 75, height: 75)
                                .offset(y: -50)
                                .padding(.bottom, -75)
                        }
                    }
                    Text(prestador.nome)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    HStack(spacing: 35.0) {
                        VStack {
                            Text("Avaliação")
                                .fontWeight(.light)
                            HStack(spacing: 0.0) {
                                Text(prestador.avaliacao)
                                Image(systemName: "star.fill").foregroundColor(Color("golden"))
                            }
                        }
                        VStack {
                            Text("Serviços Prestados")
                                .fontWeight(.light)
                            Text(prestador.servicos)
                        }
                        VStack {
                            Text("Atuando a")
                                .fontWeight(.light)
                            Text("\(prestador.tempo) anos")
                        }
                    }
                    HStack {
                        Text("Cargos selecionados:")
                            .fontWeight(.semibold)
                        ScrollView(.horizontal) {
                            HStack(spacing: 5.0) {
                                ForEach(prestador.cargos){cargo in
                                    ZStack {
                                        Rectangle()
                                            .foregroundColor(.teal)
                                            .cornerRadius(10)
                                            .frame(height: 20)
                                        HStack(spacing: 0.0) {
                                            Image(systemName: cargo.foto)
                                            Text(cargo.nome)
                                        }
                                    }
                                }
                            }
                        }
                    }.padding(.leading, 5.0)
                    HStack {
                        Text("Descrição")
                            .font(.title2)
                            .fontWeight(.semibold)
                            .padding(.leading, 5.0)
                        Spacer()
                    }
                    Text(prestador.descricao)
                    ZStack {
                        Rectangle()
                            .frame(width: 226, height: 51)
                            .foregroundColor(Color(.black))
                            .cornerRadius(50)
                        Rectangle()
                            .frame(width: 225, height: 50)
                            .foregroundColor(Color(.yellow))
                            .cornerRadius(50)
                        HStack {
                            Image(systemName: "wrench.and.screwdriver")
                            Text("Contratar Prestador")
                                .font(.headline)
                                .fontWeight(.bold)
                            
                        }
                    }
                    ZStack {
                        Rectangle()
                            .frame(height: 1)
                            .foregroundColor(.gray)
                        Image(systemName: "text.bubble.fill.rtl")
                            .resizable()
                            .frame(width: 45, height: 45)
                    }
                    VStack {
                        ForEach(prestador.resenhas) {resenha in
                            ZStack {
                                Rectangle()
                                    .foregroundColor(.gray)
                                    .frame(width: 352, height: 127)
                                    .cornerRadius(50)
                                Rectangle()
                                    .foregroundColor(.white)
                                    .frame(width: 350, height: 125)
                                    .cornerRadius(50)
                                HStack {
                                    AsyncImage(url: URL(string: resenha.foto)){ image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 90, height: 90)
                                            .cornerRadius(80)
                                            .clipped()
                                            .padding(.horizontal, 5.0)
                                            
                                    } placeholder: {
                                        ZStack {
                                            Circle().foregroundColor(.white)
                                                .frame(width: 220, height: 220)
                                            Image("prestadorPadrao")
                                                .resizable()
                                                .scaledToFill()
                                                .padding(.top, 30.0)
                                                .cornerRadius(500)
                                                .frame(width: 220, height: 220)
                                        }
                                    }
                                    VStack {
                                        HStack(spacing: -2.0) {
                                            ForEach(resenha.estrelas) {estrela in
                                                Image(systemName: "star.fill")
                                                    .foregroundColor(Color(estrela.color))
                                            }
                                        }
                                        Text(resenha.resenha)
                                            .lineLimit(3)
                                            .frame(width: 200)
                                    }
                                    
                                    
                                }
                                .offset(x: /*@START_MENU_TOKEN@*/-15.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                            }
                            
                        }
                    }

                }
            }
            

        }
        Spacer()
        
    }
}
struct PerfilPrestador_Previews: PreviewProvider {
    static var previews: some View {
        PerfilPrestador(prestador: ProfilePrestador(
            id: 2,
            foto: "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=1200g",
//            foto: "https://media.licdn.com/dms/image/C4E03AQF0brD7FVcLlA/profile-displayphoto-shrink_800_800/0/1516810976191?e=2147483647&v=beta&t=inCD4BCC4Ik0Jd8wA_wQ4B6IDzGIroT-G-sPjp5rcAY",
            nome: "Thiago",
            descricao: "Servente de pedreiro, serviços em geral, busco serviços em residencias",
            cargos: [cargos.eletricista, cargos.ar
                    ],
            avaliacao: "4.9",
            estrelas: avaliacao.cincoEstrelas,
            renomado: true, tempo: "3", servicos: "257", resenhas: [carla,ana, rafael]))
    }
}
