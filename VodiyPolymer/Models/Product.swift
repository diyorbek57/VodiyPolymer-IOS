//
//  Product.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 25/03/23.
//

struct Product: Identifiable,Decodable,Hashable{
    
    let id:String
    
    let product_category_id:String
    let product_name:String
    
}
