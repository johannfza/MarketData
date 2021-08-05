//
//  StockDetailsView.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import SwiftUI

struct StockDetailsView: View {
    
    public var stock: StockInfoModel
    
    var body: some View {
        Text(stock.symbol)
            .navigationTitle(stock.symbol)
    }
}

struct StockDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailsView(stock: StockListViewModel().stocks[0])
    }
}
