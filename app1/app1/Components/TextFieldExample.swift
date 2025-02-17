//
//  TextFieldExample.swift
//  app1
//
//  Created by Fernando Trejos on 02/08/25.
//

import SwiftUI

struct TextFieldExample: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        VStack {
            TextField("Escribe tu email", text: $email)
                .keyboardType(.emailAddress)
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(12)
                .padding(.horizontal)
                .onChange(of: email) {
                    oldValue,
                    newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo es \(newValue)")
                }
            SecureField("Escribe tu contraseña", text: $password)
                .keyboardType(.default)
                .padding()
                .background(.gray.opacity(0.2))
                .cornerRadius(12)
                .padding(.horizontal)
                .onChange(of: password) {
                    oldValue,
                    newValue in
                    print("El antiguo valor era \(oldValue) y el nuevo es \(newValue)")
                }
        }
    }
}

#Preview {
    TextFieldExample()
}
