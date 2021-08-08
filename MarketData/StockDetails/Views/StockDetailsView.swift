//
//  StockDetailsView.swift
//  MarketData
//
//  Created by Johann Fong  on 5/8/21.
//

import SwiftUI

struct StockDetailsView: View {
    
    @StateObject var vm: StockDetailsViewModel
    
    public var stock: StockInfoModel
    
    @State var selectedChartType: POCChartType = .day_1min
    
    init(stock: StockInfoModel) {
        self.stock = stock
        _vm = StateObject(wrappedValue: StockDetailsViewModel(stock: stock))
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top)  {
                Text(stock.name)
                Spacer()
                RoundedRectangleImageView(urlString: stock.imageURL ?? "")
            }
            .padding()
            
            StockPriceLineChartView(vm: vm)
                .frame(minWidth: 400, idealWidth: 400, maxWidth: .infinity, minHeight: 400, idealHeight: 400, maxHeight: 400, alignment: .center)
            ChartTypeSelectorView(type: $vm.selectedChartType)
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)
        .navigationTitle(stock.symbol)
    }
}

struct StockDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        if let stock = StockListViewModel(stockListService: MockStockListDataService()).stocks?[0] {
            StockDetailsView(stock: stock)
        }
    }
}
