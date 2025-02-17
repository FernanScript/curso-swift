//
//  ButtonExample.swift
//  app1
//
//  Created by Fernando Trejos on 02/08/25.
//

import SwiftUI

struct ButtonExample: View {
    var body: some View {
        Button("Confirmar") {
            print("éxitoo")
        }
        Button(
            action: { print("Actt") },
            label: {
                Text("Activo")
                    .frame(width: 100, height: 50)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(12)
            }
        )
    }
}

struct Counter: View {
    @State var totalMoney = 0
    var body: some View {
        Button(
            action: { totalMoney += 1 },
            label: {
                Text("money: $\(totalMoney)")
                    .padding()
                    .bold()
                    .font(.title)
                    .frame(height: 50)
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(12)
            }
        )
    }
}

#Preview {
    Counter()
}
