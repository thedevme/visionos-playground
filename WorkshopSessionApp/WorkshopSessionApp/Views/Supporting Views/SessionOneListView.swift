//
//  SessionOneItemView.swift
//  SII-BtnsModalsSheets
//
//  Created by Craig Clayton on 9/6/23.
//

import SwiftUI

struct SessionOneListView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                Text("HEADER 1")
                    .foregroundStyle(.primary)
                Text("Subheading")
                    .foregroundStyle(.secondary)
                Text("This text is tertiary")
                    .foregroundStyle(.tertiary)
            }
            .padding(.horizontal, 20)
            
            List {
                Text("Item 1")
                Text("Item 2")
            }
            .frame(height: 120)
        }
        
    }
}

#Preview {
    SessionOneListView()
}
