//
//  ViewController.swift
//  TestApp_book
//
//  Created by 岩淵悠斗 on 2018/12/16.
//  Copyright © 2018 岩淵悠斗. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    let booktitle = ["あ","い","う","え" ,"お"]
    var selectedtitle : String?
    
    //    セルの個数を指定するデリゲートメソッド
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booktitle.count
    }
    
//    セルに値を固定するデータソースメソッド？
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        セルを取得する
        let cell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // セルに表示する値を設定する
        cell.textLabel!.text = booktitle[indexPath.row]
        return cell
    }
    
    // Cell が選択された場合
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        // [indexPath.row] から画像名を探し、UImage を設定
        selectedtitle = booktitle [indexPath.row]
        if selectedtitle != nil {
            // SubViewController へ遷移するために Segue を呼び出す
            performSegue(withIdentifier: "toDetailViewController",sender: nil)
        }
    }
    
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        if (segue.identifier == "toDetailViewController") {
            let  detailViewController = (segue.destination as? DetailViewController)!
            // SubViewController のselectedImgに選択された画像を設定する
           detailViewController.booktitle = selectedtitle
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
