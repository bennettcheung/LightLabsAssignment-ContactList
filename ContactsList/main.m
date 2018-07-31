//
//  main.m
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "InputCollector.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        InputCollector *menuSelection = [[InputCollector alloc] init];
        NSString *usernameInput = [InputCollector inputForPrompt:@"What would you like to do next? new - Create a new contact list - List all contacts quit = Exit Application"];
        NSLog(@"Hello, World!");
    }
    return 0;
}
