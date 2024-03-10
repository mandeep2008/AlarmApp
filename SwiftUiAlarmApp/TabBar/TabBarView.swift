//
//  ContentView.swift
//  SwiftUiAlarmApp
//
//  Created by Geetika on 20/02/24.
//

import SwiftUI

struct TabBarView: View {
    @State var isNavigate = false
    @State var selectedDate = Date()
    @State public var tabViewSelection = 1
    init() {
        UITabBar.appearance().unselectedItemTintColor = UIColor.white
    }
    var body: some View {
        NavigationView{
            ZStack{
                Color(.black)
                    .ignoresSafeArea()
                TabView(selection: $tabViewSelection){
                    WorldClockTabView()
                        .tabItem {
                            Label("World Clock", systemImage: "globe")
                        }
                        .tag(0)
                    AlarmListTabView()
                        .tabItem {
                            Label("Alarm", systemImage: "alarm.fill")
                        }
                        .tag(1)
                    StopWatchView()
                        .tabItem {
                            Label("StopWatch", systemImage: "stopwatch")
                        }
                        .tag(2)
                    Text("")
                        .tabItem {
                            Label("Timer", systemImage: "timer")
                        }
                        .tag(3)
                }
                .accentColor(.yellow)
               
            }
        }
    }
}

#Preview {
    TabBarView()
}
