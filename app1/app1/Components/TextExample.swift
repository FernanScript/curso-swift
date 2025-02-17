//
//  TextExample.swift
//  app1
//
//  Created by Fernando Trejos on 02/04/25.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {
            Text("Holaaa").font(.largeTitle)
            Text("Custom").font(
                .system(
                    size: 40,
                    weight: .semibold,
                    design: .monospaced
                )
            )
            .italic()
            .underline()
            .foregroundColor(.brown)
            Text("fer fer fer fer fer fer")
                .frame(width: 50)
                .lineLimit(2)
                .lineSpacing(15)
        }
    }
}

#Preview {
    TextExample()
}
