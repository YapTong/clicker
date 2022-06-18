//
//  ContentView.swift
//  clicker
//
//  Created by Chan Yap Tong on 18/6/22.
//

import SwiftUI

struct ContentView: View {
    @State var numberOfClicks = 0
    @State var isSheetShown = false
    var body: some View {
        VStack{
            Spacer()
            Text("\(numberOfClicks)")
                .font(.largeTitle)
            Spacer()
            
            if numberOfClicks == 50 {
                Text("You won!!!")
                    .font(.largeTitle)
                    .foregroundColor(.red)
                Text("Tap the button if you want to continue clicking")
            }
            
            Button{
                numberOfClicks += 1
            }label:{
                Text("press me")
                    .padding()
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(15)
                    .font(.title)
            }
            Spacer()
            
            if numberOfClicks == 10 {
                Text("Checkpoint 1 (\(numberOfClicks))")
                Text("Next checkpoint is 20")
            }
            
            if numberOfClicks == 20 {
                Text("Checkpoint 2 (\(numberOfClicks))")
                Text("Last checkpoint is 50")
            }
            
            if numberOfClicks == 50 {
                Text("Final checkpoint(\(numberOfClicks))")
            }
            
            Spacer()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
