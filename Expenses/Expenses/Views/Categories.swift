//
//  Categories.swift
//  Expenses
//
//  Created by Paul Erny on 02/05/2024.
//

import SwiftUI

struct Categories: View {
    var body: some View {
        VStack(spacing: 44) {
            Category(label: "Mes abonnements")
            Category(label: "Mes dépenses")
            Category(label: "Par mois")
        }
    }
}

#Preview {
    Categories()
        .addNeomorphismMask(numberOfSubviews: 3)
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
