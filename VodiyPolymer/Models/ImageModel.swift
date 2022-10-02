//
//  Image.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 01/10/22.
//

import Foundation

struct ImageModel :Identifiable,Hashable,Codable{
    var id: String { "image_id" }
    var image_url: String
    var image_created_at: String
    var image_updated_at: String
}
