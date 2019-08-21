//
//  CSVDocumentRepresentable.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//


/**
# CSVDocumentRepresentable

A representation of a CSV document.

*/
public protocol CSVDocumentRepresentable: StringRepresentable {
   
    /// The header row of the document.
    var header: CSVHeader { get }
    
    /// The non-header rows of the document.
    var rows: [CSVRow] { get }
}

extension CSVDocumentRepresentable {
    
    private var rowString: String {
        return rows.map { $0.string }.joined(separator: "\n")
    }
    
    /// The string representation of the document
    /// - seealso: `StringRepresentable`
    public var string: String {
        return "\(header.string)\n\(rowString)"
    }
    
}
