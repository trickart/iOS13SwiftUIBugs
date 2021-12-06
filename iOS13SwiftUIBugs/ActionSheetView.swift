//
//  ActionSheetView.swift
//  iOS13SwiftUIBugs
//
//  Created by trick on 2021/12/06.
//

import SwiftUI

struct ActionSheetView: View {
    @State private var isPresented = false
    var body: some View {
        VStack {
            Button {
                UIAlertController.replaceActionSheetToAlert()
            } label: {
                Text("Replace ActionSheet to Alert")
            }
            Button {
                isPresented = true
            } label: {
                Text("ActionSheet")
            }
        }
        .actionSheet(isPresented: $isPresented) {
            ActionSheet(
                title: Text("ActionSheet"),
                buttons: [.default(Text("1")), .default(Text("2")), .cancel()]
            )
        }
    }
}

struct ActionSheetView_Previews: PreviewProvider {
    static var previews: some View {
        ActionSheetView()
    }
}
