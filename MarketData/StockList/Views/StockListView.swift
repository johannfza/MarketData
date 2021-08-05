//
//  StokList.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct StockListView: View {
    
    @EnvironmentObject var vm: StockListViewModel

    var body: some View {
        if let error = vm.stockListError {
            Text(error.message)
        } else if let stocks = vm.stocks {
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

struct StockList_Previews: PreviewProvider {
    static var previews: some View {
        StockListView().environmentObject(StockListViewModel(stockListService: MockStockListDataService()))
    }
}
