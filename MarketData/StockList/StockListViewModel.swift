//
//  StockListViewModel.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import Foundation

class StockListViewModel: ObservableObject {
        
    private var stockListService: StockListService
    
    @Published var stocks: [StockInfoModel]?
    
    
    init(stockListService: StockListService) {
        self.stockListService = stockListService
        initStocks()
    }

    private func initStocks() {
        stocks = self.stockListService.getTopStocks()
    }
}
