//
//  AzulView.swift
//  tabView&Navigation
//
//  Created by Turma01-21 on 06/05/24.
//

import SwiftUI

struct AzulView: View {
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.top)
            Circle().frame(width: 350)
            VStack{
                Image(systemName:"paintbrush.pointed")
                    .resizable()
                    .frame(width: 250)
                    .frame(height: 250)
                    .foregroundColor(.blue)
                
            }
        }
    }
}
    

#Preview {
    AzulView()
}
