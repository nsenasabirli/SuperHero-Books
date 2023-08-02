//
//  DetayView.swift
//  SuperHeroSwiftUI
//
//  Created by Nahide Sena Sabırlı on 2.08.2023.
//

import SwiftUI

struct DetayView: View {
    var secilenHero : SuperHero
    var body: some View {
        VStack {
            MapView(coordinate: secilenHero.koordinatLocation)
                .frame(width: UIScreen.main.bounds.width * 2, height: UIScreen.main.bounds.height * 0.3)
                .edgesIgnoringSafeArea(.top)
            
            OzelGorselboyu(image: Image(secilenHero.imageName))
                .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
                .offset( y: UIScreen.main.bounds.height * -0.13)
            VStack {
                Text(secilenHero.name)
                    .frame(width: UIScreen.main.bounds.width * 1, height: UIScreen.main.bounds.height * 0.0)
                    .font(.largeTitle)
                    .foregroundColor(.black).bold()
                Text(secilenHero.RealName)
                    .font(.title)
                    .foregroundColor(.red).bold()
                    .padding()
            }.offset(y: -100.0)
            HStack {
                
                Text(secilenHero.city)
                    .foregroundColor(.purple)
                    .offset(x: 2,y: -150.0)
                
                Text(secilenHero.job)
                    .foregroundColor(.purple)
                    .offset(x: 200.0, y: -150.0)
                 
                Spacer()
                
                Text(secilenHero.info).foregroundColor(.blue)
                    .offset(x: -100.0, y: -50)
            }
        }.padding()
            .offset(y: UIScreen.main.bounds.height * -0.1)
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenHero: Superman)
    }
}
