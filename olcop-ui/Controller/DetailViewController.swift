//
//  DetailViewController.swift
//  olcop-ui
//
//  Created by Phincon on 21/02/23.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var detailImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        detailImage.image = UIImage(named: "jam-tangan")
        self.tableView.separatorColor = .white
        
        let titleDescNib = UINib(nibName: "TitleDesc", bundle: nil)
        self.tableView.register(titleDescNib, forCellReuseIdentifier: "TitleDesc")
        self.tableView.register(Description.self, forCellReuseIdentifier: "Description")
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0 :
            guard let titleDescCell = tableView.dequeueReusableCell(withIdentifier: "TitleDesc", for: indexPath) as? TitleDesc else {
                return UITableViewCell()
            }
            return titleDescCell
            
        case 1 :
            guard let descCell = tableView.dequeueReusableCell(withIdentifier: "Description", for: indexPath) as? Description else {
                return UITableViewCell()
            }
            return descCell
            
        default :
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 1
       }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
}
