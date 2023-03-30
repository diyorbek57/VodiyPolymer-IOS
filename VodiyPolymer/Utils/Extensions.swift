//
//  Extensions.swift
//  VodiyPolymer
//
//  Created by Diyorbek Hamdamov on 26/03/23.
//

import Foundation
import SwiftUI

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
}
