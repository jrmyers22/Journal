//
//  TodayEditView.swift
//  Journal
//
//  Created by Jacob Myers on 6/9/21.
//

import SwiftUI

struct TodayEditView: View {
    // State vars
    @State private var totalDaysAlertIsShowing = false
    @State private var positiveItems = 3
    @State private var negativeItems = 1
    
    var body: some View {
        VStack {
            Button(action: {
                totalDaysAlertIsShowing = true
            }) {
                Text("06/15/2021")
                    .font(.title)
                    .bold()
                    .padding(.top, 40)
                    .frame(
                        width: Constants.Views.TODAYEDIT_TEXT_WIDTH,
                        height: 100
                    )
                    .foregroundColor(.white)
                    .background(Color("JournalCoverColor")).edgesIgnoringSafeArea(.all)
            }.alert(isPresented: $totalDaysAlertIsShowing, content: {
                Alert(
                    title: Text("Total Days"),
                    message: Text("Today is your __ day journaling."),
                    dismissButton: .default(Text("Gotcha")))
            })
            
            ScrollView {
                
                // Positives section
                HStack {
                    Text("Positives")
                        .font(.largeTitle)
                        .bold()
                        .padding(.leading, 50)
                    Spacer()
                    Text("Life \nChanging?")
                        .padding(.trailing, 35)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
                ScrollView {
                    VStack {
                        ForEach(0..<positiveItems, id: \.self) { _ in
                            EventRowEditView(isPositive: true)
                                .padding().padding(.top, -10)
                        }
                    }
                }.frame(height: CGFloat(60 * positiveItems)) // only display 3 at a time
                
                // Add positives button
                Button(action: {
                    positiveItems += 1
                }) {
                    HStack {
                        Image(systemName: "plus.square")
                            .padding(.leading, 60)
                        Text("Add Positive")
                        Spacer()
                    }
                }
                
                // -----------------
                
                // Negatives section
                HStack {
                    Text("Negatives")
                        .font(.largeTitle)
                        .bold()
                        .padding(.leading, 50)
                        .padding(.top, 50)
                    Spacer()
                }
                ScrollView {
                    VStack {
                        ForEach(0..<negativeItems, id: \.self) { _ in
                            EventRowEditView(isPositive: true)
                                .padding().padding(.top, -10)
                        }
                    }
                }.frame(height: CGFloat(60 * negativeItems))
                
                // Add negatives button
                Button(action: {
                    negativeItems += 1
                }) {
                    HStack {
                        Image(systemName: "plus.square")
                            .padding(.leading, 60)
                        Text("Add Negative")
                        Spacer()
                    }
                }
                Spacer()
            }
            .frame(
                width: Constants.Views.TODAYEDIT_SCROLLVIEW_WIDTH,
                height: 675
            )
        }
        .padding(.top, 30)
        .edgesIgnoringSafeArea(.all)
    }
}

struct TodayEditView_Previews: PreviewProvider {
    static var previews: some View {
        TodayEditView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        TodayEditView()
    }
}
