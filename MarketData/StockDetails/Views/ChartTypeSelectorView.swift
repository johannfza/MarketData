//
//  SwiftUIView.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.
//

import SwiftUI

struct ChartTypeSelectorView: View {
    
    @Binding var type: POCChartType

    var body: some View {
        HStack {
            Text("Chart Type")
                .font(.headline)
            Spacer()
            Menu(type.rawValue) {
                Button(POCChartType.day_1min.rawValue) {
                    type = .day_1min
                }
                Button(POCChartType.day_5min.rawValue) {
                    type = .day_5min
                }
                Button(POCChartType.week_30min.rawValue) {
                    type = .week_30min
                }
                Button(POCChartType.week_1hour.rawValue) {
                    type = .week_1hour
                }
                Button(POCChartType.month_daily.rawValue) {
                    type = .month_daily
                }
                Button(POCChartType.threeMonths_daily.rawValue) {
                    type = .threeMonths_daily
                }
                Button(POCChartType.year_daily.rawValue) {
                    type = .year_daily
                }
                Button(POCChartType.fiveYears_weekly.rawValue) {
                    type = .fiveYears_weekly
                }
            }
        }
        .padding(10)
    }
}
