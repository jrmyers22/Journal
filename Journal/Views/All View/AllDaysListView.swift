//
//  AllDaysListView.swift
//  Journal
//
//  Created by Jacob Myers on 6/9/21.
//

import SwiftUI

struct AllDaysListView: View {
    var body: some View {
        ZStack {
            Color("JournalCoverColor")
                .ignoresSafeArea()
            VStack {
                Text("06/15/2021")
                    .font(.title)
                    .bold()
                    .padding(.top, 5)
                    .foregroundColor(.white)
                ScrollView {
                    // TODO: Populate this with real values
                    DaySummaryRowView()
                    DaySummaryRowView(isPosLC: true, isNegLC: false)
                    DaySummaryRowView()
                    DaySummaryRowView(isPosLC: false, isNegLC: true)
                    DaySummaryRowView()
                    DaySummaryRowView()
                }
            }
        }
    }
}

struct AllDaysListView_Previews: PreviewProvider {
    static var previews: some View {
        AllDaysListView()
    }
}
