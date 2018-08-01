//
//  Contact.m
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "Contact.h"
#import "PhoneNumber.h"
@implementation Contact

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _phoneNumbers = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)addPhoneNumbers:(PhoneNumber *)number
{
    [_phoneNumbers addObject:number];
}
@end
