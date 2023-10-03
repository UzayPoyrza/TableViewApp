//
//  ViewController.swift
//  TableViewApp
//
//  Created by Uzay Poyraz on 3.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var tableView: UITableView!
    let sections = ["Courses", "ResLife", "Direct Messages", "Clubs", "Health", "Settings", "Switch to Icon View"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        print("you tapped me!")
    }
}

extension ViewController: UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = sections[indexPath.row]
        
        return cell
    }
}
