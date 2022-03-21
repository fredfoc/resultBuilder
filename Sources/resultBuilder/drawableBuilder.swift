//
//  File.swift
//  
//
//  Created by Frédéric FAUQUETTE on 21/03/2022.
//

import Foundation

@resultBuilder enum drawableBuilder {
    static func buildBlock(_ components: Drawable...) -> [Drawable] {
        components
    }
}
