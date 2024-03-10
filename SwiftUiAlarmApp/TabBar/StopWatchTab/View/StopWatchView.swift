//
//  StopWatchView.swift
//  SwiftUiAlarmApp
//
//  Created by Geetika on 28/02/24.
//

import SwiftUI

struct StopWatchView: View {
    @State var stopwatchTimer: Timer?
    @State var elapsedTime: TimeInterval = 0
    @State var timeRemaining = 00*60*60
    let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            Text("\(timeString(time: timeRemaining))")
                .font(.system(size: 60))
                .frame(height: 80.0)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.white)
                .background(Color.black)
                .onReceive(timer){ _ in
                      if self.timeRemaining > 0 {
                         self.timeRemaining += 1
                      }else{
                         self.timer.upstream.connect().cancel()
                      }
                }
    
    
    
        }
    
    }
//    Convert the time into 24hr (24:00:00) format
    func timeString(time: Int) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        let milliseconds = Int(time) % 100
        return String(format: "%02d:%02d:%02d", minutes, seconds, milliseconds)

   
    }
}

#Preview {
    StopWatchView()
}



