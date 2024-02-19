//
//  SessionOne.swift
//  SII-BtnsModalsSheets
//
//  Created by Craig Clayton on 9/6/23.
//

import SwiftUI

struct SessionOne: View {
    var body: some View {
        VStack {
            SessionOneListView()
            SessionOneDescriptionTwoView()
                .padding(.horizontal, 20)
            SessionOneDescriptionView()
                .padding(.horizontal, 20)
        }
    }
}

#Preview {
    SessionOne()
}
