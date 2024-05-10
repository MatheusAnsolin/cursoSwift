//
//  ContentView.swift
//  Maps
//
//  Created by Turma01-21 on 08/05/24.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var showingSheet = false
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude:-27.093096, longitude: -52.663913),
            span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.2))
    )
    var locais = [
        Location(name: "Portugal",
                 coordinate: CLLocationCoordinate2D(latitude:38.718719,longitude: -9.136852),
                 flag: "data:image/png;base64,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",
                 description: "Portugal é um país no sul da Europa, localizado na Península Ibérica, que faz fronteira com a Espanha. Sua localização às margens do Oceano Atlântico influenciou muitos aspectos da cultura do país: o bacalhau salgado e as sardinhas assadas são pratos típicos nacionais, as praias do Algarve são destinos muito procurados e boa parte da arquitetura do país data dos séculos XVI a XIX, quando Portugal era um poderoso império marítimo. ― Google"),
        Location(name: "Finland",
                 coordinate: CLLocationCoordinate2D(latitude: 64.9146659, longitude: 26.0672554),
                 flag:"https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Flag_of_Finland.png/1200px-Flag_of_Finland.png",
                 description: "Finland, country located in northern Europe. Finland is one of the world's most northern and geographically remote countries and is subject to a severe climate. Nearly two-thirds of Finland is blanketed by thick woodlands, making it the most densely forested country in Europe.")
        /* ,
         Location(name: <#T##String#>, coordinate: <#T##CLLocationCoordinate2D#>, flag: <#T##String#>, description: <#T##String#>),
         Location(name: <#T##String#>, coordinate: <#T##CLLocationCoordinate2D#>, flag:<#T##String#>, description: <#T##String#>) */
    ]
    
    @State private var cabecalho = "Cidade"
    
    var body: some View {
        ZStack{
            Map(position: $position){
                ForEach(locais){local in
                    Annotation(local.name, coordinate: local.coordinate,
                               anchor: UnitPoint.center,
                               content: { Image(systemName: "info.bubble.fill.rtl")})
                }}.ignoresSafeArea()
                .onTapGesture {
                    showingSheet.toggle()
                }.sheet(isPresented: $showingSheet) {
                    DetailView(localDetail : locais[0])
                }
            
            VStack{
                ZStack{
                    Rectangle().frame(width: 400).frame(height: 175).ignoresSafeArea().opacity(0.6).foregroundColor(/*@START_MENU_TOKEN@*/.gray/*@END_MENU_TOKEN@*/)
                    VStack{
                        Text("World Map").font(.title)
                        Text(cabecalho)
                    }
                }
                Spacer()
                Spacer()
                HStack{
                    ForEach(locais){local in
                        
                        AsyncImage(url: URL(string: local.flag)) { image in
                            image
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            
                        } placeholder: {
                            Color.green
                        }.padding(5)
                            .frame(width: 60, height: 50)
                            .onTapGesture {
                                
                                position = MapCameraPosition.region(MKCoordinateRegion(
                                    center: local.coordinate,
                                    span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)))
                                cabecalho = local.name
                                
                                
                            }
                        /*ForEach(locais){local in
                         Image(local.flag).resizable().frame(height: 75).frame(width: 100).onTapGesture {
                         $position.region(MKCoordinateRegion.center) = local.coordinate
                         }*/
                        
                    }
                    
                    
                }
            }
        }
        }
    }
    

#Preview {
    ContentView()
}
