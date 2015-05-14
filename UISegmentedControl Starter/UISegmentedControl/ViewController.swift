//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Duc Tran on 5/5/15.
//  Copyright (c) 2015 Duc Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var segmentedControl: UISegmentedControl!
    let items = ["Apple", "Google", "Facebook"]
    let itemsWithImage = NSArray(objects: "Google", UIImage(named: "AppleIcon")!, "Facebook")
    
    // MARK: - IBOulet
    @IBOutlet weak var segmentTextLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segmentedControl = UISegmentedControl(items: itemsWithImage as [AnyObject])
        segmentedControl.center = CGPointMake(view.center.x, view.center.y + 200)
        
        view.addSubview(segmentedControl)
        
        segmentedControl.addTarget(self, action: "segmentedControlChanged:", forControlEvents: .ValueChanged)
    }
    
    // MARK: - Target Action
    func segmentedControlChanged(sender: UISegmentedControl)
    {
        let selectedIndex = sender.selectedSegmentIndex
        println(selectedIndex)
        
        if let selectedSegment = sender.titleForSegmentAtIndex(selectedIndex) {
            segmentTextLabel.text = selectedSegment
        }
    }
    
}
























