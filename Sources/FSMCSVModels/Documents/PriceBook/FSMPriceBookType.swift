//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


/**
 # FSMPriceBookType
 ---------
 
 Contains the valid values for the `Type` column in the CSV file.
 
 */
public enum FSMPriceBookType: String, CustomStringConvertible, Codable {
    
    case service, product
    
    public var description: String {
        return rawValue.capitalized
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(description)
    }
}
