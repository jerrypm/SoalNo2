//
//  SoalNo2ViewController.swift
//  SoalNo2
//
//  Created by Jeri Purnama Maulid on 07/07/18.
//  Copyright © 2018 Jeri Purnama Maulid. All rights reserved.
//

import UIKit

class SoalNo2ViewController: UIViewController {
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    @IBOutlet weak var listView: UITableView!
    
    var items: [Any] = []
    var itemss: [Any] = []
    
    func test(first: Int, second: Int) -> [Any] {
        
        for i in first...second {
            if i % 3 == 0 && i % 4 == 0 {
                items.append("Yeay!")
            } else if i % 3 == 0 {
                items.append(i)
            } else if i % 4 == 0 {
                items.append(i)
            }
        }
        return items
    }
    
    @IBAction func bProses(_ sender: UIButton) {
        items = []
        itemss.append((test(first: Int(input1.text!)!, second: Int(input2.text!)!)))
        self.listView.reloadData()
        print("list: \(itemss)")
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.listView.dataSource = self
        self.listView.delegate = self
        self.listView.register(UINib(nibName: "ListViewTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        self.listView.rowHeight = 40

    }

}

extension SoalNo2ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ListViewTableViewCell
        cell.labelList.text = "\(self.items[indexPath.item])"

        
        return cell
    }
 }
