//
//  DaySummaryObjectView.swift
//  Journal
//
//  Created by Jacob Myers on 6/9/21.
//

import SwiftUI

struct DaySummaryRowView: View {
    // State vars
    @State private var isDayViewShowing = false
    
    // Params
    var isPosLC: Bool? = false
    var isNegLC: Bool? = false
    
    var body: some View {
        Button(action: {
            isDayViewShowing = true
        }) {
            ZStack {
                RoundedRectangle(cornerRadius: 25.0)
                    .strokeBorder(
                        Color.white,
                        lineWidth: 2
                    )
                    .frame(
                        width: Constants.Views.DAYSUMMARYRV_OUTLINE_WIDTH,
                        height: Constants.Views.DAYSUMMARYRV_OUTLINE_HEIGHT
                    )
                    HStack {
                        Spacer()
                        VStack {
                            Text("Thursday - 06/10/2021")
                                .bold()
                                .padding(.leading)
                                .font(.title2)
                                .foregroundColor(.white)
                            Text("REMOVE - this is placeholder..")
                                .foregroundColor(.white)
                                .padding(.leading, 15)
//                                .padding(.trailing, 30)
                        }
                        
                        if isPosLC ?? false {
                            LCCircleView(isPosLC: true, isNegLC: false)
                        } else if isNegLC ?? false {
                            LCCircleView(isPosLC: false, isNegLC: true)
                        }
                        else {
                            LCCircleView(isPosLC: false, isNegLC: false)
                        }
                        Spacer()
                    }
            }
        }.sheet(isPresented: $isDayViewShowing, content: {
            DayView()
        })
        
    }
}

struct DaySummaryObjectView_Previews: PreviewProvider {
    static var previews: some View {
        DaySummaryRowView(isPosLC: true)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        DaySummaryRowView(isPosLC: true)
        DaySummaryRowView(isNegLC: true)
        DaySummaryRowView().preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
