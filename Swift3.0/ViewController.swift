//
//  ViewController.swift
//  Swift3.0
//
//  Created by Jafar的Apple Computer on 2016/11/22.
//  Copyright © 2016年 com.quvideo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // MARK: --  \ To transfrom string
        let float:Float = 3.14
        print("this is a float \(float)")
        
        // MARK: -- Use [] to create dictionary and array
        var shoppingList = ["fage", "fage2", "fage3", "fage4"]
        var shoppingLis1 = ["1":"fage",
                            "2":"fage2",
                            "3":"fage3",]
        print("array data is \(shoppingList[1]) dictionary data is \(shoppingLis1["1"])")
        
        // MARK: -- Create empty array and dictionary user init language
        let emptyArray = [String]()
        let emptyDictionary = [String:Float]()
        
        print("array is \(emptyArray) dictionary is \(emptyDictionary)")
        
        // MARK: -- If message can be forecast , you can user [] and [:] to create a empty array or dictionary
        shoppingLis1 = [:]
        shoppingList = []
        
        // MARK: -- User if and switch to start if operation , user for - in 、for 、for while and repeat - while to start  repeat . 
        let repeatArray = [23,45,56,67,78,89,90]
        var teamSource = 0
        for item in repeatArray {
            if item > 50{
                teamSource += 1
            }else{
                teamSource -= 1
            }
        }
        
        print("teamSource is \(teamSource)")
        
        // MARK: -- Can user if and let to handle value lost . 
        var optionalString:String? = "Hello"
        optionalString = nil
        print(optionalString == nil)
        
        var optionnalName:String? = "Jafar hello"
        optionnalName = nil
        var geeting = "Hello"
        
        // MARK: -- If optionName is nil will not run if and run else
        if let name = optionnalName {
            geeting = "Hello, \(name)"
            print("geeting is \(geeting)")
        }else{
            print("option name is nil")
        }
        
        // MARK: -- So wo can user ?? to handle value is nil
        geeting = optionnalName ?? "fagefagefagefage"
        print("User ?? handle after value is \(geeting)")
        
        // MARK: Switch support any type data and any compare operation , not only is int and test equal.
        let vegetable = "red paper"
        switch vegetable {
        case "celery":
            print("celery")
            case "stringOne", "stringTwo":
            print("stringOne or stringTwo")
        case let x where x.hasSuffix("paper"):
            print("has papre")
        default:
            print("Not result")
        }
        
        // MARK: -- 使用For-in来遍历字典，因为字典是一个无序的集合，所以他们的键值以任意的顺序迭代结束
        let sortDictionary = ["one":[1,2,3,4,5,6,7,7,8,9],
                              "two":[2,3,4,5,6,3,2,67,32],
                              "three":[56,45,32,2342,432432]]
        var largest = 0
        for (key,value) in sortDictionary {
            for number in value {
                if number > largest{
                    largest = number
                }
            }
            
            
            if key == "one" {
                    print("\(key)")
            }
        }
        print("larsts number is \(largest)")
        
        // MARK: -- 使用while来运行一段代码，直到不满足条件，循环条件也可以在结尾，保证能至少循环一次
        var n = 2
        while n < 200 {
            n = n * 2
        }
        print("\(n)")
        
        var m = 2
        repeat{
            m = m * 2
        }while m < 100
        
        print("m value is \(m)")
        
        // MARK: -- 可以在..< 中表示范围 ...包含上下界限 0+0+1+2+3+4
        var total = 0
        for i in 0...4 {
            total += i
        }
        print("i value is \(total)")
        
        // MARK: -- 使用Func 来生命一个函数，使用->来声明返回值
        func getAString(name:String, age:Int) -> String{
            return "name is \(name) age is \(age) ..."
        }
        print("\(getAString(name: "jiayuanfa", age: 25))")
        
        // MARK: -- 默认情况下，使用参数名作为函数的参数标签。或者使用_不适用参数标签，也可以命名一个新的参数标签
        func getBString(_ name:String, on age:Int) -> String{
            return "name is \(name), age is \(age)"
        }
        print("\(getBString("jiayuanfa", on: 24))")
        
        // MARK: -- 使用元组来让一个函数返回多个值 元组的元素可以用名称或者数字来表示
        func calculate(arr:[Int]) -> (min:Int, max:Int, sum:Int){
            var min:Int  = arr[0]
            var max:Int  = arr[0]
            var sum:Int  = 0
            for value in arr{
                if value < min{
                    min = value
                }
                if value > max{
                    max = value
                }
                
                sum += value
            }
            
            return (min, max, sum)
        }
        
        print("\(calculate(arr: [34,2,4545,67,89,432423,3,2,3,4,55]).min)")
        
        
        // MARK: -- 函数可以带有可变个数的参数，这些参数在函数内部表现为数组的形式
        func sumOf(number:Int...) -> Int{
            var sum = 0
            for num in number{
                sum += num
            }
            return sum
        }
        print("sum is \(sumOf())")
        print("sum2 is \(sumOf(number: 1,2,3,4,5))")
        
        // MARK: -- 计算平均数
        func averageOf(number:Int...) -> CGFloat{
            var averageValue:CGFloat = 0
            var sum = 0
            for num in number{
                sum += num
            }
            averageValue =  CGFloat(sum/number.count)
            return averageValue
        }
      print("average is \(averageOf(number: 2,3,4,5,6))")
        
       
        // MARK: -- 函数可以嵌套，可以使用嵌套函数来重构一个太长或者太复杂的函数
        func returnFifteen() -> Int{
            var y = 10
            func add(){
                y += 5
            }
            add()
            return y
        }
        print("return fifteem is \(returnFifteen())")
        
        // MARK: -- 函数是第一等类型，这意味着函数可以作为另一个函数的返回值
        func makeIncrementer() -> ((Int) -> Int){
            func incrementer(number:Int) -> Int{
                return number + 5
            }
            return incrementer
        }
        
        let increater = makeIncrementer()
        print("\(increater(7))")
        
        // MARK: -- 函数也可以当参数传入另一个函数
        func hasAnyMatchs(list:[Int], condition:(Int)-> Bool) ->Bool{
            for item in list{
                if condition(item){
                    return true
                }
            }
            return false
        }
        
        func lessThanTen(number:Int)->Bool{
            return number < 10
        }
        let numbers = [23,4,5,78,10]
        let result = hasAnyMatchs(list: numbers, condition:lessThanTen)
        print("result is \(result)")
        
        // MARK: -- 函数实际上是一种特殊的闭包，它是一段能之后被调用的代码，闭包中的代码能访问闭包所建作用域中能得到的变量和函数，即使闭包是在一个不同的作用域被执行的。可以使用{}来创建一个匿名闭包，使用in将参数和返回值类型声明与闭包函数体进行分离
        let result1:[Int] = numbers.map({ (number:Int) -> Int in
            let result = 3 * number
            return result
        })
        print(result1)
        
        // MARK: -- 重写闭包 对所有奇数返回0
        let jishuArray:[Int] = numbers.map({(number:Int)-> Int in
            var result:Int = 0
            if number % 2 == 1{
                result = number
                return result
            }else{
                return 0
            }
        })

        print(jishuArray)
        
        // MARK: -- 有很多创建闭包的方法。如果一个闭包的类型已知，比如作为一个回调函数，你可以忽略参数的类型和返回值。单个语句闭包会把它语句的值当做结果返回。
        let mappedNumbers = numbers.map ({ (number) in 3 * number})
        print(mappedNumbers)
        
        // MARK: -- 对象和类
        // 使用Class来创建类，类中属性的声明和常量变量一样，唯一的区别就是他们的上下文是类，同样方法和函数的声明也是一样
        
        // 要创建一个类的实例对象，在类名后面加上（），访问类的属性使用点语法
        let shape = Shape.init(name: "jiayuanfa")
        print(shape.name)
        print(shape.numberOfSides)
        print(shape.simpleDesc())
        
        // MARK: -- 上面那个版本的Shape少了一些重要的东西：一个构造函数来初始化类的实例。使用init来创建一个构造器
        
        // MARK: -- 子类的创建方法是在他们的类名后面加上父类的名字，用冒号进行分割。创建类的时候并不需要一个标准的跟类，所以可以忽略父类。
        
        // MARK: -- 子类
    }
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

class Shape {
    
    var numberOfSides = 0
    var name:String
    
    init(name:String) {
        self.name = name
    }
    
    func simpleDesc() -> String{
        return "It is a simple desc"
    }
}

class nameShape {
    var numberOfSides:Int = 0
    var name:String
    
    init(name:String) {
        // self用来区别实例变量。当你创建实例的时候，像传入函数参数一样给类传入构造器的参数。每个属性都需要赋值。无论是通过声明还是通过构造器。如果你需要在删除对象之前进行一些清理工作，要使用deinit创建一个析构函数。
        self.name = name
    }
    
    func simpleDesc() -> String{
        return "It is a simple desc"
    }
}

