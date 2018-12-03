//
//  ViewController.swift
//  Crayons
//
//  Created by Pritesh Nadiadhara on 12/3/18.
//  Copyright © 2018 Pritesh Nadiadhara. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    private var crayons = Crayon.allTheCrayons

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,let crayonDetaiViewController = segue.destination as? CrayonDetailViewController else {fatalError("missing index path, crayonDetailController")}
        let crayon = crayons[indexPath.row]
        crayonDetaiViewController.crayon = crayon
    }

}

extension CrayonViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = crayon.setColor()
        return cell
    } 
    
}
