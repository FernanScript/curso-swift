//
//  LabelExample.swift
//  app1
//
//  Created by Fernando Trejos on 02/08/25.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        Label("FERXO" , image: "dawok")
        Label("FERXO", systemImage: "person.fill.questionmark")
        Label(
            title: { Text("FERXO") },
            icon: {
                Image("dawok")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
        )
    }
}

#Preview {
    LabelExample()
}
