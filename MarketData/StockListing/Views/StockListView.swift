//
//  StokList.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct StockListView: View {
    
    public var stocks: [StockInfoModel]
    
    var body: some View {
        List(stocks) { stock in
            NavigationLink(destination: StockDetailsView(stock: stock)) {
                StockRowView(stock: stock)
            }
        }
    }
}

struct StockListView_Previews: PreviewProvider {
    
    
    static var stocks = StocksViewModel().stocks
    
    static var previews: some View {
        StockListView(stocks: stocks)
    }
}
