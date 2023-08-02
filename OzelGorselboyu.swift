//
//  OzelGorselboyu.swift
//  SuperHeroSwiftUI
//
//  Created by Nahide Sena Sabırlı on 2.08.2023.
//

import SwiftUI

struct OzelGorselboyu: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5)).shadow(radius: 12)
    }
}

struct OzelGorselboyu_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselboyu(image: Image("batman"))
    }
}
