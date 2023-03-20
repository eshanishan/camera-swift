//
//  ViewController.swift
//  Camera Hack 2022
//
//  Created by Ishan Dhanani on 1/13/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate
{
    @IBOutlet weak var imageView: UIImageView!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        imagePicker.delegate = self
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any])
    {
        picker.dismiss(animated: true)
        {
            self.imageView.image = info[.originalImage] as? UIImage
        }
    }
    @IBAction func whenPhotoButtonPressed(_ sender: UIButton)
    {
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            imagePicker.sourceType = .photoLibrary
            present(imagePicker, animated: true, completion: nil)
        }
    }
    @IBAction func whenCameraButtonPressed(_ sender: UIButton)
    {
        if UIImagePickerController.isSourceTypeAvailable(.camera)
        {
            imagePicker.sourceType = .camera
        }
        else
        {
        present(imagePicker, animated: true, completion: nil)
        }
    }
}

