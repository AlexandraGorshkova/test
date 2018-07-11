//
//  ViewController.swift
//  Test
//
//  Created by Alexandra Gorshkova on 05.07.2018.
//  Copyright © 2018 Alexandra Gorshkova. All rights reserved.
//

import UIKit


class ViewController: UIViewController{

    
    @IBOutlet weak var table: UITableView!
    
    @IBOutlet weak var cell: TableViewCell!
    var detailsEvent = [ Event]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 //    print(detailsEvent)

  
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
        if (segue.identifier == "Present") {
            let destVC : RangeControlleer = segue.destination as! RangeControlleer //segue.destination as! RangeControlleer
        if !detailsEvent.isEmpty{
            destVC.filtArray = detailsEvent}
        }
    }
}


extension ViewController: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell : TableViewCell = tableView.dequeueReusableCell( withIdentifier: "Cell", for: indexPath) as! TableViewCell
        
        cell.label.text = detailsEvent[indexPath.row].name
        cell.starttt.text = String(detailsEvent[indexPath.row].start!)
        cell.finishhh.text = String(detailsEvent[indexPath.row].finish!)
        
        
        return cell
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailsEvent.count
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
 /*
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell  {
        
        let cell : UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) //as! TableViewCell
         
       // cell.eventtt.text = detailsEvent[indexPath.row].name

        cell.textLabel?.text = detailsEvent[indexPath.row].name
       
        return cell
    } */
}

