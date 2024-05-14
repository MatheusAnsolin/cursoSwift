
import Foundation

class ViewModel : ObservableObject{
    
    //qualquer alteração será automaticamente notificada aos observadores
    @Published var parks : [Estacionamento] = []
    
    func fetch(){
        
        guard let url = URL(string: "http://127.0.0.1:1880/matheusp/readAll")else{return}
            
        let task = URLSession.shared.dataTask(with: url){ [weak self] data, _, error in
                guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Estacionamento].self, from: data)
                
                DispatchQueue.main.async {
                    self?.parks = parsed
                }
            }catch{
                print(error)
            }
        }
            
            task.resume()
        }
    }
