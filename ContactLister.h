//
//  ContactLister.h
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface ContactLister : NSObject

@property NSMutableArray *ContactArray;
-(void)addContact:(Contact*)newContact;
-(void)printContacts;
@end
