//
//  StokList.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct StockListView: View {
    
    public var stocks: [StockInfoModel]
    
//    public var stocksArray: [StockInfo] = [StockInfo(sadassaddaasdad)]
    
    var body: some View {
        List(stocks) { stock in
            StockRowView(stock: stock)
        }
    }
}

struct StockList_Previews: PreviewProvider {
    
    
    static var stocks: [StockInfoModel] {
        var stocks = [StockInfoModel]()
        for i in 0...5 {
            let tradePrice = Amount(value: 650.00, currency: .usd)
            let actualChange = Amount(value: 0.00, currency: .usd)
            let price = PriceInfo(symbol: "TSLA", tradePrice: tradePrice, actualChange: actualChange, percentageChange: 10.00)
            let stock = StockInfoModel(name: "TESLA", symbol: "TSLA\(i)", imageURL: nil, priceInfo: price)
            stocks.append(stock)
        }
        return stocks
    }
    
    static var previews: some View {
        StockListView(stocks: stocks)
    }
}
