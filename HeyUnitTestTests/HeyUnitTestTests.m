//
//  HeyUnitTestTests.m
//  HeyUnitTestTests
//
//  Created by Roy on 2017/11/13.
//  Copyright © 2017年 roy. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface HeyUnitTestTests : XCTestCase

@property (nonatomic, strong) ViewController *vc;

@end

@implementation HeyUnitTestTests

// command + U 跑測試
// 測試前調用，可以在此創建接下來的 test case 要用的物件
- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    self.vc = [ViewController new];
}

// 測試結束時調用的方法
- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    // 清空
    self.vc = nil;
    
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testAddNumber {
    NSInteger num1 = 2;
    NSInteger num2 = 3;
    NSInteger result = [self.vc plusNumber:num1 num2:num2];
    
    XCTAssertEqual(result, 5, @"測試不通過");
}

- (void)testCalculateBMI {
    double weight = 80.0;
    double height = 180.0;
    double result = [self.vc calculateBMI:height weight:weight];
    
    XCTAssertEqual(result, 24.69, @"BMI 錯誤");
}

// 效能測試方法，測試 block 中方法執行的時間，設置基準(baseline)和標準偏差(stddev)來判斷方法是否能通過性能測試
- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
        for (int i = 0; i<100; i++) {
            
            NSLog(@"dd");
        }
    }];
}

@end
