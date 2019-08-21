//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


public protocol CSVHeader {
    
    var keys: [String] { get }
    
    var string: String { get }
    
}

extension CSVHeader {
    
    public var string: String {
        return keys.joined(separator: ",")
    }
}
