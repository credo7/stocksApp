
    import Foundation
    import UIKit

    struct HeyApi {
        
        
    let url = "https://query1.finance.yahoo.com/v10/finance/quoteSummary/appl?modules=price"

        func checkStock(){

        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else {
                print("Something wrong")
                return
            }

            var result: UserModel?
            do {
                result = try JSONDecoder().decode(UserModel.self, from: data)
            }
            catch {
                print("failed to convert data \(error.localizedDescription)")
            }
            guard let json = result else {
                return
            }

            print(json.quoteSummary.result[0].price.longName)


        })


        task.resume()


    }
        
        
    }
