//
//  DetailViewController.swift
//  TestApp_book
//
//  Created by 岩淵悠斗 on 2018/12/20.
//  Copyright © 2018 岩淵悠斗. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var memo: UITextView!
    @IBOutlet weak var selectedtitle: UILabel!
    var  booktitle :String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedtitle.text = booktitle
        
        memo.text = ""
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backbutton(_ sender: Any) {
        
    self.dismiss(animated: true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        memo.text = textField.text
        return true
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
