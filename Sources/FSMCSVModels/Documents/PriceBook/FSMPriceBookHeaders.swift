//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


/**
 # CSVHeader
 
 Represents the header row of the CSV file.
 
 */
public enum FSMPriceBookHeaderKeys: String {
    
    
    case code
    case reserved
    case type
    case name
    case description
    case make
    case model
    case upc
    case quantityUnits
    case laborDuration
    case acquisitionCost
    case purchaseCost
    case active
    case addToEstimateOnCreate
    case addToWorkOrderOnCreate
    case addToInvoiceOnCreate
    case requireWorkAuthorizationSignature
    case categories
    
    /// The key / name used for the column of the CSV file.
    public var key: String {
        switch self {
        case .quantityUnits:
            return "Quantity Units"
        case .laborDuration:
            return "Labor Duration"
        case .acquisitionCost:
            return "Acquisition Cost"
        case .purchaseCost:
            return "Purchase Cost"
        case .addToInvoiceOnCreate:
            return "Add to Invoice on Create"
        case .addToEstimateOnCreate:
            return "Add to Estimate on Create"
        case .addToWorkOrderOnCreate:
            return "Add to Work Order on Create"
        case .requireWorkAuthorizationSignature:
            return "Require Work Authorization Signature"
        case .upc:
            return self.rawValue.uppercased()
        default:
            return self.rawValue.capitalized
        }
    }
    
    /// A list of all the header keys, in the appropriate order.
    public static var keys: [String] {
        let all: [FSMPriceBookHeaderKeys] = [
            .code, .reserved, .type, .name, .description, .make, .model, .upc, .quantityUnits, .laborDuration
            
            , .acquisitionCost, .purchaseCost, .active, .addToEstimateOnCreate, .addToWorkOrderOnCreate, .addToInvoiceOnCreate, .requireWorkAuthorizationSignature, .categories
        ]
            
        return all.map { $0.key }
    }
    
}

public struct FSMPriceBookHeader: CSVHeader {
    public let keys: [String] = FSMPriceBookHeaderKeys.keys
    
    public init() { }
}
