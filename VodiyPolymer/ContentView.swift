//
//  ContentView.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 30/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("Hello, world!")
            Text("Hello, world!")
            HStack{
                Button("Hello, world!"){
                    print("Tapped")
                }
                Text("Hello, world!")
            }
        }.padding(15).background(CustomColor.color_1)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            
            
        }
    }
}
