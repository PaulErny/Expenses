//
//  Category.swift
//  Expenses
//
//  Created by Paul Erny on 02/05/2024.
//

import SwiftUI

struct Category: View {
    var label: String
    static var mask: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 330, height: 220)
    }

    var body: some View {
        ZStack(alignment: .bottom) {
            VStack(alignment: .trailing, spacing: 10) {
                HStack {
                    Text(label)
                        .font(.custom("Montserrat-Regular", size: 24) )
                        .foregroundStyle(Color.main)
                        .padding([.leading, .top], 20)
                    Spacer()
                }
                HStack {
                    Divider()
                        .frame(width: 250, height: 1)
                        .overlay(Color(hex: "DFDFDF"))
                        .padding(.leading, 20)
                    Spacer()
                }
                VStack(spacing: 10) {
                    ExpenseLine(emoji: "🎮", price: 5.99)
                    ExpenseLine(emoji: "💡", price: 69)
                    ExpenseLine(emoji: "📺", price: 14.99)
                }
                .padding(.trailing, 20)
                HStack {
                    Spacer()
                    Image(systemName: "chevron.down")
                        .font(.custom("Montserrat-Regular", size: 20) )
                        .foregroundStyle(Color(hex: "DFDFDF"))
                    Spacer()
                }
            }
            .frame(width: 330, height: 220, alignment: .topTrailing)
            RoundedRectangle(cornerRadius: 20)
                .fill(LinearGradient(colors: [.clear, .black.opacity(0.3)], startPoint: .top, endPoint: .bottom))
                .frame(width: 330, height: 110)
        }
    }
}

#Preview {
    ZStack {
        Image(.background)
            .resizable()
            .overlay {
                LinearGradient(colors: [
                    Color(hex: "00186E").opacity(0.50),
                    Color(hex: "000B30").opacity(0.35)
                ], startPoint: .top, endPoint: .bottom)
            }
            .ignoresSafeArea()
            .mask {
                VStack(spacing: 48) {
                    Category.mask
                    Category.mask
                    Category.mask
                }
            }
            .shadow(color: Color(hex: "232E5D"), radius: 8, x: -8, y: -8)
            .shadow(color: Color(hex: "000000"), radius: 8, x: 4, y: 4)
        
        VStack(spacing: 48) {
            Category(label: "Mes abonnements")
            Category(label: "Mes dépenses")
            Category(label: "Par mois")
        }
    }
}
