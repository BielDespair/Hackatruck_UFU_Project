//
//  testView.swift
//  Help Construction
//
//  Created by Student07 on 21/08/23.
//

import SwiftUI

struct testView: View {
    
    
    @State private var didTap:Bool = false
    @State var corOP = Color(.black)
    @StateObject var data = RequestView()
    @State var vetorOp = ["Home", "Lojas", "Prestadores", "Máquinas"]
//    @State var tela : any View = lojaListaView(listaLojas: data.dataLojas )
    @State var tela = AnyView(teste2View())
    func trocaCorOP(corNova:Color){
        corOP = corNova
    }
    
    func trocaTelas(_ textoBotao : String){
        switch (textoBotao){
            
            case "Home":
                tela = AnyView(teste2View())
            break;
            
            case "Lojas":
            tela = AnyView(lojaListaView(listaLojas: data.dataLojas))
            break;
            
            case "Prestadores":
                tela = AnyView(prestadorView())
            break;
            
            case "Máquinas":
                tela = AnyView(teste2View())
            break;
            
            default:
            tela = AnyView(lojaListaView(listaLojas: data.dataLojas))
            
        }
        
        
    }
    
   
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [.yellow, .yellow, .white]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack{
                HStack(spacing: 260){
                    Image("Logo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50, height: 30)
                    
                    
                    Image(systemName:"gearshape.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 18){
                        Text("")
                        ForEach(vetorOp, id: \.self) { op in
                            Button("\(op)"){
                                trocaTelas(op)
                                //trocaCorOP(corNova: .orange)
                            }
                            .foregroundStyle(didTap ? Color.orange : Color.black)
                           // trocaCorOP(corNova: .black)
                                
                            
                        }
                    }
                }.padding()
                Spacer()
               // teste2View()
                AnyView(tela)
                Spacer()
            }.onAppear(){
                data.fetchLojas()
            }
        }
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
