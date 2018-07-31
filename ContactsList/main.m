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
        
        
        ContactLister *myContacts = [[ContactLister alloc] init];
        [myContacts addContact:James];
        [myContacts addContact:Emma];
        [myContacts addContact:Bob];
        
        while (true) {
            
        NSString *userInput = [inputSelection inputForPrompt:@"What would you like to do next? new - Create a new contact list - List all contacts quit = Exit Application"];
            
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
                [myContacts addContact:samplePerson];
                NSLog(@"%@ added to contacts", samplePerson.name);
            }
            else if ([userInput isEqualToString:@"list"])
            {
                [myContacts printContacts];
            }
            }
    }
    return 0;
}


