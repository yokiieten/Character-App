//
//  CharacterListView.swift
//  Character App
//
//  Created by Yok on 6/1/2565 BE.
//

import SwiftUI

struct CharacterListView: View {
    
    let characters: [CharacterViewModel]
    
    let gridLayout: [GridItem] = Array(repeating: GridItem(.flexible()), count: 2)
    init(characters: [CharacterViewModel]) {
        self.characters = characters
    }
    
    
    var body: some View {
        
        
        ScrollView(.vertical, showsIndicators: false) {
        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
            ForEach(self.characters , id:\.id) { item in
                NavigationLink(destination: CharacterDetailView(character: item)) {
                    AsyncImage(url: URL(string: item.image))
                        .frame(width: 200 , height: 200)
                        .cornerRadius(10)
                    
                }
                
                
            }
        }
        }
        
        
        //        List {
        //            ForEach(self.characters , id:\.id) { character in
        //
        //                AsyncImage(url: URL(string: character.image))
        ////                    .frame(width: 100 , height: 100)
        //                    .cornerRadius(16)
        //                //                Text(character.name)
        //
        //            }
        //        }
    }
    
}

struct CharacterListView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterListView(characters: [CharacterViewModel(character: Character(id: 1, name: "22323", status: "iafdsfs" , species: "dfgfd" , gender: "gfdgdfgf" , image: "Fgdfgdf" ,created: "FSGfdgfd"))])
    }
}
