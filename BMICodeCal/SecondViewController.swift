//
//  SecondViewController.swift
//  BMICodeCal
//
//  Created by namit on 11/2/20.
//

import UIKit

class SecondViewController: UIViewController {
    
    let containerView: UIView = {
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false
        containerView.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        return containerView
    
    }()
    let yourLabel: UILabel = {
        let topView = UILabel()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.textColor = UIColor(red:0.996, green:0.996, blue:0.996, alpha: 1.000)
        topView.text = "Your Result"
//        topView.textAlignment = .center
        topView.font = UIFont.systemFont(ofSize: 40)
        return topView
    }()
    let bottomView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return topView
    }()
    let recalButton: UIButton = {
        let recal = UIButton()
        recal.translatesAutoresizingMaskIntoConstraints = false
        recal.setTitle("RECALCULATE", for: .normal)
        recal.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        recal.setTitleColor(UIColor.white, for: .normal)
        recal.backgroundColor = UIColor(red:0.902, green:0.251, blue:0.408, alpha: 1.000)
        return recal
    }()
    let label: UILabel = {
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.textColor = UIColor.red
        label1.font = UIFont.boldSystemFont(ofSize: 72)
        label1.text = "Chỉ số BMI "
        
        return label1
    }()
    
    let notiLabel: UILabel = {
        let notilabel = UILabel()
        notilabel.translatesAutoresizingMaskIntoConstraints = false
        notilabel.textColor = UIColor(red:0.541, green:0.761, blue:0.620, alpha: 1.000)
        notilabel.font = UIFont.boldSystemFont(ofSize: 30)
        notilabel.text = "Thông Báo"
        notilabel.textAlignment = .center
        return notilabel
        
    } ()
    let resuLabel: UILabel = {
        let notilabel = UILabel()
        notilabel.translatesAutoresizingMaskIntoConstraints = false
        notilabel.textColor = UIColor(red:0.541, green:0.761, blue:0.620, alpha: 1.000)
        notilabel.numberOfLines = 0
        notilabel.font = UIFont.systemFont(ofSize: 17)
        notilabel.text = "Trả lại chỉ số "
        notilabel.textAlignment = .center
        return notilabel
        
    } ()
    
    var BMICall: Double?
    var labelBMI: String?
    var resultLabel: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        addSubView()
        setLauOut()
        
        self.label.text = "\(round(BMICall!))"
        self.notiLabel.text = "\(labelBMI!)"
        self.resuLabel.text = "\(resultLabel!)"
        

        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        bottomView.layer.cornerRadius = 10
        recalButton.layer.cornerRadius = 5
        //set recal
        recalButton.addTarget(self, action: #selector(tapReturnHome), for: .touchUpInside)
        
    }
    func addSubView(){
        view.addSubview(containerView)        
        containerView.addSubview(recalButton)
        containerView.addSubview(bottomView)
        containerView.addSubview(label)
        containerView.addSubview(notiLabel)
        containerView.addSubview(resuLabel)
        containerView.addSubview(yourLabel)
    }
    func setLauOut(){
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        yourLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 64).isActive = true
        yourLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        yourLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        yourLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        recalButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -30).isActive = true
        recalButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        recalButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        recalButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        bottomView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 124).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: recalButton.topAnchor, constant: -20).isActive = true
        
        
        notiLabel.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 30).isActive = true
        notiLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        notiLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        notiLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true

        label.centerXAnchor.constraint(equalTo: containerView.centerXAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        
        resuLabel.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 70).isActive = true
        resuLabel.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 40).isActive = true
        resuLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -40).isActive = true
        resuLabel.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: 0).isActive = true
        
    }
    func initData(BMI: Double) {
         self.BMICall = BMI
     }
    func initNotiBMI(BMInoti: String) {
         self.labelBMI = BMInoti
     }
    func initNotiResultBMI(bmiResult: String) {
         self.resultLabel = bmiResult
     }
    
    @objc func tapReturnHome(_ sender: Any){
        self.dismiss(animated: true, completion: nil)
        print("đã tap")
        
    }


}
