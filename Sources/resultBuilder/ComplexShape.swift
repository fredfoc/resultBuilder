//
//  File.swift
//
//
//  Created by Frédéric FAUQUETTE on 21/03/2022.
//

import UIKit

struct ComplexShape {
    internal init(hasYellowRect: Bool = true) {
        self.hasYellowRect = hasYellowRect
    }

    private let hasYellowRect: Bool
    @drawableBuilder private var drawables: [Drawable] {
        Rect(rect: CGRect(x: 10, y: 10, width: 90, height: 50), color: .red)
        Rect(rect: CGRect(x: 110, y: 10, width: 90, height: 50), color: .blue)
        if hasYellowRect {
            Rect(rect: CGRect(x: 10, y: 70, width: 90, height: 50), color: .yellow)
        }
    }
}

extension ComplexShape: Drawable {
    func generate(in context: UIGraphicsImageRendererContext) {
        drawables.forEach { $0.generate(in: context) }
    }
}
