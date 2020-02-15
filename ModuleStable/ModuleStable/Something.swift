//
//  ConcreteClass.swift
//  ModuleStable
//
//  Created by Evgeny Kazakov on 2/15/20.
//  Copyright © 2020 Evgeny Kazakov. All rights reserved.
//

public class BaseClass {
  internal init() {
  }
  
  public func greet() {
    print("Hello world")
  }
}

public class ConcreteClass: BaseClass {
  public override init() {
    super.init()
  }
}
