//
//  StackProblems.swift
//  AC-iOS-StackProblems
//
//  Created by C4Q  on 11/7/17.
//  Copyright © 2017 C4Q . All rights reserved.
//

import Foundation



//Problem One:
//Find the largest integer in a Stack of Ints
func largestElement<T: Comparable>(in stack: Stack<T>) -> T? {
    var stack = stack
    var largestVal = stack.peek()
    while !stack.isEmpty {
        if stack.peek()! > largestVal! {
            largestVal = stack.pop()!
        } else {
            stack.pop()
        }
    }
    return largestVal
}


//Problem Two:
//Find the sum of a Stack of Ints
func sum(of stack: Stack<Int>) -> Int? {
    var stack = stack
    var sumOfWhatevers = stack.pop()
    while !stack.isEmpty {
        sumOfWhatevers! += stack.pop()!
    }
    return sumOfWhatevers
}

//Problem Three:
//Reverse a Stack without using an Array
//Sample input:
/*
 4
 2
 9
 3
 */

//Sample output:
/*
 3
 9
 2
 4
 */

func reversed<T>(stack: Stack<T>) -> Stack<T> {
    var stack = stack
    var reversedStack = Stack<T>()
    while !stack.isEmpty {
        reversedStack.push(stack.pop()!)
    }
    return reversedStack
}


//Problem Four:
//Determine if two stacks are equal
func equalStacks<T: Equatable>(stackOne: Stack<T>, stackTwo: Stack<T>) -> Bool {
    var stackOne = stackOne
    var stackTwo = stackTwo
    while !stackOne.isEmpty && !stackTwo.isEmpty {
        if stackOne.pop() != stackTwo.pop() {
            return false
        }
    }
    guard stackOne.isEmpty && stackTwo.isEmpty else{
        return false
    }
    return true
}


//Problem Five:
//Write a function that pushes a new element to the bottom of a Stack
func pushBottom<T>(stack: Stack<T>, newElement: T) -> Stack<T> {
    var newStack = reversed(stack: stack)
    newStack.push(newElement)
    return reversed(stack: newStack)
}

//Problem Six:
//Determine if the parentheses are balanced in a given String
//Sample input: ((()))
//Sample output: true
//Sample input: ((())
//Sample output: false
//Sample input: (()((())()))
//Sample output: false

func isBalanced(str: String) -> Bool {
    let str = Array(str)
    return str.filter{$0 == "("}.count == str.filter{$0 == ")"}.count
}

//Bonus: Problem Seven:
//Use a stack to convert a number in decimal to binary
func convertToBinary(_ num: Int) -> String {
    var num = num
    var stack = Stack<Int>()
    while num > 0 {
        stack.push(num % 2)
        num /= 2
    }
    var biStr = ""
    while !stack.isEmpty {
        biStr += String(stack.pop()!)
    }
    return biStr
}


