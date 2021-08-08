//
//  StokList.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct StockListView: View {
    
    #if MOCK
    @StateObject var vm = StockListViewModel(stockListService: MockStockListDataService())
    #else
    @StateObject var vm = StockListViewModel(stockListService: StockListDataService())
    #endif

    var body: some View {
        if let stocks = vm.stocks {
            List(stocks) { stock in
                NavigationLink(destination: StockDetailsView(stock: stock)) {
                    StockRowView(stock: stock)
                }
            }
        } else {
            ProgressView()
        }
    }
}

struct StockList_Prevsiews: PreviewProvider {
    static var previews: some View {
        StockListView()
    }
}
