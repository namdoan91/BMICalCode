//
//  ViewController.swift
//  BMICodeCal
//
//  Created by namit on 10/31/20.
//

import UIKit

class ViewController: UIViewController {
    
    let containerView: UIView = {
        let giaodien = UIView()
        giaodien.translatesAutoresizingMaskIntoConstraints = false
        giaodien.backgroundColor = UIColor.black
        return giaodien
    }()
    let topView: UIView = {
        let topView = UIView()
        topView.translatesAutoresizingMaskIntoConstraints = false
        topView.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        return topView
    }()
    let bmiLabel: UILabel = {
        let bmi = UILabel()
        bmi.translatesAutoresizingMaskIntoConstraints = false
        bmi.text = "BMI CALCULATOR"
        bmi.textAlignment = .center
        bmi.textColor = UIColor.white
        bmi.font = UIFont.boldSystemFont(ofSize: 25)
        return bmi
    }()
    let bottomView: UIView = {
        let bottom = UIView()
        bottom.translatesAutoresizingMaskIntoConstraints = false
        bottom.backgroundColor = UIColor(red: 0.11, green: 0.13, blue: 0.21, alpha: 1.00)
        return bottom
    }()
    let buttonCal: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("CALCULATE", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 25)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor(red:0.902, green:0.251, blue:0.408, alpha: 1.000)
        return button
    }()
    let maleVIew: UIView = {
        let male = UIView()
        male.translatesAutoresizingMaskIntoConstraints = false
        male.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        
        return male
        
    }()
    let femaleView: UIView = {
        let feView = UIView()
        feView.translatesAutoresizingMaskIntoConstraints = false
        feView.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        //        feView.backgroundColor = UIColor.red
        
        
        return feView
    }()
    let heightView: UIView = {
        let height = UIView()
        height.translatesAutoresizingMaskIntoConstraints = false
        height.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return height
    }()
    let weightView: UIView = {
        let height = UIView()
        height.translatesAutoresizingMaskIntoConstraints = false
        height.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return height
    }()
    let ageView: UIView = {
        let height = UIView()
        height.translatesAutoresizingMaskIntoConstraints = false
        height.backgroundColor = UIColor(red: 0.20, green: 0.20, blue: 0.27, alpha: 1.00)
        return height
    }()
    let maleImage: UIImageView = {
        let maleImage = UIImageView()
        maleImage.translatesAutoresizingMaskIntoConstraints = false
        maleImage.image = UIImage(named:"male")
        return maleImage
    }()
    let femaleImage: UIImageView = {
        let femaleImage = UIImageView()
        femaleImage.translatesAutoresizingMaskIntoConstraints = false
        femaleImage.image = UIImage(named:"female")
        return femaleImage
    }()
    let maleLabel: UILabel = {
        let maleLabel = UILabel()
        maleLabel.translatesAutoresizingMaskIntoConstraints = false
        maleLabel.text = "MALE"
        maleLabel.textAlignment = .center
        maleLabel.textColor = UIColor(red:0.518, green:0.525, blue:0.576, alpha: 1.000)
        return maleLabel
    }()
    let femaleLabel: UILabel = {
        let femaleLabel = UILabel()
        femaleLabel.translatesAutoresizingMaskIntoConstraints = false
        femaleLabel.text = "FEMALE"
        femaleLabel.textAlignment = .center
        femaleLabel.textColor = UIColor(red:0.518, green:0.525, blue:0.576, alpha: 1.000)
        return femaleLabel
    }()
    let heightLabel: UILabel = {
        let heightLabel = UILabel()
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        heightLabel.text = "HEIGHT"
        heightLabel.textAlignment = .center
        heightLabel.textColor = UIColor(red:0.518, green:0.525, blue:0.576, alpha: 1.000)
        heightLabel.font = UIFont.boldSystemFont(ofSize: 17)
        
        return heightLabel
    }()
    let weightLabel: UILabel = {
        let weightLabel = UILabel()
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        weightLabel.text = "WEIGHT"
        weightLabel.textAlignment = .center
        weightLabel.textColor = UIColor(red:0.518, green:0.525, blue:0.576, alpha: 1.000)
        weightLabel.font = UIFont.boldSystemFont(ofSize: 17)
        
        return weightLabel
    }()
    let ageLabel: UILabel = {
        let ageLabel = UILabel()
        ageLabel.translatesAutoresizingMaskIntoConstraints = false
        ageLabel.text = "AGE"
        ageLabel.textAlignment = .center
        ageLabel.textColor = UIColor(red:0.518, green:0.525, blue:0.576, alpha: 1.000)
        ageLabel.font = UIFont.boldSystemFont(ofSize: 17)
        return ageLabel
    }()
    let slidebutton: UISlider = {
        let slide = UISlider()
        slide.translatesAutoresizingMaskIntoConstraints = false
        slide.minimumValue = 20
        slide.maximumValue = 200
        slide.tintColor = UIColor(red:0.600, green:0.349, blue:0.443, alpha: 1.000)
        
        return slide
    }()
    let slideLabel: UILabel = {
        let slilabel = UILabel()
        slilabel.font = UIFont.boldSystemFont(ofSize: 56)
        slilabel.translatesAutoresizingMaskIntoConstraints = false
        slilabel.textColor = UIColor(red:1.000, green:1.000, blue:1.000, alpha: 1.000)
        slilabel.text = "20 cm"
        return slilabel
    }()
    let weightIntLabel: UILabel = {
        let weightlabel = UILabel()
        weightlabel.translatesAutoresizingMaskIntoConstraints = false
        weightlabel.textColor = UIColor(red:1.000, green:1.000, blue:1.000, alpha: 1.000)
        weightlabel.font = UIFont.boldSystemFont(ofSize: 40)
        weightlabel.text = "50"
        return weightlabel
    }()
    var minusButton: UIButton = {
        let minusBut = UIButton()
        minusBut.translatesAutoresizingMaskIntoConstraints = false
        minusBut.setImage(UIImage(named: "minus2"), for: .normal)
        return minusBut
        
    }()
    let minus2Button: UIButton = {
        let minusBut = UIButton()
        minusBut.translatesAutoresizingMaskIntoConstraints = false
        minusBut.setImage(UIImage(named: "minus2"), for: .normal)
        return minusBut
        
    }()
    let plusButton: UIButton = {
        let minusBut = UIButton()
        minusBut.translatesAutoresizingMaskIntoConstraints = false
        minusBut.setImage(UIImage(named: "plus2"), for: .normal)
        return minusBut
        
    }()
    let plus2Button: UIButton = {
        let minusBut = UIButton()
        minusBut.translatesAutoresizingMaskIntoConstraints = false
        minusBut.setImage(UIImage(named: "plus2"), for: .normal)
        return minusBut
        
    }()
    let ageIntLabel: UILabel = {
        let ageweightlabel = UILabel()
        ageweightlabel.translatesAutoresizingMaskIntoConstraints = false
        ageweightlabel.textColor = UIColor(red:1.000, green:1.000, blue:1.000, alpha: 1.000)
        ageweightlabel.font = UIFont.boldSystemFont(ofSize: 40)
        ageweightlabel.text = "20"
        return ageweightlabel
    }()
    var weight : Int = 50
    var age: Int = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSubView()
        setLayOut()
        
        //set calculator
        buttonCal.addTarget(self, action: #selector(buttonCalCu), for: .touchUpInside)
        
        
        
        //set slide tăng giảm
        slidebutton.addTarget(self, action: #selector(tangGiam), for: .valueChanged)
        //        slideLabel.text = "\(Int(slidebutton.value)) cm"
        
        //set male tương tác
        let tapMale = UITapGestureRecognizer(target: self, action: #selector(tapMaleView))
        maleVIew.addGestureRecognizer(tapMale)
        maleVIew.isUserInteractionEnabled = true
        
        //set female tương tác
        let tapFeMale = UITapGestureRecognizer(target: self, action: #selector(tapFeMaleView))
        femaleView.addGestureRecognizer(tapFeMale)
        femaleView.isUserInteractionEnabled = true
        
        let minuTru = UILongPressGestureRecognizer(target: self, action: #selector(minusHamWeight))
        minuTru.minimumPressDuration = 0
        minusButton.addGestureRecognizer(minuTru)
        
        let plusCong = UILongPressGestureRecognizer(target: self, action: #selector(plusHamWeight))
        plusCong.minimumPressDuration = 0
        plusButton.addGestureRecognizer(plusCong)
        
        let minuAgeTru = UILongPressGestureRecognizer(target: self, action: #selector(minusHamAge))
        minuAgeTru.minimumPressDuration = 0
        minus2Button.addGestureRecognizer(minuAgeTru)
        
        let plusAgeCong = UILongPressGestureRecognizer(target: self, action: #selector(plusHamAge))
        plusAgeCong.minimumPressDuration = 0
        plus2Button.addGestureRecognizer(plusAgeCong)

        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        buttonCal.layer.cornerRadius = 5
        maleVIew.layer.cornerRadius = 10
        femaleView.layer.cornerRadius = 10
        heightView.layer.cornerRadius = 10
        weightView.layer.cornerRadius = 10
        ageView.layer.cornerRadius = 10
    }
    
    func addSubView(){
        view.addSubview(containerView)
        containerView.addSubview(topView)
        containerView.addSubview(bmiLabel)
        containerView.addSubview(bottomView)
        containerView.addSubview(buttonCal)
        containerView.addSubview(maleVIew)
        containerView.addSubview(femaleView)
        containerView.addSubview(heightView)
        containerView.addSubview(weightView)
        containerView.addSubview(ageView)
        containerView.addSubview(maleImage)
        containerView.addSubview(femaleImage)
        containerView.addSubview(maleLabel)
        containerView.addSubview(femaleLabel)
        containerView.addSubview(heightLabel)
        containerView.addSubview(weightLabel)
        containerView.addSubview(ageLabel)
        containerView.addSubview(slidebutton)
        containerView.addSubview(slideLabel)
        containerView.addSubview(weightIntLabel)
        containerView.addSubview(minusButton)
        containerView.addSubview(plusButton)
        containerView.addSubview(ageIntLabel)
        containerView.addSubview(minus2Button)
        containerView.addSubview(plus2Button)
        
    }
    
    func setLayOut(){
        //container chính
        containerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 34).isActive = true
        containerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        containerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        containerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        //topView && Lable
        topView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        topView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        topView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        topView.heightAnchor.constraint(equalToConstant: 90).isActive = true
        bmiLabel.centerXAnchor.constraint(equalTo: topView.centerXAnchor, constant: 0).isActive = true
        bmiLabel.centerYAnchor.constraint(equalTo: topView.centerYAnchor, constant: 0).isActive = true
        
        //bottom,Button
        bottomView.topAnchor.constraint(equalTo: topView.bottomAnchor, constant: 5).isActive = true
        bottomView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 0).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 0).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 0).isActive = true
        //nut calculator
        buttonCal.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -30).isActive = true
        buttonCal.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20).isActive = true
        buttonCal.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20).isActive = true
        buttonCal.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        // maleview
        maleVIew.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10).isActive = true
        maleVIew.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20).isActive = true
        maleVIew.heightAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 5/16, constant: 0).isActive = true
        maleVIew.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 1/2, constant: -25).isActive = true
        //maleimage
        maleImage.centerXAnchor.constraint(equalTo: maleVIew.centerXAnchor, constant: 0).isActive = true
        maleImage.centerYAnchor.constraint(equalTo: maleVIew.centerYAnchor, constant: 0).isActive = true
        maleImage.heightAnchor.constraint(equalTo: maleImage.widthAnchor, multiplier: 1).isActive = true
        maleImage.widthAnchor.constraint(equalTo: maleVIew.widthAnchor, multiplier: 1/2).isActive = true
        //maleLabel
        maleLabel.bottomAnchor.constraint(equalTo: maleVIew.bottomAnchor, constant: -20).isActive = true
        maleLabel.leadingAnchor.constraint(equalTo: maleVIew.leadingAnchor, constant: 0).isActive = true
        maleLabel.trailingAnchor.constraint(equalTo: maleVIew.trailingAnchor, constant: 0).isActive = true
        maleLabel.heightAnchor.constraint(equalTo: maleLabel.heightAnchor, constant: 0).isActive = true
        
        
        
        // femaleview
        femaleView.topAnchor.constraint(equalTo: bottomView.topAnchor, constant: 10).isActive = true
        femaleView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20).isActive = true
        femaleView.heightAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 5/16, constant: 0).isActive = true
        femaleView.widthAnchor.constraint(equalTo: bottomView.widthAnchor, multiplier: 1/2,constant: -25).isActive = true
        //femaleimage
        femaleImage.centerXAnchor.constraint(equalTo: femaleView.centerXAnchor, constant: 0).isActive = true
        femaleImage.centerYAnchor.constraint(equalTo: femaleView.centerYAnchor, constant: 0).isActive = true
        femaleImage.heightAnchor.constraint(equalTo: femaleImage.widthAnchor, multiplier: 1).isActive = true
        femaleImage.widthAnchor.constraint(equalTo: femaleView.widthAnchor, multiplier: 1/2).isActive = true
        //femaleLabel
        femaleLabel.bottomAnchor.constraint(equalTo: femaleView.bottomAnchor, constant: -20).isActive = true
        femaleLabel.leadingAnchor.constraint(equalTo: femaleView.leadingAnchor, constant: 0).isActive = true
        femaleLabel.trailingAnchor.constraint(equalTo: femaleView.trailingAnchor, constant: 0).isActive = true
        femaleLabel.heightAnchor.constraint(equalTo: femaleLabel.heightAnchor, constant: 0).isActive = true
        
        
        // heightView
        heightView.topAnchor.constraint(equalTo: maleVIew.bottomAnchor, constant: 10).isActive = true
        heightView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20).isActive = true
        heightView.heightAnchor.constraint(equalTo: bottomView.heightAnchor, multiplier: 1/4, constant: 0).isActive = true
        heightView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20).isActive = true
        //heightlabel
        heightLabel.topAnchor.constraint(equalTo: heightView.topAnchor, constant: 10).isActive = true
        heightLabel.leadingAnchor.constraint(equalTo: heightView.leadingAnchor, constant: 0).isActive = true
        heightLabel.trailingAnchor.constraint(equalTo: heightView.trailingAnchor, constant: 0).isActive = true
        heightLabel.widthAnchor.constraint(equalTo: heightLabel.widthAnchor, constant: 0).isActive = true
        heightLabel.heightAnchor.constraint(equalTo: heightLabel.heightAnchor, constant: 0).isActive = true
        //slidebutton
        slidebutton.centerXAnchor.constraint(equalTo: heightView.centerXAnchor, constant: 0).isActive = true
        slidebutton.centerYAnchor.constraint(equalTo: heightView.centerYAnchor, constant: 50).isActive = true
        slidebutton.widthAnchor.constraint(equalTo: heightView.widthAnchor,multiplier: 0.9).isActive = true
        slidebutton.heightAnchor.constraint(equalTo: slidebutton.heightAnchor).isActive = true
        //slideLabel
        slideLabel.topAnchor.constraint(equalTo: heightLabel.bottomAnchor, constant: 10).isActive = true
        slideLabel.centerXAnchor.constraint(equalTo: heightView.centerXAnchor, constant: 0).isActive = true
        slideLabel.widthAnchor.constraint(equalTo: slideLabel.widthAnchor).isActive = true
        slideLabel.bottomAnchor.constraint(equalTo: slidebutton.topAnchor).isActive = true
        
        
        // weightview
        weightView.topAnchor.constraint(equalTo: heightView.bottomAnchor, constant: 10).isActive = true
        weightView.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor, constant: 20).isActive = true
        weightView.bottomAnchor.constraint(equalTo: buttonCal.topAnchor, constant: -10).isActive = true
        weightView.widthAnchor.constraint(equalTo: maleVIew.widthAnchor, constant: 0).isActive = true
        //Weightlabel
        weightLabel.topAnchor.constraint(equalTo: weightView.topAnchor, constant: 10).isActive = true
        weightLabel.leadingAnchor.constraint(equalTo: weightView.leadingAnchor, constant: 0).isActive = true
        weightLabel.trailingAnchor.constraint(equalTo: weightView.trailingAnchor, constant: 0).isActive = true
        weightLabel.widthAnchor.constraint(equalTo: weightLabel.widthAnchor, constant: 0).isActive = true
        weightLabel.heightAnchor.constraint(equalTo: weightLabel.heightAnchor, constant: 0).isActive = true
        //weightIntLabel
        weightIntLabel.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 5).isActive = true
        weightIntLabel.centerYAnchor.constraint(equalTo: weightView.centerYAnchor, constant: 0).isActive = true
        weightIntLabel.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: 0).isActive = true
        weightIntLabel.heightAnchor.constraint(equalTo: weightIntLabel.heightAnchor, constant: 0).isActive = true
        //minusbutton
        minusButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        minusButton.heightAnchor.constraint(equalTo: minus2Button.widthAnchor, constant: 0).isActive = true
        minusButton.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: -50).isActive = true
        minusButton.centerYAnchor.constraint(equalTo: weightView.centerYAnchor, constant: 40).isActive = true
        //plusbutton
        plusButton.widthAnchor.constraint(equalToConstant: 40).isActive = true
        plusButton.heightAnchor.constraint(equalTo: minus2Button.widthAnchor, constant: 0).isActive = true
        plusButton.centerXAnchor.constraint(equalTo: weightView.centerXAnchor, constant: 50).isActive = true
        plusButton.centerYAnchor.constraint(equalTo: weightView.centerYAnchor, constant: 40).isActive = true
        
        // ageview
        ageView.topAnchor.constraint(equalTo: heightView.bottomAnchor, constant: 10).isActive = true
        ageView.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: -20).isActive = true
        ageView.bottomAnchor.constraint(equalTo: buttonCal.topAnchor, constant: -10).isActive = true
        ageView.widthAnchor.constraint(equalTo: maleVIew.widthAnchor, constant: 0).isActive = true
        //agelabel
        ageLabel.topAnchor.constraint(equalTo: ageView.topAnchor, constant: 10).isActive = true
        ageLabel.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 0).isActive = true
        ageLabel.widthAnchor.constraint(equalTo: ageLabel.widthAnchor, constant: 0).isActive = true
        ageLabel.heightAnchor.constraint(equalTo: ageLabel.heightAnchor, constant: 0).isActive = true
        //ageIntLabel
        ageIntLabel.topAnchor.constraint(equalTo: ageLabel.bottomAnchor, constant: 5).isActive = true
        ageIntLabel.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 0).isActive = true
        ageIntLabel.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 0).isActive = true
        ageIntLabel.heightAnchor.constraint(equalTo: ageIntLabel.heightAnchor, constant: 0).isActive = true
        //minus2button
        minus2Button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        minus2Button.heightAnchor.constraint(equalTo: minus2Button.widthAnchor, constant: 0).isActive = true
        minus2Button.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: -50).isActive = true
        minus2Button.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 40).isActive = true
        //plus2button
        plus2Button.widthAnchor.constraint(equalToConstant: 40).isActive = true
        plus2Button.heightAnchor.constraint(equalTo: minus2Button.widthAnchor, constant: 0).isActive = true
        plus2Button.centerXAnchor.constraint(equalTo: ageView.centerXAnchor, constant: 50).isActive = true
        plus2Button.centerYAnchor.constraint(equalTo: ageView.centerYAnchor, constant: 40).isActive = true
    }
    
    @objc func tangGiam(){
//        let numberOfPlace = 2.0
//        let multiplier = pow(10.0, numberOfPlace)
//        let rounded = round(Double(slideLabel.text ?? "") ?? 1 * multiplier) / multiplier
        slideLabel.text = "\(round(Double(slidebutton.value))) cm"
        print("\(Int(slidebutton.value))")
        //        print(slideLabel)
        //        print(slidebutton)
    }
    @objc func tapMaleView(){
        maleVIew.backgroundColor = UIColor(red:0.141, green:0.149, blue:0.220, alpha: 1.000)
        print("Male")
    }
    @objc func tapFeMaleView(){
        femaleView.backgroundColor = UIColor(red:0.141, green:0.149, blue:0.220, alpha: 1.000)
        print("FeMale")

    }
    
    @objc func minusHamWeight(){
        if weight < 1{
            return
        }else if weight > 1 {
            weight = weight - 1
            weightIntLabel.text = "\(weight)"
            print("tru cân nặng \(weight)")
        }

    }
    @objc func plusHamWeight(){
        if weight < 1{
            return
        }else if weight >= 1 && weight < 120 {
            weight = weight + 1
            weightIntLabel.text = "\(weight)"
            print("tru cân nặng \(weight)")
        }
    }
    @objc func minusHamAge(){
        if age < 1{
            return
        }else if age > 1 {
            age = age - 1
            ageIntLabel.text = "\(age)"
            print("tru cân nặng \(age)")
        }

    }
    @objc func plusHamAge(){
        if age < 1{
            return
        }else if age >= 1 && age < 100 {
            age = age + 1
            ageIntLabel.text = "\(age)"
            print("tru cân nặng \(age)")
        }
    }
    
    @objc func buttonCalCu(_ sender: Any){
        
        let BMI:Float = round(Float(weight) / pow((slidebutton.value)/100 , 2))
        var BMInoti = ""
        var bmiResult = ""
        if BMI > 25{
            
            BMInoti = "Bạn thừa cân."
            bmiResult = "Bạn nên rèn luyện cơ thể.Hãy ăn uống lành mạnh hơn để có sức khoẻ tốt"
        }
        //else if BMI >= 18.5 && BMI <= 25{
          else if BMI >= 18.5{
            BMInoti = "Bạn khoẻ mạnh."
            bmiResult = "Thân hình bạn cân đối. Hãy tiếp tục giữ vững như vậy. Good job!!!!!"
        }
        else
        {
            BMInoti = "Bạn bị suy dinh dưỡng."
            bmiResult = "Bạn là người biếng ăn. Hãy vận động cơ thể và ăn uống một cách khoa học để có cơ thế cân đối"
        }
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            vc.initData(BMI: Double(BMI))
            vc.initNotiBMI(BMInoti: String("\(BMInoti)"))
            vc.initNotiResultBMI(bmiResult: String("\(bmiResult)"))
            let navigationViewController = UINavigationController(rootViewController: vc)
            show(navigationViewController, sender: nil)

            
            print("Chỉ số BMI là : \(BMI) --- \(BMInoti) --- \(bmiResult)")
            print("đã nhấn vào")
        }
        
        
        
        
        
        
    }
}
