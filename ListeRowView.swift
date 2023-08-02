//
//  ListeRowView.swift
//  SuperHeroSwiftUI
//
//  Created by Nahide Sena Sabırlı on 2.08.2023.
//

import SwiftUI

struct ListeRowView: View {
    var superHero : SuperHero
    var body: some View {
        HStack {
            Image(superHero.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100, alignment: .leading)
                .clipShape(Circle())
            Spacer()
            VStack {
                Text(superHero.name).font(.title)
                    .bold()
                Text(superHero.RealName)
            }
            
        }.padding()
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(superHero: Batman)
    }
}
