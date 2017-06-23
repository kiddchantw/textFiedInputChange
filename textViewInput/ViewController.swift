//
//  ViewController.swift
//  textViewInput
//
//  Created by 詹啟德 on 2017/6/5.
//  Copyright © 2017年 詹啟德. All rights reserved.
//
//  UIPickerView as input for UITextField in Swift
//  https://www.youtube.com/watch?v=DgHEL1bWQ58
//  https://www.youtube.com/watch?v=81MEUcx-mDA


import UIKit

class ViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{

    var dataArray = ["AAA","BBB","CCC"]
    
    @IBOutlet weak var tF: UITextField!
    
    var picker = UIPickerView()
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataArray.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        tF.text  = dataArray[row]
        self.view.endEditing(false)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return dataArray[row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        picker.delegate = self
        picker.dataSource = self
        
        tF.inputView = picker
        tF.placeholder = "click for UIPickerView"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

