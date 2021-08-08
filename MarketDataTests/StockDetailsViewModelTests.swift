//
//  StockDetailsViewModelTests.swift
//  MarketDataTests
//
//  Created by Johann Fong  on 8/8/21.
//

import XCTest
@testable import MarketData

class StockDetailsViewModelTests: XCTestCase {
    
    var sut: StockDetailsViewModel!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = StockDetailsViewModel(stock: StockInfoModel(name: "TEST", symbol: "TEST", imageURL: nil, priceInfo: PriceInfo(symbol: "TEST", tradePrice: Amount(value: 0.0, currency: .usd), actualChange: Amount(value: 0.0, currency: .usd), percentageChange: 0.0)))
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func test_chartData_canGetDataWithSelectedYear() throws {
        let testData = sut.chartData[sut.selectedChartType]
        print(testData)
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
