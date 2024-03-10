//
//  NextView.swift
//  SwiftUiAlarmApp
//
//  Created by Geetika on 20/02/24.
//

import SwiftUI

struct WorldClockTabView: View {
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
                
                TimeZoneAddedListView()
                Spacer()
            }
            
        }
    }
}

struct TimeZoneAddedListView:View {
    var worldClockList = [TimeZoneListModel(countryName: "London"),
                          TimeZoneListModel(countryName: "New Delhi")]
    
    var body: some View {
        List(worldClockList, id: \.id){ i in
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "minus.circle.fill")
                        .foregroundStyle(.orange)
                })
                
                Text(i.countryName ?? "")
                    .font(.system(size: 26))
                    .foregroundStyle(Color.white)
                    .padding()
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "line.3.horizontal")
                        .font(.system(size: 20))
                        .foregroundStyle(Color.white)
                })
            }
            .listRowBackground(Color.black)
            .listRowSeparatorTint(Color.white)
            
            
        }
        .listStyle(.plain)

    }
}

#Preview {
    WorldClockTabView()
}
