//
//  ContentView.swift
//  SuperHeroSwiftUI
//
//  Created by Nahide Sena Sabırlı on 2.08.2023.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView {
            List(superHeroArray) { SuperHero in
                NavigationLink(destination: DetayView(secilenHero: SuperHero),
                               label: {
                    ListeRowView(superHero : SuperHero)
                })
            }.navigationTitle(Text("SuperHero Books"))
        }
        
       }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
