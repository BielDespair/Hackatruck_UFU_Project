//
//  lojaListaView.swift
//  Help Construction
//
//  Created by Student07 on 21/08/23.
//

import SwiftUI



struct lojaListaView: View {
    
    var filtrosLojas = ["Ordenar", "Entrega Grátis", "Equipamentos"]
    var listaLojas: [Lojas]
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.yellow, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack{
                    ScrollView(.horizontal){
                        HStack(spacing:20){
                            ForEach(filtrosLojas, id: \.self){ filtro in
                                Text(filtro)
                                    .padding(5)
                                    .overlay(
                                            RoundedRectangle(cornerRadius: 20)
                                                .stroke(.gray, lineWidth: 1)
                                        )
                                    .padding(5)
                            }
                        }
                    }
                    ScrollView{
                        ForEach(listaLojas, id: \._id){ loja in
                            NavigationLink(destination: lojaView()){
                                HStack{
                                    lojaComponent(loja: loja)
                                        .padding(5)
                                }
                            }
                        }
                    }
                }
            }
            
        }
    }
}

//struct lojaListaView_Previews: PreviewProvider {
//    static var previews: some View {
//        lojaListaView()
//        /*listaLojas: [Loja(nome: "Constsrubem Construtora e aluguel de máquinas", imagem: "https://media.licdn.com/dms/image/C4E03AQGuAv_7-am-ZQ/profile-displayphoto-shrink_800_800/0/1601664659598?e=2147483647&v=beta&t=bi_7ltHrtxASBfMGTwUCEPu5d98xI-xkL_cuTX-2NGs", custo: ""),Loja(nome: "Constsrubem Construtora e aluguel de máquidasdasnas", imagem: "https://media.licdn.com/dms/image/C4E03AQGuAv_7-am-ZQ/profile-displayphoto-shrink_800_800/0/1601664659598?e=2147483647&v=beta&t=bi_7ltHrtxASBfMGTwUCEPu5d98xI-xkL_cuTX-2NGs", custo: ""),Loja(nome: "Construbem Construtora e alugdasdasdasuel de máquinas", imagem: "https://media.licdn.com/dms/image/C4E03AQGuAv_7-am-ZQ/profile-displayphoto-shrink_800_800/0/1601664659598?e=2147483647&v=beta&t=bi_7ltHrtxASBfMGTwUCEPu5d98xI-xkL_cuTX-2NGs", custo: "")]*/
//    }
//}
