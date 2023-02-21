//
//  Description.swift
//  olcop-ui
//
//  Created by Phincon on 21/02/23.
//

import UIKit

class Description: UITableViewCell {
    
    static let identifier = "Description"

    private lazy var detailLabel : UILabel = {
        var stl = UILabel()
        stl.text = "Detail Product"
        stl.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        stl.translatesAutoresizingMaskIntoConstraints = false
        return stl
    }()
    
    private lazy var stockLabel : UILabel = {
        var stl = UILabel()
        stl.text = "Stock"
        stl.translatesAutoresizingMaskIntoConstraints = false
        return stl
    }()
    
    private lazy var stock : UILabel = {
        var stock = UILabel()
        stock.text = ": 20"
        stock.translatesAutoresizingMaskIntoConstraints = false
        return stock
    }()
    
    private lazy var sizeLabel : UILabel = {
        var stl = UILabel()
        stl.text = "Size"
        stl.translatesAutoresizingMaskIntoConstraints = false
        return stl
    }()
    
    private lazy var size : UILabel = {
        var stock = UILabel()
        stock.text = ": S"
        stock.translatesAutoresizingMaskIntoConstraints = false
        return stock
    }()
    
    private lazy var weightLabel : UILabel = {
        var stl = UILabel()
        stl.text = "Weight"
        stl.translatesAutoresizingMaskIntoConstraints = false
        return stl
    }()
    
    private lazy var weight : UILabel = {
        var stock = UILabel()
        stock.text = ": 200 gram"
        stock.translatesAutoresizingMaskIntoConstraints = false
        return stock
    }()
    
    private lazy var typeLabel : UILabel = {
        var stl = UILabel()
        stl.text = "Type"
        stl.translatesAutoresizingMaskIntoConstraints = false
        return stl
    }()
    
    private lazy var type : UILabel = {
        var stock = UILabel()
        stock.text = ": Accessories"
        stock.translatesAutoresizingMaskIntoConstraints = false
        return stock
    }()
    
    private lazy var descriptionLabel : UILabel = {
        var stl = UILabel()
        stl.text = "Description :"
        stl.translatesAutoresizingMaskIntoConstraints = false
        return stl
    }()
    
    private lazy var descr : UILabel = {
        var stl = UILabel()
        stl.translatesAutoresizingMaskIntoConstraints = false
        stl.frame = CGRect(x: 0, y: 0, width: 70, height: 30)
        stl.lineBreakMode = .byWordWrapping
        stl.numberOfLines = 7
        stl.font = UIFont.systemFont(ofSize: 16)
        stl.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Et integer turpis fermentum pulvinar adipiscing accumsan, dignissim viverra. Quisque hendrerit ac ipsum, malesuada odio netus. Eu, mauris ullamcorper neque ullamcorper arcu. Amet, condimentum adipiscing enim eu feugiat feugiat pharetra, tristique. Interdum ipsum amet, a nec. Fermentum in viverra suscipit at at sit. Metus condimentum augue erat."
        return stl
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupDesc()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)!
    }
    
    private func setupDesc(){
        self.addSubview(stockLabel)
        self.addSubview(detailLabel)
        self.addSubview(stock)
        self.addSubview(sizeLabel)
        self.addSubview(size)
        self.addSubview(weightLabel)
        self.addSubview(weight)
        self.addSubview(descr)
        self.addSubview(descriptionLabel)
        self.addSubview(type)
        self.addSubview(typeLabel)
        
        
        setupConstraint()
    }
    
    private func setupConstraint(){
        NSLayoutConstraint.activate([
            detailLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 2),
            detailLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 31)
        ])
        
        NSLayoutConstraint.activate([
            stockLabel.topAnchor.constraint(equalTo: self.detailLabel.bottomAnchor, constant: 23),
            stockLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 29)
        ])
        
        NSLayoutConstraint.activate([
            stock.topAnchor.constraint(equalTo: self.detailLabel.bottomAnchor, constant: 23),
            stock.leftAnchor.constraint(equalTo: self.stockLabel.rightAnchor, constant: 53)
        ])
        
        NSLayoutConstraint.activate([
            sizeLabel.topAnchor.constraint(equalTo: self.stockLabel.bottomAnchor, constant: 23),
            sizeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 29)
        ])
        
        NSLayoutConstraint.activate([
            size.topAnchor.constraint(equalTo: self.stock.bottomAnchor, constant: 23),
            size.leftAnchor.constraint(equalTo: self.sizeLabel.rightAnchor, constant: 63)
        ])
        
        NSLayoutConstraint.activate([
            weightLabel.topAnchor.constraint(equalTo: self.sizeLabel.bottomAnchor, constant: 23),
            weightLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 29)
        ])
        
        NSLayoutConstraint.activate([
            weight.topAnchor.constraint(equalTo: self.size.bottomAnchor, constant: 23),
            weight.leftAnchor.constraint(equalTo: self.weightLabel.rightAnchor, constant: 43)
        ])
        
        NSLayoutConstraint.activate([
            typeLabel.topAnchor.constraint(equalTo: self.weightLabel.bottomAnchor, constant: 23),
            typeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 29)
        ])
        
        NSLayoutConstraint.activate([
            type.topAnchor.constraint(equalTo: self.weight.bottomAnchor, constant: 23),
            type.leftAnchor.constraint(equalTo: self.typeLabel.rightAnchor, constant: 59)
        ])
        
        NSLayoutConstraint.activate([
            descriptionLabel.topAnchor.constraint(equalTo: self.typeLabel.bottomAnchor, constant: 23),
            descriptionLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 29)
        ])
        
        NSLayoutConstraint.activate([
            descr.topAnchor.constraint(equalTo: self.descriptionLabel.bottomAnchor, constant: 15),
            descr.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 29),
            descr.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -12),
            descr.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -29)
        ])
    }
}
