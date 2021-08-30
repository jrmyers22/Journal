//
//  LCCircleView.swift
//  Journal
//
//  Created by Jacob Myers on 6/10/21.
//

import SwiftUI

struct LCCircleView: View {
    // Params
    var isPosLC: Bool
    var isNegLC: Bool
    
    var body: some View {
        ZStack {
            if isPosLC {
                Circle()
                    .fill(Color.white)
                    .frame(
                        // TODO: Replace with real LC Image
                        // don't need to replace these with constants since they're temporary
                        width: UIScreen.main.bounds.width * 0.1,
                        height: UIScreen.main.bounds.width * 0.1
                    )
                    .padding()
                Text("LC")
                    .foregroundColor(Color("JournalCoverColor"))
            } else if isNegLC {
                Circle()
                    .strokeBorder(
                        Color.white,
                        lineWidth: 2
                    )
                    .frame(
                        // TODO: Replace with real LC Image
                        // don't need to replace these with constants since they're temporary
                        width: UIScreen.main.bounds.width * 0.1,
                        height: UIScreen.main.bounds.width * 0.1
                    )
                    .padding()
                Text("LC")
                    .foregroundColor(.white)
            } else {
                Circle()
                    .strokeBorder(
                        Color.black,
                        lineWidth: 0
                    )
                    .frame(
                        // TODO: Replace with real LC Image
                        // don't need to replace these with constants since they're temporary
                        width: UIScreen.main.bounds.width * 0.1,
                        height: UIScreen.main.bounds.width * 0.1
                    )
                    .padding()
            }
            
        }
    }
}

struct LCCircleView_Previews: PreviewProvider {
    static var previews: some View {
        LCCircleView(isPosLC: true, isNegLC: false)
        LCCircleView(isPosLC: false, isNegLC: true)
        LCCircleView(isPosLC: false, isNegLC: false)
    }
}
