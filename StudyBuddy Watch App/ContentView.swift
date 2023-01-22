//
//  ContentView.swift
//  StudyBuddy Watch App
//
//  Created by Marita Brichan on 2023-01-21.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timerObject = ViewModel()
    @State var count : Int = 1
    private let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    private let width: Double = 150
    //@State private var showAlert = false
    
    
    var body: some View {
        //       Buttons and Start Button
        ScrollView{
            if timerObject.isActive==false {
                VStack{
                    
                    HStack{
                        Text("Pomo Goal").font(.headline).bold().padding()
                    }
                    HStack {
                        
                            Button(action: {
                                timerObject.pomodoros = timerObject.pomodoros-1
                                print("Button tapped!")
                            }) {
                                Text("-")
                            }.cornerRadius(360).frame(maxWidth: 50).disabled(timerObject.pomodoros<=0)
                        
                        Text("   "+String(timerObject.pomodoros)+"   ").font(.largeTitle)
                        
                        Button(action: {
                            timerObject.pomodoros = timerObject.pomodoros+1
                            print("+")
                        })  {
                            Text("+")
                        }.cornerRadius(360).frame(maxWidth: 50)
                        
                    }.padding(6)
                    //                Start Button
                    
                    //                TODO Add some navigation to the timer
                    
                    Button("Start") {
                        timerObject.removePomodoros()
                        timerObject.start(minutes: timerObject.minutes)
                    }.tint(.green)
                    .disabled(timerObject.isActive).disabled(timerObject.pomodoros==0).padding(8)
//                    TODO Transfer to Tasklist Page
                    Image(systemName:"checklist")
                        .onTapGesture {
                        }
                } } else {
                    //        Time Component
                    VStack{
                        Text("\(timerObject.time)")
                            .font(.system(size: 50, weight: .medium, design: .rounded))
                            .alert("It's Break Time! 😉", isPresented: $timerObject.showingAlert, actions: {
                                  Button("✨OK✨") {}
                                }, message: {
                                  Text("You have worked very hard in the past 25 minutes and deserve some rest. 🍻")
                                })
                            .padding()
                            .frame(width: width)
//                        TODO When user clicks cancel show a sad message
                        HStack(spacing:4) {
                            Button("Nevermind !", action: timerObject.reset)
                                .tint(.red)
                        }
                        .frame(width: width)
                        .onReceive(timer) { _ in
                            timerObject.updateCountdown()
                        }
                    }
                    
                }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
