//
//  ViewController.swift
//  HackwichSix_MASTER
//
//  Created by Marion Ano on 10/8/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var myFriendsArray = ["Sara", "Nicole", "Grant"]

    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myFriendsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               let text = myFriendsArray[indexPath.row]
               cell.textLabel?.text = text
               return cell

    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

