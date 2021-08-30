//
//  EventView.swift
//  Journal
//
//  Created by Jacob Myers on 6/9/21.
//

import SwiftUI

struct EventRowView: View {
    // State vars
    @State private var description: String = ""
    @State private var isEditingDesc = false
    @State private var showGreeting = false
    
    // Params
    var isLifeChanging: Bool
    
    var body: some View {
        HStack {
            Circle()
                .fill(Color("TextColor"))
                .frame(
                    width: Constants.Views.EVENTROWEDIT_CIRCLE_WIDTH,
                    height: Constants.Views.EVENTROWEDIT_CIRCLE_HEIGHT
                )
            
            Text("This is test placeholder text for the time being - remove")
                .frame(width: Constants.Views.EVENTROWEDIT_TEXT_WIDTH)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .foregroundColor(Color("TextColor"))
//            .padding(.leading, UIScreen.main.bounds.width * 0.1)
            .font(.title3)

            if isLifeChanging {
                ZStack {
                    Circle()
                        .strokeBorder(
                            Color("TextColor"),
                            lineWidth: 2
                        )
                        .frame(
                            width: Constants.Views.EVENTROWEDIT_LCCIRCLE_WIDTH,
                            height: Constants.Views.EVENTROWEDIT_LCCIRCLE_HEIGHT
                        )
                    Circle()
                        .fill(Color.green)
                        .frame(
                            width: Constants.Views.EVENTROWEDIT_LCCIRCLE_WIDTH * 0.7,
                            height: Constants.Views.EVENTROWEDIT_LCCIRCLE_HEIGHT * 0.7
                    )
                }
            } else {
                Circle()
                    .strokeBorder(
                        Color("TextColor"),
                        lineWidth: 2
                    )
                    .frame(
                        width: Constants.Views.EVENTROWEDIT_LCCIRCLE_WIDTH,
                        height: Constants.Views.EVENTROWEDIT_LCCIRCLE_HEIGHT
                    )
            }
        }
    }
}

struct EventView_Previews: PreviewProvider {
    static var previews: some View {
        EventRowView(isLifeChanging: false)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        EventRowView(isLifeChanging: true)
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        EventRowView(isLifeChanging: false)
    }
}
