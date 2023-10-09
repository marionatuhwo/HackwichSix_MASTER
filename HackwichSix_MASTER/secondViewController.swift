//
//  secondViewController.swift
//  HackwichSix_MASTER
//
//  Created by Marion Ano on 10/8/23.
//

import UIKit

class secondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    var myDestinationsArray = ["Japan", "New Zealand", "New York City"]

    
    @IBOutlet weak var tableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myDestinationsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
               let text = myDestinationsArray[indexPath.row]
               cell.textLabel?.text = text
               return cell

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
