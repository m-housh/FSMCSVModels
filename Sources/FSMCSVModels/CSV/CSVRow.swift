//
//  CSVRow.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//


/**
 # CSVRow
 
 Represents a single row in a `CSVDocument`.
 
 */
public protocol CSVRow: StringRepresentable {
    
    /// Returns the values for the row.
    var values: [String] { get }
    
}


extension CSVRow {
    
    /// Represents the row as a string.
    /// - seealso: `StringRepresentable`
    public var string: String {
        return values.joined(separator: ",")
    }
}
