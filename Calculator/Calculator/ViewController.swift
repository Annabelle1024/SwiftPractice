//
//  ViewController.swift
//  Calculator
//
//  Created by Annabelle on 16/6/26.
//  Copyright © 2016年 annabelle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // 设置变量记录数值
    var Num1 = UITextField()
    var Num2 = UITextField()
    var result = UILabel()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }
    
    // MARK - 加法计算
    func clickButton () {
        
        // 数值计算一定要转成 int类型, 不然sring类型相加只是拼接字符串
        let sum = Int(Num1.text!)! + Int(Num2.text!)!
        
        result.text = "\(sum)"
        
    }
    

    // MARK - 搭建界面
    func setupUI () {
        
        // 文本框
        let num1 = UITextField()
        num1.frame = CGRect(x: 10, y: 100, width: 355, height: 50)
        num1.backgroundColor = #colorLiteral(red: 0.4120420814, green: 0.8022739887, blue: 0.9693969488, alpha: 1)
        num1.placeholder = "请输入第1个数字"
        // num1.setValue(UIColor.white(), forKeyPath: placeholderLabel.textColor)
        num1.textAlignment = .right
        num1.borderStyle = .roundedRect
        
        view.addSubview(num1)
        
        // 加号 标签
        let addSymbol = UILabel()
        addSymbol.frame = CGRect(x: 335, y: 160, width: 50, height: 50)
        addSymbol.backgroundColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1)
        addSymbol.text = "+"
        addSymbol.font = UIFont.boldSystemFont(ofSize: 25)
        addSymbol.textAlignment = .center
        
        view.addSubview(addSymbol)
        
        // 文本框
        let num2 = UITextField()
        num2.frame = CGRect(x: 10, y: 220, width: 355, height: 50)
        num2.placeholder = "请输入第2个数字"
        num2.backgroundColor = #colorLiteral(red: 0.4120420814, green: 0.8022739887, blue: 0.9693969488, alpha: 1)
        num2.textAlignment = .right
        num2.borderStyle = .roundedRect
        
        view.addSubview(num2)
        
        // 按钮
        let addButton = UIButton.init(type: .custom)
        addButton.frame = CGRect(x: 325, y: 280, width: 50, height: 50)
        addButton.setTitle("计算", for: UIControlState.init(rawValue: 0))
        addButton.setTitleColor(UIColor.black(), for: UIControlState.init(rawValue: 0))
        addButton.backgroundColor = #colorLiteral(red: 1, green: 0.99997437, blue: 0.9999912977, alpha: 1)
        // addButton.setTitle("高亮", for: UIControlState.highlighted)
        // addButton.setTitle("高亮", for: UIControlState.init(rawValue: 1))
        
        view.addSubview(addButton)
        
        // 和 标签
        let sum = UILabel()
        sum.frame = CGRect(x: 10, y: 330, width: 355, height: 50)
        sum.backgroundColor = #colorLiteral(red: 0.4120420814, green: 0.8022739887, blue: 0.9693969488, alpha: 1)
        sum.textAlignment = .right
        sum.layer.cornerRadius = 5
        sum.clipsToBounds = true
        
        // sum.borderStyle = .roundedRect
        
        view.addSubview(sum)
        
        // 记录 & 按钮监听
        
        Num1 = num1
        Num2 = num2
        result = sum
        
        addButton.addTarget(self, action: #selector(clickButton), for: .touchUpInside)
     
    }

}

