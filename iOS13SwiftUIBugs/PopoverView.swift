//
//  PopoverView.swift
//  iOS13SwiftUIBugs
//
//  Created by trick on 2021/12/07.
//

import SwiftUI

struct PopoverView: View {
    @State private var isPresented = false

    var body: some View {
        Button {
            isPresented = true
        } label: {
            Text("Show Popover")
        }
        .popover(isPresented: $isPresented, arrowEdge: .bottom) {
            Text("Popover!")
        }
    }
}

struct PopoverView_Previews: PreviewProvider {
    static var previews: some View {
        PopoverView()
    }
}
