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
        VStack {
            //id: \.self --> Indicates that you are going to select each of the data inside the array
            ForEach(nombres, id:\.self){
                nombre in Text("\(nombre)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
