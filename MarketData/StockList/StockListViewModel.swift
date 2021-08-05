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
        stockListService.getTopStocks { result in
            switch result {
            case .success(let stocks):
                self.stocks = stocks
            default:
                break
            }
        }
    }
}
