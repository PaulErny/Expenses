//
//  ExpensesList.swift
//  Expenses
//
//  Created by Paul Erny on 01/05/2024.
//

import SwiftUI

struct ExpensesList: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            ExpenseLine(emoji:"🥦", price: 5.99)
            ExpenseLine(emoji:"🎮", price: 699)
            ExpenseLine(emoji:"🍅", price: 1.50)
            ExpenseLine(emoji:"🍟", price: 14.99)
            ExpenseLine(emoji:"🥦", price: 5.99)
            ExpenseLine(emoji:"🎮", price: 699)
            ExpenseLine(emoji:"🍅", price: 1.50)
            ExpenseLine(emoji:"🍟", price: 14.99)
            Text("...")
                .font(.custom("Montserrat-Light", size: 24) )
                .foregroundStyle(Color.main)
            
        }
        .frame(maxHeight: .infinity, alignment: .topTrailing)
    }
}

#Preview {
    ExpensesList()
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
