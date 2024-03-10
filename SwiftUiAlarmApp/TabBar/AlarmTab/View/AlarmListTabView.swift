//
//  AlarmListView.swift
//  SwiftUiAlarmApp
//
//  Created by Geetika on 27/02/24.
//

import SwiftUI

struct AlarmListTabView: View {
    
    var body: some View {
        ZStack{
            Color.black
                .ignoresSafeArea()
            VStack(alignment: .leading){
                HStack{
                    Button(action: {}, label: {
                        Text("Done")
                            .foregroundColor(.yellow)
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                    })
                    Spacer()
                    
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                       Image(systemName: "plus")
                            .foregroundColor(.yellow)
                            .font(.system(size: 30))                        
                    })
                }
                .padding()
                
                Text("Alarm")
                    .foregroundStyle(.white)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                
                AlarmListView()
                Spacer()
                
                
            }
                
        }
        
    }
}

struct AlarmListView: View {
    
    let alarmList = [AddedAlarmListModel(time: "7:00", timeType: "AM"),
                     AddedAlarmListModel(time: "4:00", timeType: "PM"),
                     AddedAlarmListModel(time: "4:30", timeType: "PM")
    ]
    var body: some View {
        VStack{
            List(alarmList, id: \.id){ i in
                HStack{
                    Button(action: {}, label: {
                        Image(systemName: "minus.circle.fill")
                            .foregroundStyle(.orange)
                    })
                    
                    VStack(alignment: .leading){
                        HStack(spacing: 0){
                            Text(i.time ?? "")
                                .foregroundStyle(.gray)
                                .font(.system(size: 40))
                            Text(i.timeType ?? "")
                                .foregroundStyle(Color.gray)
                                .font(.system(size: 16))
                                .padding(.top)
                        }
                        
                        Text("Alarm")
                            .foregroundStyle(.gray)
                            .font(.system(size: 12))
                    }
                    .padding(.horizontal)
                   
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                        Image(systemName: "chevron.right")
                            .font(.system(size: 14))
                            .foregroundStyle(Color.gray)
                            
                    })
                }
                .listRowBackground(Color.black)
                .listRowSeparatorTint(Color.white)
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    AlarmListTabView()
}
