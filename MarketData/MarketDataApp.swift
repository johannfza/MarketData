//
//  MarketDataApp.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI
import ADEUMInstrumentation

@main
struct MarketDataApp: App {
    
    @StateObject var vm = StockListViewModel(stockListService: StockListDataService())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(vm)
        }
    }
}
