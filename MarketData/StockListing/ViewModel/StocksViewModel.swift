//
//  StockService.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import Foundation


final class StocksViewModel: ObservableObject {
    
    private var stocksService: StocksService
    
    @Published var stocks: [StockInfoModel]?
    
    init(stocksService: StocksService) {
        self.stocksService = stocksService
        initStocks()
    }
    
    private func initStocks() {
        self.stocksService.getTopStocks { result in
            switch result {
            case .success(let stocks):
                self.stocks = stocks
            case .failure:
                // TODO:
                break
            }
        }
    }
}
