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
            //Command + click --> Extract Subview
            subvista()
            subvista()
            subvista()
            subvista()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct subvista: View {
    var body: some View {
        HStack {
            Text("1.) ")
            Text("2.) ")
            Text("3.) ")
            Text("4.) ")
            Text("5.) ")
        }
    }
}
