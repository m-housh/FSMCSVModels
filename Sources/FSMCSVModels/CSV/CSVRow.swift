//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


public protocol CSVRow {
    
    var values: [String] { get }
    var string: String { get }
}


extension CSVRow {
    public var string: String {
        return values.joined(separator: ",")
    }
}
