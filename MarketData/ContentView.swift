//
//  ContentView.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var vm: StockListViewModel
    
    var body: some View {
        NavigationView {
            StockList(stocks: vm.stocks)
                .navigationTitle("Stock List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView().environmentObject(StockListViewModel())
    }
}
