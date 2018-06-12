//
//  ViewController.swift
//  Hellow World
//
//  Created by Samuel's macbook on 2018/6/4.
//  Copyright © 2018年 Samuel. All rights reserved.
//

import UIKit //使用import關鍵字來取得外部框架

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //在載入視圖後，做另外的設定，通常是來自一個nib檔
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //對於任何可以重建的資源做處理
    }
    
    
    //使用func關鍵字來宣告一個方法
    @IBAction func showMessage(/*方法參數定義在括號內，在某些情況下也可以不用帶入參數*/) {
    //利用@IBAction關鍵字將這個方法公開給介面建構器
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hellow World",preferredStyle: UIAlertControllerStyle.alert)
        //建立UIAlertController物件並設定標題(title)、訊息(message)、樣式(style)，之後儲存至alertController變數
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        //呼叫addAction中方法來加入動作
        present(alertController,animated: true,completion: nil)
        //也可寫成 self.present(alertController,animated: true,completion: nil)，self. 可省略
        //顯示訊息並以動畫方式呈現alertController物件
    } //方法必須在類別中宣告，在這個範例中的類別是ViewController
}

