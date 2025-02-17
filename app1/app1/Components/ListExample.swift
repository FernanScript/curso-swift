//
//  ListExample.swift
//  app1
//
//  Created by Fernando Trejos on 02/16/25.
//

import SwiftUI

var pokemons: [Pokemon] = [
    Pokemon(name: "Pikachu"),
    Pokemon(name: "Charizard"),
    Pokemon(name: "Squirtle"),
    Pokemon(name: "Bulbasaur"),
    Pokemon(name: "Jigglypuff"),
]

var digimons: [Digimon] = [
    Digimon(name: "Fufumon"),
    Digimon(name: "Fusamon"),
    Digimon(name: "Dodomon"),
]
struct ListExample: View {
    var body: some View {
//        LISTA PEPERA
//        List {
//            Text("Prueba")
//            Text("Prueba")
//            Text("Prueba")
//            Text("Prueba")
//            Text("Prueba")
//        }
        
//        LISTA CON FOREACH CON ID
//        List {
//            ForEach(pokemons, id: \.name) { pokemon in
//                Text(pokemon.name)
//            }
//        }
        
//        LISTA CON FOREACH SIN ID
//        List {
//            ForEach(digimons) { digimon in
//                Text(digimon.name)
//            }
//        }
        
//        LISTA SIN FOREACH
//        List(digimons) { digimon in
//            Text(digimon.name)
//        }
        
//        LISTA CON SECCIONES
        List {
            Section(header: Text("Pokemons")) {
                ForEach(pokemons, id: \.name) { pokemon in
                    Text(pokemon.name)
                }
            }
            
            Section(header: Text("Digimons")) {
                ForEach(digimons) { digimon in
                    Text(digimon.name)
                }
            }
        }
        .listStyle(.automatic)
    }
}

struct Pokemon {
    let name: String
}

struct Digimon: Identifiable {
    let id = UUID()
    let name: String
}

#Preview {
    ListExample()
}
