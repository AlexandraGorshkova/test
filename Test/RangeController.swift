//
//  RangeController.swift
//  Test
//
//  Created by Alexandra Gorshkova on 09.07.2018.
//  Copyright © 2018 Alexandra Gorshkova. All rights reserved.
//

import Foundation
import UIKit

class RangeControlleer: UIViewController {
    
    @IBOutlet weak var collection: UICollectionView!
    @IBOutlet weak var start: UITextField!
    @IBOutlet weak var finish: UITextField!
    @IBOutlet weak var filtr: UIButton!
        
    var filtArray  = [ Event]()
    var restArray =  [ Event]()
    var startInput : Int? = nil
    var finishInput : Int? = nil
    @IBAction func filtr(_ sender: Any) {
        startInput = Int(start.text!)
        finishInput = Int(finish.text!)
        if startInput != nil && finishInput != nil {

         restArray = filtration(startt: startInput!, finishh: finishInput!)
             collection.reloadData()
        }
        collection.reloadData()
       
    }
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
      //  collection.reloadData()
        // Dispose of any resources that can be recreated.
    }
 
    

    func filtration(startt : Int, finishh: Int) -> Array<Event> {
       var resArray =  [ Event]()
        var start = startt
        let finish = finishh
        var min : Int = 1000
        var ind : Int = -1
          print(filtArray)
        while (start < finish) {
            for i in 1...filtArray.count {
                
                let elem = filtArray[i-1]
                if (elem.start! == start && elem.finish! <= finish){
                    if elem.finish! - elem.start! < min {
                      min = elem.finish! - elem.start!
                        ind = i-1
                    }
                }
            }
            if (ind >= 0) {
                start = filtArray[ind].finish!
                resArray.append(filtArray[ind])
            }
        }
//print(resArray)
        // collection.reloadData()
    return resArray
    }
        
    
    
}

extension RangeControlleer: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return restArray.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) ->
        UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier:"SomeItem", for: indexPath) as! CollectionViewCell
          //  CollectionViewCell
            cell.startCell.text = String(restArray[indexPath.row].start!)
            cell.eventCell.text = restArray[indexPath.row].name
            cell.finishCell.text = String(restArray[indexPath.row].finish!)
            
            
            return cell
    }
}
extension RangeControlleer: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
    }
}
