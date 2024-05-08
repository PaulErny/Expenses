//
//  TextBubble.swift
//  Expenses
//
//  Created by Paul Erny on 07/05/2024.
//

import SwiftUI

struct TextBubble: Shape {
    private var cornerRadius: CGFloat
    private var arrowSize: CGFloat
    private var arrowCornerRadius: CGFloat

    init(cornerRadius: CGFloat = 10) {
        self.cornerRadius = cornerRadius
        self.arrowSize = 15
        self.arrowCornerRadius = 7
        
    }

    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.minX + rect.width / 2 - arrowSize / 2 - arrowCornerRadius, y: rect.maxY)) // aka bottom center - arrow size

            // -------------- arrow --------------
            path.addArc(center: CGPoint(x: rect.minX + rect.width / 2 - arrowSize / 2 - arrowCornerRadius, y: rect.maxY + arrowCornerRadius),
                        radius: arrowCornerRadius,
                        startAngle: Angle(degrees: 270),
                        endAngle: Angle(degrees: 270 + 45),
                        clockwise: false)

            path.addArc(center: CGPoint(x: rect.minX + rect.width / 2, y: rect.maxY + arrowSize - 2*arrowCornerRadius),
                        radius: arrowCornerRadius,
                        startAngle: Angle(degrees: 90 + 45),
                        endAngle: Angle(degrees: 45),
                        clockwise: true)
            
            path.addArc(center: CGPoint(x: rect.minX + rect.width / 2 + arrowSize / 2 + arrowCornerRadius, y: rect.maxY + arrowCornerRadius),
                        radius: arrowCornerRadius,
                        startAngle: Angle(degrees: 270 - 45),
                        endAngle: Angle(degrees: 270),
                        clockwise: false)

            // -------------- bubble --------------
            path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.maxY - cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 90),
                        endAngle: Angle(degrees: 0),
                        clockwise: true)
            path.addArc(center: CGPoint(x: rect.maxX - cornerRadius, y: rect.minY + cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 0),
                        endAngle: Angle(degrees: 270),
                        clockwise: true)
            path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.minY + cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 270),
                        endAngle: Angle(degrees: 180),
                        clockwise: true)
            path.addArc(center: CGPoint(x: rect.minX + cornerRadius, y: rect.maxY - cornerRadius),
                        radius: cornerRadius,
                        startAngle: Angle(degrees: 180),
                        endAngle: Angle(degrees: 90),
                        clockwise: true)
            path.closeSubpath()
        }
    }
}

#Preview {
    TextBubble()
        .stroke(Color.blue, style: StrokeStyle(lineWidth: 3))
        .frame(width: 200, height: 100)
}
