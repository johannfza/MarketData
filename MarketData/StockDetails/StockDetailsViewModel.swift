//
//  StockDetailsViewModel.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.

import Foundation
import Charts

class StockDetailsViewModel: ObservableObject {

    // MOCK Data
    private var day1minChartRsDTO: ChartDataRsDTO = JsonParser.load("Day1minChart.json")
    
    private var day5minChartRsDTO: ChartDataRsDTO = JsonParser.load("Day5minChart.json")
    
    private var week30minChartRsDTO: ChartDataRsDTO = JsonParser.load("Week30minChart.json")
    
    private var week1hourChartRsDTO: ChartDataRsDTO = JsonParser.load("Week1hourChart.json")
    
    private var monthsDailyChartRsDTO: ChartDataRsDTO = JsonParser.load("MonthDailyChart.json")
    
    private var threeMonthsDailyChartRsDTO: ChartDataRsDTO = JsonParser.load("ThreeMonthsDailyChart.json")
    
    private var yearDailyChartRsDTO: ChartDataRsDTO = JsonParser.load("YearDailyChart.json")
    
    private var fiveYearsDailyChartRsDTO: ChartDataRsDTO = JsonParser.load("FiveYearsDailyChart.json")

    
    @Published var chartData = [POCChartType : [ChartDataEntry]]()
    @Published var selectedChartType: POCChartType = .day_1min
    
    let stock: StockInfoModel
    
    init(stock: StockInfoModel) {
        self.stock = stock
        populateChartData()
    }
    
    func populateChartData() {
        // Calls api and populates
        chartData[.day_1min] = day1minChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.day_5min] = day5minChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.week_30min] = week30minChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.week_1hour] = week1hourChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.month_daily] = monthsDailyChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.threeMonths_daily] = threeMonthsDailyChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.year_daily] = yearDailyChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        chartData[.fiveYears_weekly] = fiveYearsDailyChartRsDTO.stockPriceDataPoints.enumerated().map { index, data in
            return ChartDataEntry(x: Double(index), y: data.close , data: data)
        }
        
    }
    
    
    
//    func getChartData(for type: ChartType) -> [ChartDataEntry] {
//        switch type {
//        case .day:
//            return dayChartDataRsDTO.stockPriceDataPoints.enumerated().map { index, data in
//                return ChartDataEntry(x: Double(index), y: data.close , data: data)
//            }
//        default:
//            fatalError()
//        }
//    }
}

