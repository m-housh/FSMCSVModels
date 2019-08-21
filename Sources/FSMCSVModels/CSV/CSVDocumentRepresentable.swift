//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


public protocol CSVDocumentRepresentable {
    var header: CSVHeader { get }
    var rows: [CSVRow] { get }
    
    var string: String { get }
}

extension CSVDocumentRepresentable {
    
    private var rowString: String {
        return rows.map { $0.string }.joined(separator: "\n")
    }
    
    public var string: String {
        return "\(header.string)\n\(rowString)"
    }
}
