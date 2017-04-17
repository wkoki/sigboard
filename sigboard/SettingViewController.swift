//
//  SettingViewController.swift
//  sigboard
//
//  Created by wataokakoki on 2017/04/14.
//  Copyright © 2017年 wataokakoki. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController, UIImagePickerControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pickImageFromLibrary() {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.photoLibrary) {
            //写真ライブラリ表示用のViewControllerを宣言
            let controller = UIImagePickerController()

            controller.delegate = self as? UIImagePickerControllerDelegate & UINavigationControllerDelegate

            //新しく宣言したViewControllerでカメラとカメラロールのどちらを表示するかを指定
            //.Cameraを指定した場合はカメラを呼び出し(シニュレーターでは不可)
            controller.sourceType = UIImagePickerControllerSourceType.photoLibrary

            //新たに追加したカメラロール表示ViewControllerをpresentViewControllerにする
            self.present(controller, animated: true, completion: nil)
        }
    }

    @IBAction func tapPhotoSelect(_ sender: UIButton) {
        pickImageFromLibrary()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
