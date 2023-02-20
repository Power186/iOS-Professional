//
//  DecimalUtil.swift
//  Bankey
//
//  Created by Scott on 2/20/23.
//

import Foundation

extension Decimal {
    
    var doubleValue: Double {
        return NSDecimalNumber(decimal: self).doubleValue
    }
    
}
