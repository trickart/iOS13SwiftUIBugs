//
//  ContentView.swift
//  iOS13SwiftUIBugs
//
//  Created by trick on 2021/12/06.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ActionSheetView()) {
                    Text("ActionSheet")
                }
                NavigationLink(destination: ButtonRenderModeView()) {
                    Text("ButtonRenderMode")
                }
                NavigationLink(destination: GeometryProxyView()) {
                    Text("GeometryProxy")
                }
                NavigationLink(destination: MultipleAlert()) {
                    Text("MultipleAlert")
                }
                NavigationLink(destination: PopoverView()) {
                    Text("Popover")
                }
            }
//            NavigationLink(destination: NavigationLinkView()) {
//                Text("NavigationLink")
//            }
            .navigationBarTitle("Bugs")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
