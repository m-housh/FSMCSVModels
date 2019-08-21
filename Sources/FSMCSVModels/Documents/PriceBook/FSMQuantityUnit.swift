//
//  FSMQuantityUnit.swift
//  
//
//  Created by Michael Housh on 8/21/19.
//

import Foundation


public enum FSMQuantityUnit: String, CustomStringConvertible, Codable {
    
    case unit, job, minute, hour, day, month, year, inch, yard, foot, millimeter, centimeter, meter, squareInch, squareFoot, squareYard, squareCentimeter, squareMeter, cubicInch, cubicFoot, cubicYard, cubicCentimeter, cubicMeter, fluidOunce, cup, pint, quart, gallon, millilitre, litre, ounce, pound, ton
    
    public init?(_ string: String) {
        let split = string.split(separator: " ")
    
        guard split.count <= 2 else {
            return nil
        }
        
        let str: String
        
        switch split.count {
        case 2:
            str = "\(split[0].lowercased())\(split[1].capitalized)"
        default:
            str = String(split[0]).lowercased()
        }
        
        print("STR: \(str)")
        print()
        self.init(rawValue: str)
    }
    
    public var description: String {
        switch self {
        case .squareInch:
            return "Square Inch"
        case .squareFoot:
            return "Square Foot"
        case .squareYard:
            return "Square Yard"
        case .squareCentimeter:
            return "Square Centimeter"
        case .squareMeter:
            return "Square Meter"
        case .cubicInch:
            return "Cubic Inch"
        case .cubicFoot:
            return "Cubic Foot"
        case .cubicYard:
            return "Cubic Yard"
        case .cubicCentimeter:
            return "Cubic Centimeter"
        case .cubicMeter:
                return "Cubic Meter"
        case .fluidOunce:
            return "Fluid Ounce"
        default:
            return rawValue.capitalized
        }
    }
    
    public static var all: [FSMQuantityUnit] = [
        .unit, .job, .minute, .hour, .day, .month, .year, .inch, .yard, .foot, .millimeter, .centimeter, .meter, .squareInch, .squareFoot, .squareYard, .squareCentimeter, .squareMeter, .cubicInch, .cubicFoot, .cubicYard, .cubicCentimeter, .cubicMeter, .fluidOunce, .cup, .pint, .quart, .gallon, .millilitre, .litre, .ounce, .pound, .ton
    ]
    
}
