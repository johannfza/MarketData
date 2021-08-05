//
//  MarketDataApp.swift
//  MarketData
//
//  Created by Johann Fong  on 4/8/21.
//

import SwiftUI

@main
struct MarketDataApp: App {
    
    @StateObject var vm = StockListViewModel(stockListService: StockListService())
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(vm)
        }
    }
}
