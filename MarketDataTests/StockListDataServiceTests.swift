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
        let expectation = self.expectation(description: "API Call Completed")
        
        var topStocks: [StockInfoModel]? = nil // No top stocks
        
        sut.getTopStocks { result in
            switch result {
            case .success(let stocks):
                topStocks = stocks
                print("Here")
            case .failure(let error): // StockListServiceError
                print(error.message)
                break
            }
            expectation.fulfill()
        }
//        wait(for: [expectation], timeout: 5)
        waitForExpectations(timeout: 10, handler: nil) // wait for max 10 sec
        
        XCTAssertTrue(topStocks != nil) // Check if has top stocks
    }
    
    func test_getTopStocksWithErrorProtocol_printErrorMessage() throws {
        let expectation = self.expectation(description: "API Call Completed")
        
        var topStocks: [StockInfoModel]? = nil // No top stocks
        
        sut.getTopStocksWithErrorProtocol { result in
            switch result {
            case .success(let stocks):
                topStocks = stocks
                print("Here")
            case .failure(let error):
                print(error.localizedDescription)
                print(error.message)
                break
            }
            expectation.fulfill()
        }
//        wait(for: [expectation], timeout: 5)
        waitForExpectations(timeout: 10, handler: nil) // wait for max 10 sec
        
        XCTAssertTrue(topStocks != nil) // Check if has top stocks
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

    
}
