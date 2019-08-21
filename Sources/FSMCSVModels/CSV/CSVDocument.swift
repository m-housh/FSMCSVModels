//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


public struct CSVDocument: CSVDocumentRepresentable {
    
    public let header: CSVHeader
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
    
    public static func priceBook(rows: [FSMPriceBookRow]) throws -> CSVDocument {
        return try CSVDocument(header: FSMPriceBookHeader(), rows: rows)
    }
}

