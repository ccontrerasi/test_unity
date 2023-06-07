//
//  ContentView.swift
//  test_unity
//
//  Created by Cristian Contreras on 7/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("Launch Unity!", action: {
                Unity.shared.show()
                
                Unity.shared.sendMessage(
                    "Views",
                    methodName: "LoadTypeIOS",
                    message: "IMAGE_GALLERY"
                )
                Unity.shared.sendMessage(
                    "Views",
                    methodName: "LoadContentIOS",
                    message: "[\"http://turismoourensedes.grupotecopy.es/sites/default/files/2023-04/73A_PenaTrevinca_01.jpg\"]"
                )
            }).buttonStyle(.bordered)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
