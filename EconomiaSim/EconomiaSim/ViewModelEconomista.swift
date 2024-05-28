//
//  ViewModel.swift
//  EconomiaSim
//
//  Created by Turma01-21 on 23/05/24.
//

import Foundation

class ViewModelEconomista : ObservableObject {
    @Published var dadosEconomista : [Economista] = []
    
    func fetch(){
        guard let url = URL(string: "http://127.0.0.1:1880/banco_amigo_economista" ) else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Economista].self, from: data)
                
                DispatchQueue.main.async {
                    self?.dadosEconomista = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
    
   
//func post(_ obj: Economista){
//        
//        guard let url = URL(string: "http://127.0.0.1:1880/banco_amigo_cliente" ) else{
//            return
//        }
//        var request = URLRequest(url: url)
//        request.httpMethod = "POST"
//        request.httpBody = dadosEconomista.self?
//        
//        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
//                guard let data = data, error == nil else{
//                return
//            }
//            
//            do {
//                let parsed = try JSONDecoder().decode([Economista].self, from: data)
//                
//                DispatchQueue.main.async {
//                    self?.dadosEconomista = parsed
//                    //enconde do obj
//                }
//            }catch{
//                print(error)
//            }
//        }
//        
//        task.resume()
//    }


