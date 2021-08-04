//
//  MarketDataApp.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

@main
struct MarketDataApp: App {
    
    @StateObject private var stocksViewModel = StocksViewModel(stocksService: MockStocksDataService())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(stocksViewModel)
        }
    }
}
