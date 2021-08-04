//
//  StokList.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct StockListView: View {
    
    public var stocks: [StockInfo]
    
    var body: some View {
        List(stocks) { stock in
            StockRowView(stock: stock)
        }
    }
}

struct StockListView_Previews: PreviewProvider {
    
    
    static var stocks = StockService().stocks
    
    static var previews: some View {
        StockListView(stocks: stocks)
    }
}
