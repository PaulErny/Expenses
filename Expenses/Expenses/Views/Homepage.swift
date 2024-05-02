//
//  Homepage.swift
//  Expenses
//
//  Created by Paul Erny on 01/05/2024.
//

import SwiftUI

struct Homepage: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 0) {
            Spacer()
                .frame(height: 170)
            Text("Dépenses")
                .font(.custom("Montserrat-Regular", size: 24) )
                .foregroundStyle(Color.main)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
            Text("- 0.00 €")
                .font(.custom("Montserrat-Regular", size: 80) )
                .foregroundStyle(Color.main)
                .frame(maxWidth: .infinity)
                .shadow(color: Color.main, radius: 5, x: 0, y: 0)
            CategoriesButton()
                .padding(.trailing, 50)
                .padding(.top, 10)
            ExpensesList()
                .padding(.trailing, 50)
                .padding(.top, 20)
                .shadow(color: Color.main, radius: 2, x: 0, y: 0)
            Spacer()
            Text("Cette semaine")
                .font(.custom("Montserrat-Regular", size: 24) )
                .foregroundStyle(Color.main)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 50)
                .padding(.top, 30)
            Text("🍟 - 721.84 €")
                .font(.custom("Montserrat-Light", size: 24) )
                .foregroundStyle(Color.main)
                .padding(.trailing, 50)
                .padding(.top, 10)
                .shadow(color: Color.main, radius: 2, x: 0, y: 0)
            Spacer()
                .frame(height: 100)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
    }
}

#Preview {
    Homepage()
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
