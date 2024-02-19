//
//  SessionOneToolbarView.swift
//  SII-BtnsModalsSheets
//
//  Created by Craig Clayton on 9/6/23.
//

import SwiftUI

struct SessionOneToolbarView: View {
    @State private var isShowingSettings = false
    @State private var selectedTagColor: TagColor = .blue
    @State var lists = [
        UserList(id: "Pewdipie", icon: "cloud.sun.circle.fill", isFollowing: false),
        UserList(id: "Markiplier", icon: "cloud.sun.rain.circle.fill", isFollowing: false),
        UserList(id: "AJourneyForWisdom", icon: "smoke.circle.fill", isFollowing: false),
        UserList(id: "GameTheory", icon: "wind.circle.fill", isFollowing: false),
        UserList(id: "QueenQuirks", icon: "tropicalstorm.circle.fill", isFollowing: false)
    ]
    
    var body: some View {
        VStack {
            HStack {
                ForEach($lists) { $list in
                    Toggle(isOn: $list.isFollowing) {
                        Label(list.id, systemImage: list.icon)
                    }
                    .toggleStyle(.button)
                    .buttonStyle(.borderless)
                    .labelStyle(.iconOnly)
                    .controlSize(.extraLarge)
                }
            }
            .padding()
            .sheet(isPresented: $isShowingSettings) {
                SettingsView()
            }
            .toolbar(content: {
                ToolbarItemGroup(placement: .topBarTrailing) {
                    settingsButton
                    Menu {
                        ControlGroup("Customize") {
                            Button {} label: {
                                Label("Add to Favorites", systemImage: "heart")
                            }
                            .buttonStyle(.bordered)
                            
                            Button {} label: {
                                Label("Share", systemImage: "square.and.arrow.up")
                            }
                            .buttonStyle(.plain)
                            
                            Button {} label: {
                                Label("Open Shopping Cart", systemImage: "cart")
                            }
                            .buttonStyle(.borderedProminent)
                        }
                        .controlGroupStyle(.compactMenu)
                        
                        
                        Picker("Select a tag color",
                               selection: $selectedTagColor) {
                            ForEach(TagColor.allCases) { tag in
                                Label(tag.rawValue.capitalized, systemImage: "tag")
                                    .tint(tag.color)
                            }
                        }
                    } label: {
                        Label("more", systemImage: "plus")
                    }
                }
        })
            
            
        
        }
    }
    
    private var settingsButton: some View {
        Button(action: { isShowingSettings = true }, label: {
            Label("New VM", systemImage: "gear").labelStyle(.iconOnly)
        })
    }
}

#Preview {
    SessionOneToolbarView()
}
