//
//  HeyUnitTestUITests.m
//  HeyUnitTestUITests
//
//  Created by roy on 2017/12/5.
//  Copyright © 2017年 roy. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface HeyUnitTestUITests : XCTestCase

@end

@implementation HeyUnitTestUITests
// command + U 開始測試
// reference: http://www.jianshu.com/p/cbb20b5d8a3c
- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
    [[[XCUIApplication alloc] init] launch];
    
    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    
    XCUIApplication *app = [[XCUIApplication alloc] init];
    XCUIElementQuery *weightKgElementsQuery = [app.otherElements containingType:XCUIElementTypeStaticText identifier:@"Weight (Kg)"];
    XCUIElement *textField = [[weightKgElementsQuery childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:0];
    [textField tap];
    [textField typeText:@"80"];
    
    XCUIElement *textField2 = [[weightKgElementsQuery childrenMatchingType:XCUIElementTypeTextField] elementBoundByIndex:1];
    [textField2 tap];
    
    XCUIElement *moreKey = app/*@START_MENU_TOKEN@*/.keys[@"more"]/*[[".keyboards",".keys[@\"more, numbers\"]",".keys[@\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/;
    [moreKey tap];
    [moreKey tap];
    [textField2 typeText:@"180"];
    [app.buttons[@"Calculate BMI"] tap];
    [[[[app childrenMatchingType:XCUIElementTypeWindow] elementBoundByIndex:0] childrenMatchingType:XCUIElementTypeOther].element tap];
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

@end
