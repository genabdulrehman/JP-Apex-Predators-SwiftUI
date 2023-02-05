//
//  ContentView.swift
//  JP Apex Predators
//
//  Created by Abdul Rehman on 05/02/2023.
//

import SwiftUI

struct ContentView: View {
    let apController = PredatorController()
    var body: some View {
//        Text("Hellopw world")
//            .padding()
        NavigationView {
            List{
                ForEach(apController.apexPredators){ predators in
                    NavigationLink(destination: Text("Diansources details page")) {
                        Text(predators.name)
                    }
                     

                }
            }
            .navigationTitle("Apex Predators")
        }
     
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
