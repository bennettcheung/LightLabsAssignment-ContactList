//
//  main.m
//  ContactsList
//
//  Created by Kit Clark-O'Neil on 2018-07-31.
//  Copyright © 2018 Kit Clark-O'Neil. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactLister.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //Implement input collector to obtain user input
        InputCollector *inputSelection = [[InputCollector alloc] init];
        
        //Add sample contacts
        Contact *James = [[Contact alloc] init];
        [James setName:@"James"];
        [James setEmail:@"Jaaaaaames@yahoo.com"];
        Contact *Bob = [[Contact alloc] init];
        [Bob setName:@"Bob"];
        [Bob setEmail:@"Bob@gmail.com"];
        Contact *Emma =[[Contact alloc] init];
        [Emma setName:@"Emma"];
        [Emma setEmail:@"Emma@gmail.com"];
        PhoneNumber *emmasNumber = [[PhoneNumber alloc] init];
        emmasNumber.numberType = @"mobile";
        emmasNumber.number = @"293-8492";
        [Emma addPhoneNumbers:emmasNumber];
        
        
        ContactLister *myContacts = [[ContactLister alloc] init];
        [myContacts addContact:James];
        [myContacts addContact:Emma];
        [myContacts addContact:Bob];
        
        while (true) {
            
            NSString *userInput = [inputSelection inputForPrompt:@"What would you like to do next? new - Create a new contact list - List all contacts show # - show specific contact by list reference quit = Exit Application"];
            
            //Check for quit input
            if ([userInput isEqualToString:@"quit"])
        {
            break;
        }
            else if ([userInput isEqualToString:@"new"])
            
            {
                Contact *samplePerson = [[Contact alloc] init];
                samplePerson.name = [inputSelection inputForPrompt:@"Name: "];
                samplePerson.email = [inputSelection inputForPrompt:@"Email: "];
               
                while (true)
                {
                    NSString *phoneInfo = [inputSelection inputForPrompt:@"Input Phone Number and type separated by a space, or enter done to exit:"];
                        if ([phoneInfo isEqualToString:@"done"]) {
                            break;
                        }
                    NSArray *inputUtility = [phoneInfo componentsSeparatedByString:@" "];
                    PhoneNumber *newNumber = [[PhoneNumber alloc] init];
                    if ([inputUtility count] == 2)
                    {
                        newNumber.number = inputUtility[0];
                        newNumber.numberType = inputUtility[1];
                        [samplePerson addPhoneNumbers:newNumber];
                    }
                }
                [myContacts addContact:samplePerson];
                
            }
            else if ([userInput isEqualToString:@"list"])
            {
                [myContacts printContacts];
            }
            else if ([userInput hasPrefix:@"show"])
            {
                NSArray *inputUtility = [userInput componentsSeparatedByString:@" "];
                if ([inputUtility count] == 2)
                {
                NSString *indexString = [inputUtility objectAtIndex:1];
                int indexnumber = [indexString intValue];
                    [myContacts printContactat:indexnumber];
                }
            }
            else if ([userInput hasPrefix:@"find"])
            {
                NSArray *inputUtility = [userInput componentsSeparatedByString:@" "];
                if ([inputUtility count] == 2)
                {
                    NSString *seachString = [inputUtility objectAtIndex:1];
                    [myContacts findContactByString:seachString];
            }
                
            }
            else if ([userInput isEqualToString: @"history"])
                {
                    [inputSelection getRecentHistory];
                }
        
    }
    return 0;
}
}

