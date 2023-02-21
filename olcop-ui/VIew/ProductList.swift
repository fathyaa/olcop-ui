//
//  ProductList.swift
//  olcop-ui
//
//  Created by Phincon on 20/02/23.
//

import UIKit

class ProductList: UITableViewCell {
    static let identifier = "ProductList"
    
    let bgView : UIView = {
        let bgv = UIView()
        return bgv
    }()
    
    var imageList : UIImageView = {
        let il = UIImageView()
        return il
    }()
    
    var title : UILabel = {
        let t = UILabel()
        return t
    }()
    
    var price : UILabel = {
        let p = UILabel()
        return p
    }()
    
    var uploadDate : UILabel = {
        let ud = UILabel()
        return ud
    }()
    
    var likeButton : UIImageView = {
        let lb = UIImageView()
        return lb
    }()
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupComponents(){
        addSubview(bgView)
        bgView.addSubview(imageList)
        bgView.addSubview(title)
        bgView.addSubview(price)
        bgView.addSubview(uploadDate)
        bgView.addSubview(likeButton)
        
        setupBgView()
        setupImageList()
        setupTitle()
        setupPrice()
        setupUploadDate()
        setupLikeButton()
    }
    
    func setupBgView(){
        self.bgView.translatesAutoresizingMaskIntoConstraints = false
        self.bgView.topAnchor.constraint(equalTo: self.topAnchor, constant: 18).isActive = true
        self.bgView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        self.bgView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        self.bgView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -18).isActive = true
        self.bgView.layer.shadowColor = UIColor.black.cgColor
        self.bgView.layer.shadowRadius = 5
        self.bgView.backgroundColor = .white
        self.bgView.layer.shadowOpacity = 0.2
        self.bgView.layer.shadowOffset = .zero
    }

    func setupImageList(){
        imageList.translatesAutoresizingMaskIntoConstraints = false
        imageList.topAnchor.constraint(equalTo: self.bgView.topAnchor).isActive = true
        imageList.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor).isActive = true
        imageList.leftAnchor.constraint(equalTo: self.bgView.leftAnchor).isActive = true
        imageList.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageList.heightAnchor.constraint(equalToConstant: 120).isActive = true
    }
    
    func setupTitle(){
        title.translatesAutoresizingMaskIntoConstraints = false
        title.topAnchor.constraint(equalTo: self.bgView.topAnchor, constant: 14).isActive = true
        title.leftAnchor.constraint(equalTo: self.imageList.rightAnchor, constant: 12).isActive = true
        title.font = UIFont.systemFont(ofSize: 12)
    }
    
    func setupPrice(){
        price.translatesAutoresizingMaskIntoConstraints = false
        price.topAnchor.constraint(equalTo: self.title.bottomAnchor, constant: 9.01).isActive = true
        price.leftAnchor.constraint(equalTo: self.imageList.rightAnchor, constant: 12).isActive = true
        price.font = UIFont.systemFont(ofSize: 15, weight: .semibold)
    }
    
    func setupUploadDate(){
        uploadDate.translatesAutoresizingMaskIntoConstraints = false
        uploadDate.topAnchor.constraint(equalTo: self.bgView.topAnchor, constant: 6).isActive = true
        uploadDate.rightAnchor.constraint(equalTo: self.bgView.rightAnchor, constant: -8).isActive = true
        uploadDate.font = UIFont.systemFont(ofSize: 10, weight: .light)
    }
    
    func setupLikeButton(){
        likeButton.translatesAutoresizingMaskIntoConstraints = false
        likeButton.bottomAnchor.constraint(equalTo: self.bgView.bottomAnchor, constant: -12).isActive = true
        likeButton.rightAnchor.constraint(equalTo: self.bgView.rightAnchor, constant: -10).isActive = true
        likeButton.widthAnchor.constraint(equalToConstant: 30).isActive = true
        likeButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setText(title : String, price : String){
        self.title.text = title
        self.price.text = price
    }
}
