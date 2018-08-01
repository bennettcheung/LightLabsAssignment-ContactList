//
//  Contact.h
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PhoneNumber.h"
@interface Contact : NSObject
@property NSString *name;
@property NSString *email;
@property NSMutableArray *phoneNumbers;
-(void)addPhoneNumbers:(PhoneNumber *)number;

@end
