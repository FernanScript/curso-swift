//
//  SuperHeroSearchbar.swift
//  app1
//
//  Created by Fernando Trejos on 02/16/25.
//

import SwiftUI

struct SuperHeroSearchbar: View {
    @State var superHeroName: String = ""
    var body: some View {
        VStack {
            TextField(
                "Buscar",
                text: $superHeroName,
                prompt:
                    Text("Buscar")
                    .foregroundStyle(.gray)
            )
            .font(.title2)
            .bold()
            .foregroundStyle(.white)
            .padding()
            .border(.cyan, width: 1.5)
            .padding()
            .autocorrectionDisabled()
            .onSubmit {
                print("Super herooo")
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

#Preview {
    SuperHeroSearchbar()
}
