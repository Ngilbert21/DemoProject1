//
//  ViewController.swift
//  DemoProject1
//
//  Created by Nicholas Gilbert on 2/10/21.
//  Copyright © 2021 Nicholas Gilbert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let datePicker : UIDatePicker = UIDatePicker()
        
        
        datePicker.frame = CGRect(x:10, y:100, width: self.view.frame.width, height: 200)
        
        datePicker.timeZone = NSTimeZone.local
        datePicker.backgroundColor = UIColor.white

        
        //datePicker.addTarget(self, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        
        self.view.addSubview(datePicker)
    }
    
    func datePickerValueChanged(_ sender: UIDatePicker){
        let dateFormatter: DateFormatter = DateFormatter()
        
        dateFormatter.dateFormat = "MM/dd/yyyy hh:mm a"
        
        let selectedDate: String = dateFormatter.string(from: sender.date)
        
        print("Selected value \(selectedDate)")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

