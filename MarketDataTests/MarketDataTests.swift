//
//  MarketDataTests.swift
//  MarketDataTests
//
//  Created by Johann Fong  on 5/8/21.
//

import XCTest
@testable import MarketData

class MarketDataTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_StockInfoJsonData_CanParseIntoStockInfoArray() throws {
        let stocks: [StockInfo] = JsonParser.load("StockInfoData.json")
        print(stocks)
        XCTAssertEqual(stocks.count, 20)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
