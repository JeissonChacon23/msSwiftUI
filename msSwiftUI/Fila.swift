//
//  Fila.swift
//  msSwiftUI
//
//  Created by Jeisson Chacón on 6/25/23.
//

import SwiftUI

struct Fila: View {
    let nombre:String
    var body: some View {
        HStack {
            VStack(alignment: .leading) {//Command + Click --> Show SwiftUI Ispector
                Text("\(nombre)")
                    .font(.headline)
                Text("Hola")
                    .font(.footnote)
            }
            Spacer()
            Image(systemName: "person")
                .font(.title) //To make the text larger
        }
    }
}

struct Fila_Previews: PreviewProvider {
    static var previews: some View {
        Fila(nombre: "Test")
    }
}
