//
//  MultipleAlert.swift
//  iOS13SwiftUIBugs
//
//  Created by trick on 2021/12/06.
//

import SwiftUI

// https://developer.apple.com/forums/thread/665875
struct MultipleAlert: View {
    @State private var message: MessageInfo?

    var body: some View {
        Text("Test Alert Updating")
            .font(.largeTitle)
            .alert(item: $message) { message in
            Alert(
                title: Text(message.title),
                dismissButton: .default(Text("OK"))
            )
          }
          .onAppear {
              DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                  message = .init(title: "Alert 1")
              }
              DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                  message = .init(title: "Alert 2")
              }
          }
    }
}

struct MessageInfo: Identifiable {
  let title: String
  var id: String { title }
}


struct MultipleAlert_Previews: PreviewProvider {
    static var previews: some View {
        MultipleAlert()
    }
}
