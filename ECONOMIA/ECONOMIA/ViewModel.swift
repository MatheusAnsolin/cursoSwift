//
//  ViewModel.swift
//  ECONOMIA
//
//  Created by Turma01-21 on 24/05/24.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var dadosUsuario : [Usuario] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/banco_amigo_cliente" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Usuario].self, from: data)
                
                DispatchQueue.main.async {
                    self?.dadosUsuario = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
    /*
   
    func post(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/banco_amigo_cliente" ) else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = self?.dadosUsuario
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Usuario].self, from: data)
                
                DispatchQueue.main.async {
                    self?.dadosUsuario = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }

*/
