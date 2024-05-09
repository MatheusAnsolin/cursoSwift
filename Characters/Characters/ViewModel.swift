//
//  ViewModel.swift
//  Characters
//
//  Created by Turma01-21 on 09/05/24.
//

import Foundation

class ViewModel : ObservableObject{
    
    //qualquer alteração será automaticamente notificada aos observadores
    @Published var chars : [Character] = []
    
    func fetch(){
        
        guard let url = URL(string: "https://hp-api.onrender.com/api/characters/house/Slytherin")else{return}
            
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Character].self, from: data)
                
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
