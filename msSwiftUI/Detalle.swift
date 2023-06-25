//
//  Detalle.swift
//  msSwiftUI
//
//  Created by Jeisson Chacón on 6/24/23.
//

import SwiftUI

struct Detalle: View{
    let nombre:String
    var body: some View{
        Text("\(nombre)")
    }
}

struct Detalle_Previews: PreviewProvider{
    static var previews: some View{
        Detalle(nombre: "Test")
    }
}
