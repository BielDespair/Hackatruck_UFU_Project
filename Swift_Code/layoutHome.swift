//
//  layoutHome.swift
//  Help Construction
//
//  Created by Student07 on 21/08/23.
//

import SwiftUI 

struct layoutHome: View {
    var body: some View {
        TabView {
            testView()
                .tabItem {
                    Label("Inicio", systemImage: "house")
                }
            
            Text("vai ser a tab de Busca")
                .tabItem {
                    
                    Label("Buscar", systemImage: "magnifyingglass")
                }
            
            pedidosListaView()
                .tabItem {
                    
                    
                    Label("Pedidos", systemImage: "list.bullet.clipboard")
                    
                }
            
            Text("Vai ser a tab de perfil")
                .tabItem {
                    
                    Label("Perfil", systemImage: "person.fill")
                    
                }
        }
    }
}


struct layoutHome_Previews: PreviewProvider {
    static var previews: some View {
        layoutHome()
    }
}
