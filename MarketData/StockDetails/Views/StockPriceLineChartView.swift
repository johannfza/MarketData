//
//  StockPriceLineChartView.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.
//

import SwiftUI
import Charts

struct StockPriceLineChartView: UIViewRepresentable {
    
    typealias UIViewType = LineChartView
    
    let entires: [ChartDataEntry]
    
    func makeUIView(context: Context) -> LineChartView {
        return LineChartView()
    }
    
    func updateUIView(_ uiView: LineChartView, context: Context) {
        let dataSet = LineChartDataSet(entries: entires)
        uiView.noDataText = "No Data"
        uiView.data = LineChartData(dataSet: dataSet)
        uiView.legend.enabled = false
        uiView.setScaleEnabled(false)
        uiView.xAxis.enabled = false
        uiView.leftAxis.enabled = false
        uiView.rightAxis.enabled = false
        print(uiView.highestVisibleX)
        print(uiView.lowestVisibleX)
        formatDataSet(dataSet: dataSet)
    }
    
    func formatDataSet(dataSet: LineChartDataSet) {
        dataSet.drawCirclesEnabled = false
        print(String(describing: dataSet.last))
    }
}

struct StockPriceLineChartView_Previews: PreviewProvider {
    
    static let vm = StockDetailsViewModel()
    
    static var previews: some View {
        if let entries = vm.dayChartDataEntries {
            StockPriceLineChartView(entires: entries)
        }
    }
}
