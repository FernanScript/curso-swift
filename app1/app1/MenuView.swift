//
//  MenuView.swift
//  app1
//
//  Created by Fernando Trejos on 02/08/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            List {
                VStack {
                    NavigationLink(destination: IMCView()) {
                        Text("IMC Calculator")
                    }
                    NavigationLink(destination: SuperHeroSearchbar()) {
                        Text("Super Hero Search")
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
