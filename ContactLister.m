//
//  ContactLister.m
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "ContactLister.h"
#import "Contact.h"
@implementation ContactLister

-(instancetype) init {
    if (self = [super init]) {
        _ContactArray = [[NSMutableArray alloc] init];
        
    }
    return self;
}
-(void)addContact:(Contact *)newContact {
    [_ContactArray addObject:newContact];
}
@end
