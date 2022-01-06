//
//  CharacterDetailView.swift
//  Character App
//
//  Created by Yok on 6/1/2565 BE.
//

import SwiftUI

struct CharacterDetailView: View {
    
    let character : CharacterViewModel
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack {
                AsyncImage(url: URL(string: character.image))
                        .scaledToFit()
                        .cornerRadius(10)
                    Text(character.name.uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 8)
                        .foregroundColor(.primary)
                        .background(Color.black
                                        .frame(height: 6)
                                        .offset(y: 24))
                HStack{
                    Text("Status".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(character.status)
                        .font(.headline)
                        
                }.padding()
                HStack{
                    Text("gender".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(character.gender)
                        .font(.headline)
                        
                }.padding()
                HStack{
                    Text("species".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(character.species)
                        .font(.headline)
                        
                }.padding()
                
                HStack{
                    Text("created".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                    Spacer()
                    Text(character.created)
                        .font(.headline)
                        
                }.padding()
                
            }
      
            
        }
       
       
            
        
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(character: CharacterViewModel(character: Character(id: 3, name: "3545", status: "435435",species :"Alive", gender: "fgfg", image : "3434" , created : "dfsfgdsf"  )))
    }
}
