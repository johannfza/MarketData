//
//  ChartType.swift
//  MarketData
//
//  Created by Johann Fong  on 8/8/21.
//

import Foundation

public enum POCChartType: String {
    case day_1min = "1D - 1 min"
    case day_5min = "1D - 5 min"
    case week_30min = "1W - 30 min"
    case week_1hour = "1W - 1h"
    case month_daily = "1M - Daily"
    case threeMonths_daily = "3M - Daily"
    case year_daily = "1Y - Daily"
    case fiveYears_weekly = "5Y - Weely"
}
