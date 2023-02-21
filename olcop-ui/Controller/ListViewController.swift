//
//  ViewController.swift
//  olcop-ui
//
//  Created by Phincon on 20/02/23.
//

import UIKit

class ListViewController: UIViewController {
    
    var tableView : UITableView!
    var product : [ProductStruct] = []
    
    let storeImage : UIImageView = {
        let simage = UIImageView()
        simage.image = UIImage(named: "store")
        
        simage.translatesAutoresizingMaskIntoConstraints = false
        
        return simage
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "nav")
        registerTableView()
        setupNavigation()
        
    }
    
    func setupTableView(){
        view.addSubview(tableView)
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        self.tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        self.tableView.leftAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leftAnchor).isActive = true
        self.tableView.rightAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.rightAnchor).isActive = true
    }
    
    func registerTableView(){
        tableView = UITableView()
        setupTableView()
        tableView.register(ProductList.self, forCellReuseIdentifier: ProductList.identifier)
        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorColor = .white
        view.addSubview(tableView)
        
    }
    
    func setupNavigation(){
        self.navigationController?.navigationBar.backgroundColor = UIColor(named: "nav")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: storeImage)
        
        NSLayoutConstraint.activate([
            storeImage.heightAnchor.constraint(equalToConstant: 60),
            storeImage.widthAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    func setData(){
        let jam1 = ProductStruct(title: "gucci", price: "30.000.000", stock: "98", size: "S", weight: "600", type: "accessories", descr: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat.", imageList: "jam-tangan")
        let jam2 = ProductStruct(title: "chanel", price: "50.000.000", stock: "90", size: "S", weight: "400", type: "", descr: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat.", imageList: "jam-tangan")
        let jam3 = ProductStruct(title: "louis vuitton", price: "40.000.000", stock: "99", size: "M", weight: "800", type: "accessories", descr: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat.", imageList: "jam-tangan")
        let jam4 = ProductStruct(title: "prada", price: "8.000.000", stock: "6", size: "L", weight: "700", type: "accessories", descr: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat.", imageList: "jam-tangan")
        let jam5 = ProductStruct(title: "cartier", price: "9.000.000", stock: "23", size: "L", weight: "500", type: "accessories", descr: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat.", imageList: "jam-tangan")

        product.append(jam1)
        product.append(jam2)
        product.append(jam3)
        product.append(jam4)
        product.append(jam5)
    }
                                                                
}

extension ListViewController : UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ProductList.identifier, for: indexPath) as? ProductList else { return UITableViewCell() }
        
        cell.setupComponents()
//        let parseProduct = product[]
        cell.imageList.image = UIImage(named: "jam-tangan")
        cell.title.text = "Jam tangan"
        cell.price.text = "Rp10.000"
        cell.likeButton.image = UIImage(named: "like-button")
        cell.uploadDate.text = "30 Agustus 2022"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "DetailStoryboard", bundle: nil)
        if let detail = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController { self.navigationController?.pushViewController(detail, animated: true)
            
        }
    }
}

