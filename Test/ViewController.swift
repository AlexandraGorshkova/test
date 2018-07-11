//
//  ViewController.swift
//  Test
//
//  Created by Alexandra Gorshkova on 05.07.2018.
//  Copyright © 2018 Alexandra Gorshkova. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    @IBOutlet weak var table: UITableView!
    
    var detailsEvent = [ Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
     print(detailsEvent)

  
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func myUnwindAction(unwindSegue: UIStoryboardSegue){
        
    }
    
    @IBAction func doneUnwindAction(unwindSegue: UIStoryboardSegue){
     //   print(detailsEvent[0].name)
        table.reloadData()
        
    }
    override  func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let destVC : RangeControlleer = segue.destination as! RangeControlleer
        if !detailsEvent.isEmpty{
            destVC.filtArray = detailsEvent}
    }
 
}


 extension ViewController: UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailsEvent.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)// as? UITableView
        
       // cell.textLabel?.text = "ggg"
        cell.textLabel?.text = detailsEvent[indexPath.row].name
        
  //      let srt : String? = String( detailsEvent[indexPath.row].start) as! String
      //  cell.detailTextLabel?.text = String( detailsEvent[indexPath.row].start!)+".."+String( detailsEvent[indexPath.row].finish!)
        
        //detailsEvent[indexPath.row].start
      //  name .text = detailsEvent[indexPath.row].name
      //  cell.name.text
      //  cell.StartCell.text = "1"
     //   cell.FinishCell.text = "3"
        
        return cell
    }
}

