//
//  Bool+int.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation

extension Bool {
    
    /// The `Int` representation of a `Bool`.
    var int: Int {
        switch self {
        case true:
            return 1
        default:
            return 0
        }
    }
}
