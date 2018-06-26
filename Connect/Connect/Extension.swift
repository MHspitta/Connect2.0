//
//  Extension.swift
//  Connect
//
//  Created by Michael Hu on 14-06-18.
//  Copyright © 2018 Michael Hu. All rights reserved.
//

import Foundation
import UIKit

//MARK: - Extensions

// Extension to hide keyboard
extension UIViewController {
    
    // Function to hide keyboard
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer =     UITapGestureRecognizer(target: self, action:    #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
}

// Extenstion to pick Profile imgage 
extension ProfileEditViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        if let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.imageView.image = pickedImage
        }
        
        picker.dismiss(animated: true, completion: nil)
        
    }
}

//// Extension to random pick element from array
//extension Array {
//    func randomItem() -> Element? {
//        if isEmpty { return nil }
//        let index = Int(arc4random_uniform(UInt32(self.count)))
//        return self[index]
//    }
//}
//
//// Extension to shuffle arrays
//extension Array {
//    mutating func shuffle() {
//        for _ in indices {
//            sort { (_,_) in arc4random() < arc4random() }
//        }
//    }
//}

