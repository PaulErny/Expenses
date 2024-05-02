//
//  ExpensesApp.swift
//  Expenses
//
//  Created by Paul Erny on 01/05/2024.
//

import SwiftUI

@main
struct ExpensesApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                Homepage()
                Categories()
                    .addNeomorphismMask(numberOfSubviews: 3)
                Text("premium")
            }
            .tabViewStyle(.page)
            .ignoresSafeArea()
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
    }
}
