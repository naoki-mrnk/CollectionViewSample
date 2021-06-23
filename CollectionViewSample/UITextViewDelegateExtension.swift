//
//  UITextViewDelegateExtension.swift
//  CollectionViewSample
//
//  Created by naoki-mrnk on 2021/06/22.
//

import UIKit

extension ViewController: UITextViewDelegate {
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
