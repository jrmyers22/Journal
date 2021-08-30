//
//  DayView.swift
//  Journal
//
//  Created by Jacob Myers on 6/9/21.
//

import SwiftUI

struct DayView: View {
    // State vars
    @State private var totalDaysAlertIsShowing = false
    @State private var positiveItems = 3 //TODO: make this the real count
    @State private var negativeItems = 1 //TODO: make this the real count
    
    var body: some View {
        VStack {
            Text("06/15/2021")
                .font(.title)
                .bold()
                .frame(
                    width: Constants.Views.DAYVIEW_TEXT_WIDTH,
                    height: Constants.Views.DAYVIEW_TEXT_HEIGHT
                )
                .foregroundColor(.white)
                .background(Color("JournalCoverColor")).edgesIgnoringSafeArea(.all)
            
            ScrollView {
                
                // Positives section
                HStack {
                    Text("Positives")
                        .font(.largeTitle)
                        .foregroundColor(Color("TextColor"))
                        .bold()
                        .padding(.leading, 20)
                    Spacer()
                    Text("Life \nChanging?")
                        .padding(.trailing, 10)
                        .foregroundColor(Color("TextColor"))
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
                VStack {
//                    ForEach(0..<positiveItems, id: \.self) { _ in
//                        EventRowEditView(isPositive: true)
//                            .padding().padding(.top, -10)
//                    }
                    EventRowView(isLifeChanging: false)
                    EventRowView(isLifeChanging: false)
                    EventRowView(isLifeChanging: true)
                }
                
                // -----------------
                
                // Negatives section
                HStack {
                    Text("Negatives")
                        .font(.largeTitle)
                        .bold()
                        .padding(.leading, 20)
                        .padding(.top, 50)
                    Spacer()
                }
                VStack {
//                    ForEach(0..<negativeItems, id: \.self) { _ in
//                        EventRowEditView(isPositive: true)
//                            .padding().padding(.top, -10)
//                    }
                    EventRowView(isLifeChanging: false)
                }
                
                Spacer()
            }.padding(.top, Constants.Views.DAYVIEW_SCROLLVIEW_PADDING)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView()
            .preferredColorScheme(.dark)
        DayView()
    }
}
