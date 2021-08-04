//
//  StocksService.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import Foundation

protocol StocksService {
    
    func getTopStocks(completion: @escaping (Result<[StockInfoModel],Error>) -> Void)
}
