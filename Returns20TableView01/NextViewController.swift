//
//  NextViewController.swift
//  Returns20TableView01
//
//  Created by 中塚富士雄 on 2020/05/14.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UIView!
    
    var image = UIImage()
    var text = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = image
//　　     label.text = text
        //　↑　これがなぜかわかりません？
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
