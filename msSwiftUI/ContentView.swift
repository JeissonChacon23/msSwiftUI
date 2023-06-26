//
//  ContentView.swift
//  msSwiftUI
//
//  Created by Jeisson Chacón on 6/24/23.
//

import SwiftUI

struct ContentView: View {
    let name = ["Jeisson Chacón", "Leonardo Galvis", "Jessica Laguado", "Valentina Villamizar"]
    let number = ["0000", "1111", "2222", "3333"]
    var body: some View {
        // VStack --> Vertical
        // HStack --> Horizontal
        NavigationView{
            List{
                ForEach(name, id:\.self){ nombre in
                    NavigationLink(destination: Detalle(nombre: nombre)) {
                        //Command + Click --> Extract Subview
                        Fila(nombre: nombre)
                    }
                }
            }
            .navigationTitle("Contacts")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
