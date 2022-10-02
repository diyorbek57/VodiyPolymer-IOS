//
//  ProductView.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 01/10/22.
//

import SwiftUI

struct ProductView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            
            VStack(alignment: .center){
                Image("file")
                .resizable()
                .scaledToFill()
                .frame(width: 150.0, height: 150.0,alignment: .center)
                       .clipShape(RoundedRectangle(cornerRadius: 10))
            }
                
            
                Text("Condo with awesome views of downtown")
                    .font(.headline).lineLimit(2)
            
            
           
            HStack{
                Image(systemName:"star.leadinghalf.filled")
                    .frame(width: 24,height: 24)
                
                Text("4.6")
                    .foregroundColor(.gray)
                    .lineLimit(1)
                Rectangle().fill(Color.black).frame(width: 1, height: 14, alignment: .center).padding(.leading, 5)//.offset(y: -10)
                Text("4.6")
                    .padding(5)
                    .background(.gray)
                    .foregroundColor(CustomColor.color_1)
                    .lineLimit(1)
            }
           
            Text("$42 avg/night")
                       .font(.body)
                       .lineLimit(1)
        }.frame(
                minWidth: 0,
                maxWidth: 190,
                minHeight: 0,
                maxHeight: 280,
                alignment: .center
        )
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
