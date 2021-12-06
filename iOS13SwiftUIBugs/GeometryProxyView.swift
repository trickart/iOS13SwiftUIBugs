//
//  GeometryProxyView.swift
//  iOS13SwiftUIBugs
//
//  Created by trick on 2021/12/07.
//

import SwiftUI

// https://developer.apple.com/forums/thread/129171
struct GeometryProxyView: View {
    @State private var scrollViewContentOffset = CGFloat(0)

    var body: some View {
        GeometryReader { geometryProxy in
            if geometryProxy.size.height > geometryProxy.size.width {
                portrait
                    .frame(width: geometryProxy.size.width, height: geometryProxy.size.height)
            } else {
                landscape
                    .frame(width: geometryProxy.size.width, height: geometryProxy.size.height)
            }
        }
    }

    var portrait: some View {
        VStack {
            Text("This is portrait. Crashes if Geometry reader is not wrapped in a NavigationView.")
        }
    }

    var landscape: some View {
        HStack {
            Text("This is landscape. Works.")
        }
    }
}

struct GeometryProxyView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryProxyView()
    }
}
