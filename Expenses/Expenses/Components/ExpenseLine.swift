//
//  ExpenseLine.swift
//  Expenses
//
//  Created by Paul Erny on 08/05/2024.
//

import SwiftUI

struct ExpenseLine: View {
    var emoji: String
    var price: Decimal

    var body: some View {
        HStack(spacing: 0) {
            Text(emoji)
            Text(" - \(price) €")
                .shadow(color: Color.main, radius: 2, x: 0, y: 0)
        }
        .font(.custom("Montserrat-Light", size: 24) )
        .foregroundStyle(Color.main)
    }
}

#Preview {
    ExpenseLine(emoji: "🍟", price: 14.99)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Image(.background)
                .resizable()
                .overlay {
                    LinearGradient(colors: [
                        Color(hex: "00186E").opacity(0.50),
                        Color(hex: "000B30").opacity(0.35)
                    ], startPoint: .top, endPoint: .bottom)
                }
                .ignoresSafeArea()
        }
}
