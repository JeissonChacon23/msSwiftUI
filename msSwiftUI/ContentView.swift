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
            HStack {
                Text("1.) ")
                Text("2.) ")
                Text("3.) ")
                Text("4.) ")
                Text("5.) ")
            }
            HStack {
                Text("1.) ")
                Text("2.) ")
                Text("3.) ")
                Text("4.) ")
                Text("5.) ")
            }
            HStack {
                Text("1.) ")
                Text("2.) ")
                Text("3.) ")
                Text("4.) ")
                Text("5.) ")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
