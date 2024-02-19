//
//  SessionOneDescriptionTwoView.swift
//  SII-BtnsModalsSheets
//
//  Created by Craig Clayton on 9/6/23.
//

import SwiftUI

struct SessionOneDescriptionTwoView: View {
    var body: some View {
        Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur consectetur dolor non leo porta congue. Sed nulla velit, blandit eu egestas ut, condimentum ac elit. Donec condimentum tortor aliquam, luctus libero vel, efficitur sapien. Nam pharetra, ante non condimentum placerat, eros neque scelerisque purus, in luctus risus dui nec ipsum. Phasellus semper vulputate risus vel ultrices. Vivamus tempor rutrum felis sed pretium. Donec mi odio, faucibus id nisl eget, commodo ultrices elit. Praesent tincidunt magna sed neque commodo accumsan. Morbi suscipit quis leo non imperdiet. Aenean commodo aliquam felis sit amet porta. Morbi pretium ex tellus, vel varius neque ornare rutrum.")
            .multilineTextAlignment(.leading)
            .padding(20)
            .background(.regularMaterial, in: .rect(cornerRadius: 10))
    }
}

#Preview {
    SessionOneDescriptionTwoView()
}
