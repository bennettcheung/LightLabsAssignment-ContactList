//
//  InputCollector.m
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import "InputCollector.h"
#import "PhoneNumber.h"
@implementation InputCollector
-(instancetype) init {
    if (self = [super init]) {
        _inputHistory = [[NSMutableArray alloc] init];
        
    }
    return self;
}
-(NSString *)inputForPrompt:(NSString *)promptString{
    NSLog(@"%@", promptString);
    char inputCString[256];
    fgets(inputCString, 256, stdin);
    NSString *result = [NSString stringWithCString:inputCString encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    [_inputHistory addObject:result];
    return result;
}
-(void)getRecentHistory
{
    int fourthLastEntry =(int) [_inputHistory count] -4;
    if (fourthLastEntry < 0)
        {
            fourthLastEntry = 0;
        }
    for (int i = ((int)[_inputHistory count] - 1); i >= fourthLastEntry; i --)
        NSLog(@"%@", _inputHistory[i] );
}

@end
