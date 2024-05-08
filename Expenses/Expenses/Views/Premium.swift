//
//  Premium.swift
//  Expenses
//
//  Created by Paul Erny on 02/05/2024.
//

import SwiftUI

struct Premium: View {
    private var lineWidth: CGFloat = 75
    
    var body: some View {
        VStack {
            TextBubble()
                .shadow(color: Color(hex: "232E5D"), radius: 8, x: -8, y: -8)
                .shadow(color: Color(hex: "000000"), radius: 8, x: 4, y: 4)
                .overlay {
                    VStack {
                        Text("🍅 Courses")
                            .font(.custom("Montserrat-Light", size: 20) )
                            .foregroundStyle(Color(hex: "DFDFDF"))
                        Text("- 217,35 €")
                            .font(.custom("Montserrat-Regulad", size: 24) )
                            .foregroundStyle(Color.main)
                    }
                }
                .foregroundStyle(Color.backgroundBlue)
                .frame(width: 180, height: 70)
                .padding(.bottom, lineWidth)
            ZStack {
                
                Circle()
                    .stroke(lineWidth: lineWidth + 20)
                    .fill(Color.backgroundBlue)
                    .shadow(color: Color(hex: "232E5D"), radius: 8, x: -8, y: -8)
                    .shadow(color: Color(hex: "000000"), radius: 8, x: 4, y: 4)
                
                Circle()
                    .trim(from: 0, to: 0.33)
                    .stroke(Color.green, style: StrokeStyle(
                        lineWidth: lineWidth,
                        lineCap: .butt
                    ))
                    .rotationEffect(.degrees(-90))
                
                Circle()
                    .trim(from: 0.33, to: 0.5)
                    .stroke(Color.cyan, style: StrokeStyle(
                        lineWidth: lineWidth,
                        lineCap: .butt
                    ))
                    .rotationEffect(.degrees(-90))
                
                Circle()
                    .trim(from: 0.5, to: 1)
                    .stroke(Color.yellow, style: StrokeStyle(
                        lineWidth: lineWidth,
                        lineCap: .butt
                    ))
                    .rotationEffect(.degrees(-90))
                
                ArcJoin()
                    .stroke(Color.backgroundBlue, style: StrokeStyle(lineWidth: 10))
                    .frame(height: 84)
                    .offset(y: -124)
                
                ArcJoin()
                    .stroke(Color.backgroundBlue, style: StrokeStyle(lineWidth: 10))
                    .frame(height: 84)
                    .offset(y: -124)
                    .rotationEffect(.degrees(0.33 * 360))
                
                ArcJoin()
                    .stroke(Color.backgroundBlue, style: StrokeStyle(lineWidth: 10))
                    .frame(height: 84)
                    .offset(y: -124)
                    .rotationEffect(.degrees(0.5 * 360))
            }
            .frame(width: 250)
            .padding(.bottom, lineWidth + 70)
        }
    }
}

#Preview {
    Premium()
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
