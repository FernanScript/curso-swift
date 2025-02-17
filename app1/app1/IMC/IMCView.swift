//
//  IMCView.swift
//  app1
//
//  Created by Fernando Trejos on 02/08/25.
//

import SwiftUI

struct IMCView: View {
//    init() {
//        UINavigationBar.appearance()
//            .titleTextAttributes = [.foregroundColor: UIColor.white]
//    }
    @State var gender: Int = 0
    @State var height: Double = 150
    @State var age: Int = 18
    @State var weight: Int = 70
    
    var body: some View {
        VStack{
            HStack {
                CardButton(text: "Hombre", imageName: "heart.fill", gender: 0, selectedGender: $gender)
                CardButton(text: "Mujer", imageName: "star.fill", gender: 1, selectedGender: $gender)
            }
            HeightCalculator(selectedHeight: $height)
            HStack {
                AgeWeight(text: "Edad", selectedDigit: $age)
                AgeWeight(text: "Peso", selectedDigit: $weight)
            }
            IMCCalculatorButton(userWeight: Double(weight), userHeight: height)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
//        .navigationTitle("IMC Calculator")
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("IMC Calculator")
                    .bold()
                    .foregroundStyle(.white)
            }
        }
    }
}

struct CardButton: View {
    let text: String
    let imageName: String
    let gender: Int
    @Binding var selectedGender: Int
    
    var body: some View {
        let color = if(gender == selectedGender) {
            Color.backgroundSelected
        } else {
            Color.backgroundComponent
        }
        Button(action: {
            selectedGender = gender
        }) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .foregroundStyle(.white)
                InformationText(text: text)
            }.frame(maxWidth: .infinity, maxHeight: .infinity).background(color)
        }
    }
}

struct IMCCalculatorButton: View {
    let userWeight: Double
    let userHeight: Double
    
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {IMCResult(userWeight: userWeight, userHeight: userHeight)}) {
                Text("Calcular")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.cyan)
                    .frame(maxWidth: .infinity, maxHeight: 100)
                    .background(.backgroundComponent)
            }
        }
    }
}

struct InformationText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .bold()
            .foregroundStyle(.white)
    }
}

struct TitleText: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.title2)
            .foregroundStyle(.gray)
    }
}

struct HeightCalculator: View {
    @Binding var selectedHeight: Double
    var body: some View {
        VStack {
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1)
                .tint(.cyan)
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

struct AgeWeight: View {
    let text: String
    @Binding var selectedDigit: Int
    
    var body: some View {
        VStack {
            TitleText(text: text)
            InformationText(text: text == "Peso" ? "\(String(selectedDigit)) kg" : String(selectedDigit))
            HStack {
                Button(action: {
                    if(selectedDigit != 0) {
                        selectedDigit -= 1
                    }
                }) {
                    Image(systemName: "minus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                }
                .padding()
                .background(.cyan)
                .cornerRadius(50)
                
                Button(action: {
                    if(selectedDigit < 100) {
                        selectedDigit += 1
                    }
                }) {
                    Image(systemName: "plus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 25, height: 25)
                        .foregroundStyle(.white)
                }
                .padding()
                .background(.cyan)
                .cornerRadius(50)
            }
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
    }
}

#Preview {
    IMCView()
}
