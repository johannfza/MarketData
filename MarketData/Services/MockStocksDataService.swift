//
//  MockStocksDataService.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import Foundation

class MockStocksDataService: StocksService {
    
    func getTopStocks(completion: @escaping (Result<[StockInfoModel], Error>) -> Void) {
        let stocks: [StockInfoModel] = JsonParser.load("StockInfoData.json")
        completion(.success(stocks))
    }
    
}
