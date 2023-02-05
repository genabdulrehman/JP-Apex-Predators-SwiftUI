//
//  PredatorController.swift
//  JP Apex Predators
//
//  Created by Abdul Rehman on 05/02/2023.
//

import Foundation


class PredatorController {
    var apexPredators : [ApexPredator] = []
    
    init(){
        decodeApexPredatorData()
    }
    
    
    func decodeApexPredatorData()
    {
        if let url = Bundle.main.url(forResource: "jpapexpredators", withExtension: "json"){
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                apexPredators = try decoder.decode([ApexPredator].self, from: data)
                
            } catch {
                print("Erorr decoding JSON :  \(error)")
            }
        }
        
        
    }
}
