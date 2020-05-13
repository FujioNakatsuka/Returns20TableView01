//
//  ViewController.swift
//  Returns20TableView01
//
//  Created by 中塚富士雄 on 2020/05/14.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    var imageArray  = ["Viking.jpg","shoes.jpg","knife.jpg","fullface.jpg","classic.jpg"]
    
    var textArray = ["渋谷","新宿","上野","東京","品川"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableView.delegate = self
        tableView.dataSource = self
          
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for:  indexPath)
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        
        imageView.image = UIImage(named: "\(imageArray[indexPath.row])")
        
        
        let textLabel = cell.viewWithTag(2) as! UILabel
        
        textLabel.text = textArray[indexPath.row]
        
        return cell
        
    }
    

}

