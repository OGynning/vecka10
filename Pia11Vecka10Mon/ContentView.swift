//
//  ContentView.swift
//  Pia11Vecka10Mon
//
//  Created by oscar gynning on 2022-11-14.
//

import SwiftUI

struct ContentView: View {
    
    @State var firstName = "Torsten"
    
    @State var number = 0.0
    
    @State var StartTime = Date()
    
    @State var  myTimer : Timer?
    
    @AppStorage("username") var userName = ""
    var body: some View {
        VStack {
            Image("bramble")
                .resizable()
                .frame(width: 100, height: 100)
            Text("hello")
            Text("welcome \(firstName)")
            
            Text("antal : \(number)")
                .font(.largeTitle)
            
            Button(action: {
                starttimer()
          
            })
                {Text("Start")
                
            }
            
            TextField("Namn", text: $userName)
           
        }
        .padding()
        .onAppear(){
            
            
            
            
            
        }
    }
    
    func starttimer(){
        if(myTimer != nil){
            myTimer?.invalidate()
        }
        StartTime = Date()
        
        
        
        myTimer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) { timer in
            let timedpassed = Date().timeIntervalSince(StartTime)
            
            number = timedpassed
            //                number = number + 0.1
        }
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView() .environment(\.locale, .init(identifier: "en"))
        
        ContentView()
                .environment(\.locale, .init(identifier: "se"))
    }
}
