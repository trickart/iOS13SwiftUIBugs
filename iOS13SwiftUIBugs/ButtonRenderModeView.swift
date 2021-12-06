//
//  ButtonRenderModeView.swift
//  iOS13SwiftUIBugs
//
//  Created by trick on 2021/12/06.
//

import SwiftUI

struct ButtonRenderModeView: View {
    var body: some View {
        VStack {
            Button{
                print("button!")
            } label: {
                Image("star")
            }
            Button{
                print("button!")
            } label: {
                Image("star")
                    .renderingMode(.original)
            }
        }
    }
}

struct ButtonRenderModeView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonRenderModeView()
    }
}
