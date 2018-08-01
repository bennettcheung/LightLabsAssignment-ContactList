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
    bool duplicate = NO;
    for (Contact *searchContact in _ContactArray) {
        if ([searchContact.email containsString:newContact.email])
        {
            
            duplicate = YES;
            break;
        }
    }
    if (duplicate == NO)
    {
        [_ContactArray addObject:newContact];
    }
    else NSLog (@"Contact has already been added");
}
-(void)printContacts
{
    for (int i = 0; i < [_ContactArray count]; i++)
    {
        Contact *temporaryContact = [_ContactArray objectAtIndex:i];
        NSLog(@"%i; %@ ()", i, temporaryContact.name);
    }
}
-(void)printContactat:(int)indexNumber
{
    if (indexNumber >= 0 && indexNumber <= [_ContactArray count])
    {
    Contact *temporaryContact = [_ContactArray objectAtIndex:indexNumber];
    NSLog(@"%@ , %@", temporaryContact.name, temporaryContact.email);
}
    else {
        NSLog(@"Object could not be found");
    }
}
-(void)findContactByString:(NSString*)searchTerm
{
    bool found = NO;
        for (Contact *searchContact in _ContactArray) {
        if ([searchContact.name containsString:searchTerm] || [searchContact.email containsString:searchTerm])
        {
            NSLog(@"Found - %@ %@", searchContact.name, searchContact.email);
        found = YES;
            break;
        }
    } if (found == NO)
    {
        NSLog(@"Object not found");
    }
}
@end
