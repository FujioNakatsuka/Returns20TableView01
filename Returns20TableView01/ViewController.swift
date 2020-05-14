//
//  ViewController.swift
//  Returns20TableView01
//
//  Created by 中塚富士雄 on 2020/05/14.
//  Copyright © 2020 中塚富士雄. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    // UITableViewDelegate を追加
    // UITableViewDatasource を追加
    
    @IBOutlet weak var tableView: UITableView!
    //tableViewをView Controlle.swiftに接続
    
    var imageArray  = ["Viking.jpg","shoes.jpg","knife.jpg","fullface.jpg","classic.jpg"]
    
    var textArray = ["渋谷","新宿","上野","東京","品川"]
    
    var indexNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
        tableView.delegate = self
        tableView.dataSource = self
        //selfは自分＝TableViewのこと？
        //delegae：主にテーブルに対するユーザーのアクション処理を定義
        //datasource:テーブルに表示されるデータを定義する問い合わせ先
        
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
     
        return 1
        //セクションは一つだけなので1、複数のカテゴリに分けた表示をするならカテゴリ数を入れる
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
       //datasourceに必要なメソッド、セルは何個必要かを決める。
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //どんなセルが必要かを決める
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",for:  indexPath)
        //newer dequeue method guarantees a cell is returned and resized properly, assuming identifier is registered
        
        let imageView = cell.viewWithTag(1) as! UIImageView
        //Cellのタグ番号1をセル番号として保存
        
        imageView.image = UIImage(named: "\(imageArray[indexPath.row])")
       //バックスラッシュを使うのはなぜですか？
        
        let textLabel = cell.viewWithTag(2) as! UILabel
         //Labelのタグ番号2をセル番号として保存
        
        textLabel.text = textArray[indexPath.row]
         //textLabelのtextはテキスト配列内の順番に表示する
        
        return cell
        //CellとLabelの情報を持つcellをテーブルに表示する処理を定義
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 200
        //高さを決める
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //NextViewControllerにnextVCを入れるための準備
        
        indexNumber = indexPath.row
        //indexNumberは配列内の順番（cellが持つimageView/textLabel）で良いでしょうか？
        
        let nextVC = self.storyboard?.instantiateViewController(identifier: "next") as! NextViewController
        //nextのidentifierを持つViewControllerつまり、NextViewController上にnextVCを生成する
        
        nextVC.image = UIImage(named: "\(imageArray[indexPath.row])")!
        
        nextVC.text = textArray[indexNumber]
        //imageとtextを指定する
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        //nextVCをViewControllerに送り込む　→ このselfはViewContoroller？NextViewControoller？のどちらですか？
    
    }
    

}

