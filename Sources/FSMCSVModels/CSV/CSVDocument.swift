//
//  CSVDocument.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


/**
 # CSVDocument
 
 A representation of a CSV document.
 
 */
public struct CSVDocument: CSVDocumentRepresentable {
    
    /// The header row of the document.
    public let header: CSVHeader
    
    /// The non-header rows of the document.
    public let rows: [CSVRow]
    
    public init(header: CSVHeader, rows: [CSVRow]) throws {
        self.header = header
        self.rows = rows
        
        guard rows.filter({ $0.values.count != self.header.keys.count }).count == 0 else {
            throw CSVError.rowCountError
        }
        
    }
}

extension CSVDocument {
    
    /// Create a `CSVDocument` that represents the `FSMPriceBook`.
    public static func priceBook(rows: [FSMPriceBookRow]) throws -> CSVDocument {
        return try CSVDocument(header: FSMPriceBookHeader(), rows: rows)
    }
}

