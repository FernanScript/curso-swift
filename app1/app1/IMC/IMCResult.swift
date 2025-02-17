//
//  IMCResult.swift
//  app1
//
//  Created by Fernando Trejos on 02/12/25.
//

import SwiftUI

struct IMCResult: View {
    let userWeight: Double
    let userHeight: Double
    
    var body: some View {
        VStack {
            Text("Tu resultado")
                .font(.title)
                .bold()
                .foregroundStyle(.white)
            let result = calculateIMC(weight: userWeight, height: userHeight)
            InformationView(result: result)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundApp)
    }
}

func calculateIMC(weight: Double, height: Double) -> Double {
    let result = weight / ((height/100)*(height/100))
    return Double(result)
}

struct InformationView: View {
    let result: Double
    var body: some View {
        let information = getIMCResult(result: result)
        VStack {
            Spacer()
            Text(information.0)
                .foregroundStyle(information.2)
                .font(.title)
                .bold()
            Spacer()
            Text("\(result, specifier: "%.2f")")
                .font(.system(size: 80))
                .bold()
                .foregroundStyle(.white)
            Spacer()
            Text(information.1)
                .foregroundStyle(.white)
                .font(.title2)
                .padding(.horizontal, 8)
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.backgroundComponent)
        .cornerRadius(16)
        .padding()
    }
}

func getIMCResult(result: Double) -> (String, String, Color) {
    let title: String
    let description: String
    let color: Color
    
    switch result {
    case 0.00...19.99:
        title = "Peso bajo"
        description = "Estás por debajo del peso recomendado según el IMC."
        color = Color.yellow
    case 0.00...24.99:
        title = "Peso normal"
        description = "Estás en el peso recomendado según el IMC."
        color = Color.green
    case 25.00...29.99:
        title = "Sobrepeso"
        description = "Estás por encima del peso recomendado según el IMC."
        color = Color.orange
    case 30.00...100:
        title = "Obesidad"
        description = "Estás muy por encima del peso recomendado según el IMC."
        color = Color.red
    default:
        title = "ERROR"
        description = "Ha ocurrido un error"
        color = Color.gray
    }
    
    return (title, description, color)
}

#Preview {
    IMCResult(userWeight: 80, userHeight: 190)
}
