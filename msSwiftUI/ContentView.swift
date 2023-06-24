//
//  ContentView.swift
//  msSwiftUI
//
//  Created by Jeisson Chacón on 6/24/23.
//

import SwiftUI

struct ContentView: View {
    let nombres = ["Jeisson", "Javier", "Chacon", "Parada"]
    var body: some View {
        // VStack --> Vertical
        // HStack --> Horizontal
        NavigationView{
            List{
                ForEach(nombres, id:\.self){
                    nombre in
                    HStack {
                        VStack(alignment: .leading) {//Command + Click --> Show SwiftUI Ispector
                            Text("\(nombre)")
                                .font(.headline)
                            Text("Hola")
                                .font(.footnote)
                        }
                        Spacer()
                        Image(systemName: "pencil")
                            .font(.title) //To make the text larger
                    }
                }
            }
            .navigationTitle("Full Name")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
