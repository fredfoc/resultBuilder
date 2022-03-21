//
//  File.swift
//
//
//  Created by Frédéric FAUQUETTE on 21/03/2022.
//

import Foundation

@resultBuilder enum drawableBuilder {
    static func buildIf(_ component: DrawableConvertible?) -> [Drawable] {
        component?.elements ?? []
    }

    static func buildBlock(_ components: DrawableConvertible...) -> [Drawable] {
        components.flatMap { $0.elements }
    }
}

protocol DrawableConvertible {
    var elements: [Drawable] { get }
}

extension Array: DrawableConvertible where Element == Drawable {
    var elements: [Drawable] { self }
}
