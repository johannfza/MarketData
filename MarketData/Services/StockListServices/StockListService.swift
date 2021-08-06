//
//  StockListService.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import Foundation


protocol StockListService {
    func getTopStocks(completion: @escaping (Result<[StockInfoModel], StockListServiceError>) -> Void )
}


