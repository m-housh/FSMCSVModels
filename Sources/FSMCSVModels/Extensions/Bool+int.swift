//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation

extension Bool {
    
    var int: Int {
        switch self {
        case true:
            return 1
        default:
            return 0
        }
    }
}
