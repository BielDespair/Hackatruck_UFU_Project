//
//  ViewModel.swift
//  aula9
//
//  Created by Student25 on 07/08/23.
//

import SwiftUI
import Foundation

class RequestView: ObservableObject{
    
    @Published var dataLojas: [Lojas] = []
     
    func fetchLojas(){
        guard let url = URL(string: "http://192.168.128.143:1880/lojas") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Lojas].self, from: data)
                
                DispatchQueue.main.async {
                    self?.dataLojas = parsed
                }
            }catch{
                print(error)
            }
        }
        task.resume()
    }
    
    func clearLojasArray(){
        self.dataLojas = []
    }
}
