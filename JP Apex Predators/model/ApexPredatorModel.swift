//
//  ApexPredatorModel.swift
//  JP Apex Predators
//
//  Created by Abdul Rehman on 05/02/2023.
//

import Foundation


struct ApexPredator : Codable, Identifiable {
    let id : Int
    let name : String
    let type : String
    let movies : [String]
    let movieScenes : [MovieScenes]
    let link : String 
}


struct MovieScenes : Codable{
    let id : Int
    let movie : String
    let sceneDescription : String
}
