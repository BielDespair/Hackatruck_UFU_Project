//
//  pedidoComponent.swift
//  Help Construction
//
//  Created by Student07 on 23/08/23.
//

import SwiftUI

struct pedidoComponent: View {
    let loja:Loja
    @State var cor = Color(red: 0.93, green: 0.93, blue: 0.93, opacity: 1)
    let data:String
    var cont:Int = 0
    var body: some View {
        
        ZStack{
            Rectangle()
            .frame(width: 350,height: 100)
            .cornerRadius(50)
            .foregroundColor(cor)
            VStack{
                HStack{
                    AsyncImage(url: URL(string:loja.imagem!)){ image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 90)
                            .cornerRadius(50)
                        
                    } placeholder: {
                        Color.gray
                    }
                    VStack{
                        ZStack{
                            
                            Text("\(loja.nome)")
                                .frame(width: 210,height: 50)
                                .foregroundStyle(.black)
                        }
                        Text("Finalizado \(data)")
                            .frame(width: 210,height: 20)
                            .foregroundStyle(.orange)
                        
                    }
                    Image(systemName: "arrowshape.turn.up.right")
                    
                }
                
            }
//            .frame(width: 350,height: 100)
//            .cornerRadius(50)
//            .foregroundColor(.black)
            //.background(Color(cor))
        }
    }
}

//struct pedidoComponent_Previews: PreviewProvider {
//    static var previews: some View {
//        pedidoComponent(loja: Loja(nome: "Construbem Construtora e aluguel de máquinas", imagem: "https://media.licdn.com/dms/image/C4E03AQGuAv_7-am-ZQ/profile-displayphoto-shrink_800_800/0/1601664659598?e=2147483647&v=beta&t=bi_7ltHrtxASBfMGTwUCEPu5d98xI-xkL_cuTX-2NGs", custo: "$$"), data: String("13/08/2023"))
//    }
//}
