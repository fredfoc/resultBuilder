//
//  File.swift
//
//
//  Created by Frédéric FAUQUETTE on 24/02/2022.
//

import UIKit

public struct Rect {
    let rect: CGRect
    let color: UIColor
}

extension Rect: Drawable {
    public func generate(in context: UIGraphicsImageRendererContext) {
        color.setFill()
        context.fill(rect)
    }
}
