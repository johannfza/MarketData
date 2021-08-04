//
//  JsonParserTests.swift
//  JsonParserTests
//
//  Created by Johann Fong  on 4/8/21.
//

import XCTest
@testable import MarketData

class JsonParserTests: XCTestCase {
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        try super.tearDownWithError()
    }

    func test_StockInfoJsonData_CanParseIntoStockInfoArray() throws {
        let stocks: [StockInfo] = JsonParser.load("StockInfoData.json")
        print(stocks)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
