//
//  JsonDataTest.swift
//  MarketDataTests
//
//  Created by Johann Fong  on 8/8/21.
//

import XCTest
@testable import MarketData

class JsonDataTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_stockInfoJsonData_CanParseIntoStockInfoArray() throws {
        let stocks: [StockInfoModel] = JsonParser.load("StockInfoData.json")
        XCTAssertEqual(stocks.count, 20)
    }
    
    func test_dayChartDataJson_CanParseDataIntoChartDataRsDTO() throws {
        var chartDataRsDTO: ChartDataRsDTO? = nil
        chartDataRsDTO = JsonParser.load("DayChartData.json")
        XCTAssert(chartDataRsDTO?.compression == 1)
        XCTAssertNotNil(chartDataRsDTO)
    }
    
    func test_parseChartDataString_intoPriceDataArray() throws {
        var chartDataRsDTO: ChartDataRsDTO? = nil
        chartDataRsDTO = JsonParser.load("DayChartData.json")
        XCTAssert(chartDataRsDTO?.compression == 1)
        XCTAssertNotNil(chartDataRsDTO)
        XCTAssertEqual(chartDataRsDTO?.chartDataPoints.count, 390)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
