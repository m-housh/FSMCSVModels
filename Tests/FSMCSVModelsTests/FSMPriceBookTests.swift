//
//  File.swift
//  
//
//  Created by Michael Housh on 8/20/19.
//

import XCTest
import FSMCSVModels

let validHeaderString = "Code,Reserved,Type,Name,Description,Make,Model,UPC,Quantity Units,Labor Duration,Acquisition Cost,Purchase Cost,Active,Add to Estimate on Create,Add to Work Order on Create,Add to Invoice on Create,Require Work Authorization Signature,Categories"

let validRowString = "1-A,,Service,A service task,1-A service task,,,,Unit,1.0,0,100,1,0,0,0,0,Task;Diagnostic"

let row = FSMPriceBookRow(code: "1-A", reserved: "", type: .service, name: "A service task", description: "1-A service task", make: "", model: "", upc: "", quantityUnits: "Unit", laborDuration: 1, acquisitionCost: 0, purchaseCost: 100, active: true, addToEstimateOnCreate: false, addToWorkOrderOnCreate: false, addToInvoiceOnCreate: false, requireWorkAuthorizationSignature: false, categories: ["Task", "Diagnostic"])

struct BadRow: CSVRow {
    let values: [String] = ["not", "enough", "values"]
}

class FSMPriceBookTests: XCTestCase {
    
    func testHeaderString() {
        XCTAssertEqual(FSMPriceBookHeader().string, validHeaderString)
    }
    
    func testRowString() {
        XCTAssertEqual(row.string, validRowString)
    }
    
    func testDocument() {
        let doc = try! CSVDocument.priceBook(rows: [row])
        XCTAssertEqual(doc.string, "\(validHeaderString)\n\(validRowString)")
    }
    
    func testDocumentFails() {
        XCTAssertThrowsError(try CSVDocument(header: FSMPriceBookHeader(), rows: [BadRow()]))
    }
}
