//
//  FSMPriceBookRow.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import Foundation


/**
 # FSMPriceBookRow
 
 Represents a row in the CSV file.
 
 */
public struct FSMPriceBookRow: Codable, CSVRow {
    
    public let code: String
    public let reserved: String
    public let type: FSMPriceBookType
    public let name: String
    public let description: String
    public let make: String
    public let model: String
    public let upc: String
    public let quantityUnits: FSMQuantityUnit
    public let laborDuration: Double
    public let acquisitionCost: Int
    public let purchaseCost: Int
    public let active: Bool
    public let addToEstimateOnCreate: Bool
    public let addToWorkOrderOnCreate: Bool
    public let addToInvoiceOnCreate: Bool
    public let requireWorkAuthorizationSignature: Bool
    public let categories: [String]
    
    public init(code: String, reserved: String = "", type: FSMPriceBookType = .service, name: String, description: String, make: String = "", model: String = "", upc: String = "", quantityUnits: FSMQuantityUnit = .unit, laborDuration: Double, acquisitionCost: Int = 0, purchaseCost: Int = 0, active: Bool = true, addToEstimateOnCreate: Bool = false, addToWorkOrderOnCreate: Bool = false, addToInvoiceOnCreate: Bool = false, requireWorkAuthorizationSignature: Bool = false, categories: [String] = []) {
        
        self.code = code
        self.reserved = reserved
        self.type = type
        self.name = name
        self.description = description
        self.make = make
        self.model = model
        self.upc = upc
        self.quantityUnits = quantityUnits
        self.laborDuration = laborDuration
        self.acquisitionCost = acquisitionCost
        self.purchaseCost = purchaseCost
        self.active = active
        self.addToEstimateOnCreate = addToEstimateOnCreate
        self.addToWorkOrderOnCreate = addToWorkOrderOnCreate
        self.addToInvoiceOnCreate = addToInvoiceOnCreate
        self.requireWorkAuthorizationSignature = requireWorkAuthorizationSignature
        self.categories = categories
    }
    
    public var values: [String] {
        let categoriesString = categories.joined(separator: ";")
        
        return [code, reserved, type.description, name, description, make, model, upc, "\(quantityUnits.description)", "\(laborDuration)", "\(acquisitionCost)", "\(purchaseCost)", "\(active.int)", "\(addToEstimateOnCreate.int)", "\(addToWorkOrderOnCreate.int)", "\(addToInvoiceOnCreate.int)", "\(requireWorkAuthorizationSignature.int)", categoriesString]
    }
}

