//
//  StockPriceLineChartView.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.
//

import SwiftUI
import Charts

struct StockPriceLineChartView: UIViewRepresentable {
    
    @ObservedObject var vm: StockDetailsViewModel
        
    typealias UIViewType = LineChartView
    
    func makeUIView(context: Context) -> LineChartView {
        return LineChartView()
    }
    
    func updateUIView(_ uiView: LineChartView, context: Context) {
        guard let entires = vm.chartData[vm.selectedChartType] else {
            return
        }
        let dataSet = LineChartDataSet(entries: entires)
        uiView.noDataText = "No Data"
        uiView.legend.enabled = false
        uiView.setScaleEnabled(false)
        uiView.xAxis.enabled = false
        uiView.leftAxis.enabled = false
        uiView.rightAxis.enabled = false
        uiView.maxHighlightDistance = 9999999999
        uiView.highlightPerDragEnabled = true
        formatDataSet(dataSet: dataSet)
        uiView.data = LineChartData(dataSet: dataSet)
        
    }
    
    func formatDataSet(dataSet: LineChartDataSet) {
        dataSet.drawValuesEnabled = false
        dataSet.drawCirclesEnabled = false
        dataSet.drawHorizontalHighlightIndicatorEnabled = false
        dataSet.highlightEnabled = true
        dataSet.highlightColor = .blue
    }
}

struct StockPriceLineChartView_Previews: PreviewProvider {
    
    static let stock = StockListViewModel(stockListService: MockStockListDataService()).stocks?[0]
    
    static var vm = StockDetailsViewModel(stock: stock!)

    static var previews: some View {
        StockPriceLineChartView(vm: vm)
            .frame(minWidth: 0, idealWidth: 300, maxWidth: .infinity, minHeight: 500, idealHeight: 500, maxHeight: 500, alignment: .center)
        
    }
}
