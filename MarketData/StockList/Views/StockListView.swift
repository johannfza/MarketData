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
    static var previews: some View {
        StockListView(stocks: StockListViewModel().stocks)
    }
}
