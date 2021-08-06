//
//  MarketDataTests.swift
//  MarketDataTests
//
//  Created by Johann Fong  on 5/8/21.
//

import XCTest
@testable import MarketData

class StockListDataServiceTests: XCTestCase {
    
//    test_operation_withCertainInputs_shouldDoSomething()
//    test_getPeople_inNormalCases_shouldGetPeople()
    
    var sut: StockListDataService!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = StockListDataService()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func test_getTopStocks_getsTopStocks() throws {
        sut.getTopStocks { result in
            switch result {
            case .success(let stocks):
                XCTAssertEqual(stocks.count, 20)
            default:
                break
            }
        }
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    
}
