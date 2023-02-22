//
//  ContentView.swift
//  War Card Game
//
//  Created by Jacob Fredriksson on 2023-02-21.
//

import SwiftUI

struct WarGameView: View {
    
    @StateObject private var viewModel = WarGameModel()
    
    var body: some View {
           
     
        
        ZStack {
          
            Image("background-plain").resizable().ignoresSafeArea()
            
            VStack() {
                Spacer()
                Image("logo")
                    .padding(15)
                Spacer()
                HStack {
                    
                    Spacer()
                    
                    Image(viewModel.playerCard)
                    
                    Spacer()
                    
                    Image(viewModel.cpuCard)
                    
                    Spacer()
                    
                }
                Spacer()
                
                
         
                Button {
                    viewModel.deal()
                } label: {
                    Image("button")
                }

                
                
                
                Spacer()
                HStack {
                    
                    Spacer()
                    
                    VStack() {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(viewModel.playerScore)).font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack() {
                        Text("CPU").font(.headline) .padding(.bottom, 10.0)
                        Text(String(viewModel.cpuScore)).font(.largeTitle)
                    }
                    
                    Spacer()
                    
                }.foregroundColor(.white).padding(20)

        }.padding(20)
       
        }
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        WarGameView()
    }
}
