//
//  HomeView.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 27/03/23.
//

import Foundation
import SwiftUI
import SwiftUIMargin

struct HomeView: View {
    
    @ObservedObject var vm = HomeViewModel()
    
    @State var productsLayout:[GridItem] = Array(repeating: .init(.flexible()), count: 2)
    
    @State var isShowSearchField = false
    var body: some View {
        
        
        
            
            if isShowSearchField {
                Text("search").frame(alignment: .leading)
            }else{
            
                ScrollView{
                VStack{
                    HStack{
                        HStack{
                            Image(systemName: "magnifyingglass").foregroundColor(Color("Gray"))
                            Text("search").foregroundColor(Color("Gray"))
                        }.frame(maxWidth:.infinity,alignment: .leading).padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10)).background(Color("Light Gray")).cornerRadius(5).onTapGesture {
                            isShowSearchField.toggle()
                        }
                        
                       
                    }.padding(20)
                   
            
                    LazyVGrid(columns: productsLayout, alignment: .center,spacing: 30){
                        ForEach(vm.productsList.indices,id: \.self){index in
                            ZStack {
                                VStack(alignment: .leading) {
                                    AsyncImage(url: URL(string: "https://avatars.mds.yandex.net/i?id=42f95c52f93f04d3b98df3dbbc0c55a4fd8969b4-7755864-images-thumbs&n=13")).frame(width: 160,height: 160).cornerRadius(10,corners:.allCorners).foregroundColor(.gray)
                                    Text(vm.productsList[index].product_name)
                                        .font(.custom("Avenir", size: 18))
                                        .fontWeight(.bold)
                                    Text("No Address")
                                        .font(.custom("Avenir", size: 12))
                                        .foregroundColor(SwiftUI.Color.gray)
                                    
                                    HStack(alignment: .bottom){
                                        Image(systemName: "star.leadinghalf.filled")
                                        Text("2.3")
                                            .font(.custom("Avenir", size: 14))
                                            .foregroundColor(SwiftUI.Color.gray)
                                        Divider().foregroundColor(.black)
                                        
                                        Text("2,123 sold")
                                            .font(.custom("Avenir", size: 14))
                                            .fontWeight(.bold)
                                            .padding(4)
                                            .background(Color("Gray"))
                                            .cornerRadius(5)
                                    }
                                    Text("$ 1000")
                                        .font(.custom("Avenir", size: 18))
                                        .fontWeight(.bold)
                                }.frame(width: 170)
                                    .cornerRadius(10)
                            }
                        }
                    }
                    
                }
            }
            
        }
        
    }
    init(){
        vm.getAllProducts()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
