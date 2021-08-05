//
//  StockListDataService.swift
//  MarketData
//
//  Created by Johann Fong  on 6/8/21.
//

import Foundation

class StockListDataService: StockListService {
    
    let url = URL(string: "http://localhost:8000/StockInfoData.json")!
    
    
    func getTopStocks(completion: @escaping (Result<[StockInfoModel], StockListError>) -> Void) {
        getTopStocksAPI(completion: completion)
    }
    
    private func getTopStocksAPI(completion: @escaping (Result<[StockInfoModel], StockListError>) -> Void) {
        let session = URLSession.shared
        let task = session.dataTask(with: url, completionHandler: { data, response, error in
            // Ensure no errors
            guard error == nil else {
//                print(">>>>> Error Object: ", String(describing: error))
                completion(.failure(StockListError(code: "API_ERROR" , message: String(describing: error))))
                return
            }
            
            // Ensure data is present
            guard let data = data else {
                completion(.failure(StockListError(code: "API_DATA_ERROR" , message: "API data object is nil")))
                return
            }

            // Serialize the data into an object
            do {
                let decoder = JSONDecoder()
                let stocks: [StockInfoModel] = try decoder.decode([StockInfoModel].self, from: data)
                completion(.success(stocks))
//                print(">>>>> Stocks Array: ", String(describing: stocks))
            } catch {
//                print(">>>>> Serialization Error: ", String(describing: error))
                completion(.failure(StockListError(code: "SERIALIZATION_ERROR" , message: "Error parasing data into [StockInfoModel]")))
            }
        })
        task.resume()
    }
}
