//
//  ContentView.swift
//  app1
//
//  Created by Fernando Trejos on 02/04/25.
//

import SwiftUI

struct Exercise1: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: 100)
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 100)
            HStack {
                Circle()
                    .foregroundColor(.green)
                Rectangle()
                    .frame(width: 80, height: 200)
                Circle()
                    .foregroundColor(.purple)
            }
            Rectangle()
                .foregroundColor(.orange)
                .frame(height: 100)
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Rectangle()
                    .foregroundColor(.orange)
                Rectangle()
                    .foregroundColor(.yellow)
            }.frame(height: 100)
        }
        .background(.red)
    }
}

#Preview {
    Exercise1()
}

