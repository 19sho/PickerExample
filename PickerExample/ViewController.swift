//
//  ViewController.swift
//  PickerExample
//
//  Created by Johnpaulho on 10/25/17.
//  Copyright © 2017 ShoShoCodes. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let colors = ["red","yellow","green","blue"]
    let shapes = ["circle","square","triangle"]
    
    @IBOutlet weak var PickerThingy: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PickerThingy.delegate = self
        PickerThingy.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == 0{
            return colors.count
        } else{
            return shapes.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0{
            return colors[row]
        } else{
            return shapes[row]
        }
    }
    @IBAction func sillyButton(_ sender: UIButton) {
        sender.setTitle(colors[PickerThingy.selectedRow(inComponent: 0)], for:UIControlState.normal)
    }
}

