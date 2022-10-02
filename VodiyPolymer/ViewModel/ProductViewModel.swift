//
//  ProductViewModel.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 01/10/22.
//

import Foundation
import Foundation
import FirebaseDatabase

final class ProdictViewModel: ObservableObject {
    @Published var products: [Product] = []
    
    private lazy var databasePath: DatabaseReference? = {
        let ref = Database.database().reference().child("products")
        return ref
    }()
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    func listentoRealtimeDatabase() {
      
    }
    
    func stopListening() {
        databasePath?.removeAllObservers()
    }
}
