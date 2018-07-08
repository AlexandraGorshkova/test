//
//  Event.swift
//  Test
//
//  Created by Alexandra Gorshkova on 06.07.2018.
//  Copyright © 2018 Alexandra Gorshkova. All rights reserved.
//

import Foundation

import UIKit

class EventController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var start: UITextField!
    @IBOutlet weak var finish: UITextField!

    @IBOutlet weak var done: UIButton!
    var event: Event = Event()
    //let event: Event
    //var eventArray = [ String: [Int] ]()
    @IBAction func done(_ sender: Any) {
        
        event.name = name.text!
        event.start = Int(start.text!)
        event.finish = Int(finish.text!)
        //eventArray[nameInput] = [startInput,finishInput] as! [Int]
       // print(eventArray)       // eventArray.
    }
    
    
    
   
    
  //  eventArray[name.text!] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var dest : ViewController = segue.destination as! ViewController
        if !event.isEmpty() {
        dest.detailsEvent.append(event)
        }
    }

    
}
