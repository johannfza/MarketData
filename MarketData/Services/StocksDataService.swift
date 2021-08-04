//
//  StockService.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import Foundation


final class StocksDataService: ObservableObject {
    
    @Published var stocks: [StockInfoModel] = JsonParser.load("StockInfoData.json")

}
