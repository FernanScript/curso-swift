//
//  ImageExample.swift
//  app1
//
//  Created by Fernando Trejos on 02/04/25.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        Image("dawok")
            .resizable()
            .scaledToFill()
            .frame(width: 50, height: 90)
        
        Image(systemName: "wallet.bifold.fill")
            .resizable()
            .frame(width: 50, height: 50)
    }
}

#Preview {
    ImageExample()
}
