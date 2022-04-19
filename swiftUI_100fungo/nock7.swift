//
//  nock7.swift
//  swiftUI_100fungo
//
//  Created by tomoyo_kageyama on 2022/04/19.
//

import SwiftUI

struct nock7: View {
    var pokemons = ["Snorlax", "Pikachu", "Slowpoke", "Meowth"]
    @State private var selectedPokemon = 0
    
    var body: some View {
        Picker("Pokemon", selection: $selectedPokemon) {

            ForEach(pokemons.indices) { index in
                Text("\(self.pokemons[index])")
            }
            //VStackなどに渡されるクロージャ引数は
            //@ViewBuilderと呼ばれる特殊なもので、その中には通常のfor文を書くことはできません。
            //単純な繰り返しを表現する場合には、ForEach構造体を使います。
            // error
//            for pokemon in pokemons {
//                Text(pokemon)
//            }
            
        }.pickerStyle(WheelPickerStyle())
            .onReceive([self.selectedPokemon].publisher.first()) { (value) in
                print("selectedPokemon: \(value)")
                print(self.pokemons[value])}
    }
}

struct nock7_Previews: PreviewProvider {
    static var previews: some View {
        nock7()
    }
}
