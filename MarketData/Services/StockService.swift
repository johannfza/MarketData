//
//  StockService.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import Foundation


final class StockService: ObservableObject {
    
    @Published var stocks: [StockInfo] = JsonParser.load("StockInfoData.json")

}
