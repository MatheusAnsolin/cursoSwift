//
//  DetailView.swift
//  Maps
//
//  Created by Turma01-21 on 08/05/24.
//

import SwiftUI
import MapKit

struct DetailView: View {
    
    @State var localDetail : Location
    
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(.gray).ignoresSafeArea().opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
            VStack{
                
                Text(localDetail.name)
                AsyncImage(url: URL(string: localDetail.flag)){image in
                    image.image?.resizable().padding().frame(height: 250)
                }
                
                Text(localDetail.description).padding()
            }
        }
        
    }
}


#Preview {
    DetailView(localDetail: Location(name: "Finland",
                                     coordinate: CLLocationCoordinate2D(latitude: 64.9146659, longitude: 26.0672554),
                                     flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Flag_of_Finland.png/1200px-Flag_of_Finland.png",
                                     description: "Finland, country located in northern Europe. Finland is one of the world's most northern and geographically remote countries and is subject to a severe climate. Nearly two-thirds of Finland is blanketed by thick woodlands, making it the most densely forested country in Europe."))
}
