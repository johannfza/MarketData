//
//  StockListService.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import Foundation

class MockStockListDataService: StockListService {
    func getTopStocks(completion: @escaping (Result<[StockInfoModel], StockListServiceError>) -> Void) {
        mockDelay {
            let stocks: [StockInfoModel] = JsonParser.load("StockInfoData.json")
            completion(.success(stocks))
        }
    }
}
