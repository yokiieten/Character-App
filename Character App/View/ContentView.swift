//
//  ContentView.swift
//  Character App
//
//  Created by Yok on 6/1/2565 BE.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject private var contentVM = ContentViewViewModel()
    
    
    init() {
//                   reloadCharacters()
    }
    var body: some View {
       
        NavigationView {
            
            
                        CharacterListView(characters: contentVM.characters)
            
            .navigationTitle("Character APP")
//            .background(Color.gray)
        }
     
        


        
    }
    
    
    private func reloadCharacters() {
        self.contentVM.fetchOrders()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
