//
//  HomeViewModel.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 25/03/23.
//

import Foundation
import Firebase

class HomeViewModel:ObservableObject{
    @Published var productsList = [Product]()
    
    let db = Firestore.firestore()
    func getAllProducts(){
        db.collection("products").getDocuments { snapshot, error in
            if error == nil {
                if let snapshot = snapshot{
                    DispatchQueue.main.async {
                        self.productsList = snapshot.documents.map{ d in
                            return Product(id: d["product_id"]as? String ?? "",
                                           product_category_id: d["product_category_id"]as? String ?? "",
                                           product_name: d["product_name"]as? String ?? "")
                            
                        }
                    }
                    
                }
            }else{
                
            }
        }
    }
}
