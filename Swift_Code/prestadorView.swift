//
//  ContentView.swift
//  HelpConstructions
//
//  Created by Student08 on 21/08/23.
//

import SwiftUI

struct prestadorView: View {
    let prestador = prestadores[0]
    var body: some View {
NavigationStack {
    ZStack {
        LinearGradient(gradient: Gradient(colors: [.yellow, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
        ScrollView {
            VStack {
                ForEach(prestadores){prestador in
                    NavigationLink(destination: PerfilPrestador(prestador: prestador), label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.white)
                                .frame(width: 350, height: 150)
                                .cornerRadius(35)
                            HStack {
                                VStack {
                                    AsyncImage(url: URL(string: prestador.foto)){ image in
                                        image
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 90, height: 90)
                                            .cornerRadius(35)
                                    } placeholder: {
                                        Image("prestadorPadrao")
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 90, height: 90)
                                            .cornerRadius(35)
                                            .offset(y: 4)
                                            .padding(.bottom, -15)
                                        
                                    }
                                    HStack(spacing: -7.0) {
                                        ForEach(prestador.estrelas) {estrela in
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color(estrela.color))
                                            
                                            
                                        }
                                        
                                    }
                                    Text("Avaliação")
                                        .fontWeight(.ultraLight)
                                }
                                VStack() {
                                    Text(prestador.nome)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .multilineTextAlignment(.leading)
                                        .offset(x: /*@START_MENU_TOKEN@*/-60.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                                    Text(prestador.descricao)
                                        .multilineTextAlignment(.leading)
                                        .lineLimit(3)
                                        .frame(width: 200)
                                }
                                .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/-15.0/*@END_MENU_TOKEN@*/)
                            }
                            .offset(x: /*@START_MENU_TOKEN@*/-15.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
                        }
                        
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                }
            }
        }
    }

            
//            HStack{
//                VStack(spacing: -20.0) {
//                    AsyncImage(url: URL(string:prestador.foto)){ image in
//                        image
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 90, height: 90)
//                            .cornerRadius(50)
//
//                    } placeholder: {
//                        Image("prestadorPadrao")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 90, height: 90)
//                            .cornerRadius(50)
//                    }
//                    HStack {
//                        ForEach(prestadores) {
//                            prestador in
//                        }
//                    }
//                }
//                VStack{
//                    ZStack{
//                        Text("\(prestador.nome)")
//                            .frame(width: 240,height: 90)
//
//                    }
//                }
//            }
        }
    }
}

struct prestadorView_Previews: PreviewProvider {
    static var previews: some View {
        prestadorView()
    }
}
