//
//  ContentView.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 25/03/23.
//

import SwiftUI

struct ContentView: View {
    
    
    var body: some View {
        
        TabView{
            HomeView().tabItem{
                Image(systemName: "house.fill")
            }
            CartView().tabItem{
                Image(systemName: "bag.fill")
            }
            OrdersView().tabItem{
                Image(systemName: "cart.fill")
            }
            ProfileView().tabItem{
                Image(systemName: "person.fill")
            }
        }.accentColor(Color("Dark Blue"))
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
