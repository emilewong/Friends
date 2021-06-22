//
//  FetchUsers.swift
//  Friends
//
//  Created by Emile Wong on 12/6/2021.
//

import Foundation

class FetchUsers: ObservableObject {
    @Published var users = [User]()
    
    init(){
        let urlString = "https://www.hackingwithswift.com/samples/friendface.json"
        let url = URL(string: urlString)!
        URLSession.shared.dataTask(with: url){(data, response, error) in
            do {
                if let userData = data {
                    let decodedData = try JSONDecoder().decode([User].self, from: userData)
                    DispatchQueue.main.async {
                        self.users = decodedData
                    }
                } else {
                    print("Failed to load data")
                }
            } catch {
                print("Error")
            }
//            
        }.resume()
    }
}
