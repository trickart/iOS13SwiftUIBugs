//
//  UIAlertController+.swift
//  iOS13SwiftUIBugs
//
//  Created by trick on 2021/12/06.
//

import UIKit

extension UIAlertController {
    // https://qiita.com/noppefoxwolf/items/f09f0d7122f89f67bc5e
    static func replaceActionSheetToAlert() {
        let originalSelector = #selector(UIAlertController.init(title:message:preferredStyle:))
        let replacedSelector = #selector(UIAlertController.replaced_init(title:message:preferredStyle:))

        let originalMethod = class_getClassMethod(UIAlertController.self, originalSelector)!
        let replacedMethod = class_getClassMethod(UIAlertController.self, replacedSelector)!

        method_exchangeImplementations(originalMethod, replacedMethod)
    }

    @objc class func replaced_init(title: String?, message: String?, preferredStyle: UIAlertController.Style) -> UIAlertController {
        UIAlertController.replaced_init(title: title, message: message, preferredStyle: .alert)
    }
}
