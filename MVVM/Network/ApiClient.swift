//
//  ApiClient.swift
//  MVVM
//
//  Created by Felben Abecia on 1/19/22.
//

import Foundation

public struct ApiClient {
    
    static func getDataFromServer( complete: @escaping (_ success: Bool, _ data: [Data]? )->() ){
        DispatchQueue.global().async {
            sleep(2)
            var dummyData: [Data] = [Data]()
            for i in 0...100{
                dummyData.append(Data(title: "Person \(i)", subTitle: "Personal Info"))
            }
            complete(true, dummyData)
            // If server gives an error, use "complete(false, nil)"
        }
    }
}
