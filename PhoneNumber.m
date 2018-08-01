//
//  PhoneNumber.m
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber

- (NSString *)description
{
    return [NSString stringWithFormat:@"phone number %@ , %@", self.numberType, self.number];
}
@end
