//
//  File.swift
//
//
//  Created by Frédéric FAUQUETTE on 24/02/2022.
//

import UIKit

public protocol Drawable {
    func generate(in context: UIGraphicsImageRendererContext)
}
