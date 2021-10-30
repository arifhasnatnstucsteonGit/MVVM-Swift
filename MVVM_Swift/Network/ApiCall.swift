//
//  ApiCall.swift
//  MVVM_Swift
//
//  Created by DREAMONLINE on 30/10/21.
//

import Foundation

struct ApiCall {
    
    func parse(){
        let url = URL(string: "https://api.androidhive.info/contacts/")

        let task = URLSession.shared.dataTask(with: url!) { data, response, error in
            if let error = error {
                //self.handleClientError(error)
                print(error)
                return
            }
            
            do{
                let result = try JSONDecoder().decode(Contact.self, from: data!)
                print(result)
            }catch{
                
            }
        }
        task.resume()
        
    }
    
}
