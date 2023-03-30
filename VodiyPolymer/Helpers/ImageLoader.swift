//
//  ImageLoader.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 26/03/23.
//

import Foundation
class ImageLoader: ObservableObject {
    var didChange = PassthroughSubject<Data, Never>()
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }

    init(urlString:String) {
        guard let url = URL(string: urlString) else { return }
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, self != nil else { return }
            DispatchQueue.main.async { [weak self]
                self?.data = data
            }
        }
        task.resume()
    }
}
