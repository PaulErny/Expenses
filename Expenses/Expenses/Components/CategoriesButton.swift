//
//  CategoriesButton.swift
//  Expenses
//
//  Created by Paul Erny on 01/05/2024.
//

import SwiftUI

struct CategoriesButton: View {
    @State var test = "red"
    var testPool = ["red", "green", "blue"]

    var body: some View {
        Menu {
            Picker(selection: $test, label: EmptyView()) {
                ForEach(testPool, id: \.self) { value in
                    Text("🍟 |   " + value)
                }
            }
            .pickerStyle(.inline)
        } label: {
            HStack {
                Text("CATEGORIES")
                    .font(.custom("Montserrat-Regular", size: 16))
                Image(systemName: "chevron.down")
                    .font(.custom("Montserrat-Regular", size: 16))
            }
            .padding(5)
            .padding([.leading, .trailing], 10)
            .background {
                Image(.background)
                    .resizable()
                    .scaleEffect(CGSize(width: 3, height: 3))
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 26)
                    .clipped()
                    .overlay(
                        Color(hex: "00186E").opacity(0.42)
                    )
                
                    .cornerRadius(50)
                    .shadow(color: .main, radius: 6, x: 0, y: 0)
                    .overlay(
                        Capsule()
                            .stroke(.main, lineWidth: 2)
                    )
            }
            .foregroundStyle(Color.main)
            //        .buttonStyle(PlainButtonStyle())
        }
    }
}

#Preview {
    CategoriesButton()
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
