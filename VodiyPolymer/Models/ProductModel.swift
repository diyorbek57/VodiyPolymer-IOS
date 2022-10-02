//
//  Product.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 01/10/22.
//

import Foundation

struct Product: Identifiable, Decodable, Hashable {
    
    var id: String { "product_id" }
    var product_category_id: String
    var product_name: String
    var product_description: String
    var product_price: String
    var product_rating: Double
    var product_sold: String
    var product_discount: String
    var product_image: [ImageModel]
    var product_created_at: String
    var product_updated_at: String
}
