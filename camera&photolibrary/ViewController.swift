//
//  ViewController.swift
//  camera&photolibrary
//
//  Created by Ahmed abu elregal on 11/21/18.
//  Copyright © 2018 Ahmed abu elregal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alertbuttin: UIButton!
    @IBAction func alertbuttin(_ sender: Any) {
        
//        let alertController = UIAlertController(title : "Just Smile", message : "Don't Speak More", preferredStyle : .alert)
//        let yes = UIAlertController(title : "Yes", style : .default)
//        {
//            (action : UIAlertAction!)in
//            print("Yes")
//            return
//        }
//        let no = UIAlertController(title : "No", style : .default)
//        {
//            (action : UIAlertAction!)in
//            print("no")
//            return
//        }
//        alertController.addAction(yes)
//        alertController.addAction(no)
//        present(alertController, animated: true, completion: nil)
        
        let actionSheet = UIAlertController(title : nil, message : nil, preferredStyle : .actionSheet)
        actionSheet.addAction(UIAlertAction(title: "Camera", style: .default, handler: { (alert : UIAlertAction!) in
            self.camera()
        }))
        
        
        actionSheet.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { (alert : UIAlertAction!) in
            self.photoLibrary()
        }))
        
        actionSheet.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func camera()
    {
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
        let myPickerController = UIImagePickerController()
            myPickerController.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate;
        myPickerController.sourceType = .camera
        self.present(myPickerController, animated : true, completion : nil)
        
    }
    }
    func photoLibrary()
    {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
            myPickerController.sourceType = .photoLibrary
            self.present(myPickerController, animated : true, completion : nil)
            
        }
    }
//    func videoLibrary()
//    {
//        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
//        {
//            let myPickerController = UIImagePickerController()
//            myPickerController.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate
//            myPickerController.sourceType = .photoLibrary
//            myPickerController.mediaTypes =
//                [kUTTypeMovie as String, kUTTypeVideo as String]
//            self.present(myPickerController, animated : true, completion : nil)
//
//        }
//    }
//    func documentPicker()
//    {
//        let ipmortMenu = UIDocumentPickerViewController(documentTypes: [String(kUTTypePDF)], in: .import)
//        ipmortMenu.delegat = self
//        ipmortMenu.modalPresentationStyle = .formSheet
//        self.present(ipmortMenu, animated: true , completion: nil)
//    }

}

