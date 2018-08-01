//
//  InputCollector.h
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject
-(NSString *)inputForPrompt:(NSString *)promptString;
@property NSMutableArray *inputHistory;
-(void)getRecentHistory;
@end
