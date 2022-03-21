//
//  File.swift
//
//
//  Created by Frédéric FAUQUETTE on 21/03/2022.
//

import UIKit

struct JoliShape {
    private let drawables: [Drawable]
    init(@drawableBuilder builder: () -> [Drawable]) {
        drawables = builder()
    }
}

extension JoliShape: Drawable {
    func generate(in context: UIGraphicsImageRendererContext) {
        drawables.forEach { $0.generate(in: context) }
    }
}

extension JoliShape: DrawableConvertible {
    var elements: [Drawable] {
        drawables
    }
}
