//
//  Webservice.swift
//  Character App
//
//  Created by Yok on 6/1/2565 BE.
//

import Foundation

class WebService {
    func getAllCharacter(completion: @escaping ([Character]?) ->()) {
        
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else {
         completion(nil)
            return
        }
        URLSession.shared.dataTask(with: url) { data , response ,error in
            guard let data = data, error == nil else {
                DispatchQueue.main.async {
                completion(nil)
                }
                return
            }
            let characterResponse = try? JSONDecoder().decode(CharacterResponse.self, from: data)
            
            
            if let characterResponse = characterResponse {
                let characters = characterResponse.results
                completion(characters)
                
            } else {
                completion(nil)
            }
            
//           let characters = try? JSONDecoder().decode([Character].self, from: data)
//            DispatchQueue.main.async {
//                completion(characters)
//            }
           
        }.resume()
        
    }
    
}
