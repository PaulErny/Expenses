//
//  CategoriesModifiers.swift
//  Expenses
//
//  Created by Paul Erny on 02/05/2024.
//

import Foundation
import SwiftUI

private struct NeomorphismMask: ViewModifier {
    var numberOfSubviews: Int
    
    func body(content: Content) -> some View {
        ZStack {
            Image(.background)
                .resizable()
                .overlay {
                    LinearGradient(colors: [
                        Color(hex: "00186E").opacity(0.40),
                        Color(hex: "000B30").opacity(0.2)
                    ], startPoint: .top, endPoint: .bottom)
                }
                .ignoresSafeArea()
                .mask {
                    VStack(spacing: 44) {
                        ForEach(0...numberOfSubviews - 1, id: \.self) { _ in 
                            Category.mask
                        }
                    }
                }
                .shadow(color: Color(hex: "232E5D"), radius: 5, x: -8, y: -8)
                .shadow(color: Color(hex: "000000"), radius: 3, x: 4, y: 4)
            
            content
        }
    }
}

extension Categories {
    func addNeomorphismMask(numberOfSubviews: Int) -> some View {
        modifier(NeomorphismMask(numberOfSubviews: numberOfSubviews))
    }
}

