//
//  FeedVC.swift
//  last-exercise-app-markbooster
//
//  Created by Mark Booster on 26-05-16.
//  Copyright © 2016 Mark Booster. All rights reserved.
//

import UIKit
import Firebase

class FeedVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        DataService.ds.REF_POSTS.observeEventType(.Value, withBlock: { snapshot in
            print(snapshot.value)
            
            if let snapshots = snapshot.children.allObjects as? [FDataSnapshot] {
                for snap in snapshots {
                    print("SNAP: \(snap)")
                }
            }
            
            
            self.tableView.reloadData()
        })


    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        return tableView.dequeueReusableCellWithIdentifier("PostCell") as! PostCell
    }
    
    


}
