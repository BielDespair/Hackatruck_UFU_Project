//
//  teste2View.swift
//  Help Construction
//
//  Created by Student07 on 22/08/23.
//

import SwiftUI

struct teste2View: View {
    var body: some View {
        
        ZStack{
            VStack{
                Image("Logo")
                    .resizable()
                    .frame(width: 300,height: 200)
                    .offset(y:-100)
            }
            Spacer()
            Text("Bem Vindo")
                .offset(y:50)
                .font(.system(size: 36))
                .bold()
            
        }
    }
}

struct teste2View_Previews: PreviewProvider {
    static var previews: some View {
        teste2View()
    }
}
