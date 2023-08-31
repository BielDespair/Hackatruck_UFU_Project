//
//  pedidosListaView.swift
//  Help Construction
//
//  Created by Student07 on 23/08/23.
//

import SwiftUI

struct pedidosListaView: View {
    
    var listaLojas: [Loja] = [Loja(nome: "Construbem Construtora e aluguel de máquinas", imagem: "https://media.licdn.com/dms/image/C4E03AQGuAv_7-am-ZQ/profile-displayphoto-shrink_800_800/0/1601664659598?e=2147483647&v=beta&t=bi_7ltHrtxASBfMGTwUCEPu5d98xI-xkL_cuTX-2NGs", custo: ""),Loja(nome: "UberCom Construção", imagem: "data:image/png;base64,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", custo: ""),Loja(nome: "ME Materiais de Construção", imagem: "https://s3.amazonaws.com/images.guiafacil.com/logomarcas/e23cbf28-9e0d-4ded-acd7-5582c93c9a1f-ME%20Materiais%20para%20Constru%C3%A7%C3%A3o.jpg", custo: "")]
    
    
    @State var barraDeBusca:String = ""
    var datas = ["13/08/2023", "25/06/2023", "12/06/2023"]
    var i = 0
    var body: some View {
        
        NavigationStack{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [.yellow, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack{
                    Text("Meus Pedidos")
                        .fontWeight(.black)
                        .font(.system(size: 30))
                        .padding()
                    HStack(spacing:20){
                        Text("Histórico                                            ")
                            .font(.system(size: 25))
                        
                    }
                    HStack{
                        Text("🔍")
                            .padding(.leading, 2)
                        TextField("Buscar", text: $barraDeBusca)
                            .padding(.leading, 0)
                    }
                    .frame(width: 300, height: 35)
                    .background(Color.white.opacity(0.5))
                    .clipShape(Capsule())
                    .padding(.leading, -60)
                    
                    ScrollView{
                        ForEach(listaLojas, id: \.self){ loja in
                            NavigationLink(destination: pedidoDetailView()){
                                HStack{
                                    pedidoComponent(loja: loja,data: datas[i])
                                        .padding(5)
                                }
                            }
//                            i = i + 1
                        }
                    }
                }
            }
            
        }
    }
}

struct pedidosListaView_Previews: PreviewProvider {
    static var previews: some View {
        pedidosListaView()
    }
}
