//
//  ResultViewController.swift
//  CalcApp
//
//  Created by MaedaAkira on 2017/06/06.
//  Copyright © 2017年 d_na_ser. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var priceValue = 0
    var percent = 0
    var percentValue:Float = 0
    var discountValue:Float = 0
    
    @IBOutlet weak var resultValueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultValueLabel.text = "$\(calcDiscountValue())"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func calcDiscountValue() -> Int{
        //割引後の金額を表示
        percentValue = Float(percent) / 100
        discountValue = Float(priceValue) * percentValue
        
        let resultValue = priceValue - Int(discountValue)
        return resultValue
    }
    
    
    @IBAction func backTop(_ sender: Any) {
        //入力画面に戻る
        self.navigationController?.popViewController(animated: true)
        
        //値を初期化
        let count = (self.navigationController?.viewControllers.count)! - 1
        let top = self.navigationController?.viewControllers[count] as! ViewController
        top.priceValue = 0
        top.percentValue = 0
    }

}
