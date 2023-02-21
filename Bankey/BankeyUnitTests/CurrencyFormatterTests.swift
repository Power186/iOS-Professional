//
//  CurrencyFormatterTests.swift
//  BankeyUnitTests
//
//  Created by Scott on 2/21/23.
//

import XCTest
@testable import Bankey

final class Test: XCTestCase {
    
    var formatter: CurrencyFormatter!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        formatter = CurrencyFormatter()
    }
    
    override func tearDownWithError() throws {
        formatter = nil
        try super.tearDownWithError()
    }
    
    func testBreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    func testDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "$929,466.23")
    }
    
    func testZeroDollarsFormatted() throws {
        let result = formatter.dollarsFormatted(0)
        XCTAssertEqual(result, "$0.00")
    }
    
}
