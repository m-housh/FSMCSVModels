//
//  CSVHeader.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

/**
 # CSVHeader
 
 Representation of a header row in a `CSVDocument`.
 
 */
public protocol CSVHeader: StringRepresentable {
    
    /// Returns all the keys / names for the CSV columns.
    var keys: [String] { get }
    
    
}

extension CSVHeader {
    
    /// Returns a string representation of the header row.
    /// - seealso: `StringRepresentable`
    public var string: String {
        return keys.joined(separator: ",")
    }
}
