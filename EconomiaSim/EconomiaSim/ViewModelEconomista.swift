//
//  ViewModel.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 23/05/24.
//

import Foundation

class ViewModel : ObservableObject {
    @Published var gasto : [GastoPorCategoria] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/banco_amigo_cliente" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([GastoPorCategoria].self, from: data)
                
                DispatchQueue.main.async {
                    self?.gasto = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
   /*
    func post(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/banco_amigo_cliente" ) else{
            return
        }
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = self? //definavariavel
        {
        
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([HaPo].self, from: data)
                
                DispatchQueue.main.async {
                    self?.chars = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
*/
