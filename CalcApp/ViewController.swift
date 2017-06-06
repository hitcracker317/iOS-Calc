//
//  ViewController.swift
//  CalcApp
//
//  Created by MaedaAkira on 2017/06/06.
//  Copyright © 2017年 d_na_ser. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleText: UILabel!
    @IBOutlet weak var priceText: UITextField!
    @IBOutlet weak var changeButton: UIButton!
    
    var priceValue = 0
    var percentValue = 0
    
    
    var isInputPrice:Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    
    @IBAction func tapNumber1(_ sender: Any) {
        updatePriceText(value: "1")
    }
    @IBAction func tapNumber2(_ sender: Any) {
        updatePriceText(value: "2")
    }
    @IBAction func tapNumber3(_ sender: Any) {
        updatePriceText(value: "3")
    }
    @IBAction func tapNumber4(_ sender: Any) {
        updatePriceText(value: "4")
    }
    @IBAction func tapNumber5(_ sender: Any) {
        updatePriceText(value: "5")
    }
    @IBAction func tapNumber6(_ sender: Any) {
        updatePriceText(value: "6")
    }
    @IBAction func tapNumber7(_ sender: Any) {
        updatePriceText(value: "7")
    }
    @IBAction func tapNumber8(_ sender: Any) {
        updatePriceText(value: "8")
    }
    @IBAction func tapNumber9(_ sender: Any) {
        updatePriceText(value: "9")
    }
    @IBAction func tapNumber0(_ sender: Any) {
        updatePriceText(value: "0")
    }
    @IBAction func tapNumber00(_ sender: Any) {
        updatePriceText(value: "00")
    }
    @IBAction func tapClear(_ sender: Any) {
        priceText.text = "0"
    }
    
    func updatePriceText(value: String){
        print("入力した数値は\(value)")
        let price = priceText.text! + value
        let priceInt:Int = Int(price)!
        priceText.text = "\(priceInt)"
    }
    
    @IBAction func changePercent(_ sender: Any) {
        
        if isInputPrice {
            isInputPrice = false
            titleText.text = "割引%を入力してください"
            priceValue = Int(priceText.text!)!
            priceText.text = "0"
        } else {
            let percentValue:Float = Float(priceText.text!)! / 100.0
            
            print("計算される金額：\(priceValue)")
            print("割引率：\(percentValue)")
        }

    }

}

