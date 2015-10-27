//
//  main.m
//  ContactList
//
//  Created by Kelo Akalamudo on 10/20/15.
//  Copyright (c) 2015 Kelo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "inputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        //Initialize Input collector and Contact list.
        inputCollector *collectorPrompt = [[inputCollector alloc]init];
        Contactlist *contactList = [[Contactlist alloc] init];
        
        
        BOOL runAgain = true;
        while(runAgain){
            
            //Print Contact list instructions and take in user response.
            NSString *initialInput = [collectorPrompt inputForPrompt:(@"What would you like to do?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n")];
            
            NSLog(@"%@", initialInput);
            
            
            // If User response is equal to quit break out of loop.
            if([initialInput isEqualToString:@"quit"]){
                NSLog(@"Bon Voyage");
                return 0;
            }// If user response is equal to new - Take in full name and email.
            else if ([initialInput isEqualToString:@"new"]){
                NSString *fullNameInput = [collectorPrompt inputForPrompt:(@"What is the full name?")];
                NSString *emailInput = [collectorPrompt inputForPrompt:(@"What is the email?")];
                
                //Create a new contact and then pass in the full name/ email input.
                Contact *newContact = [[Contact alloc] initContact:fullNameInput email:emailInput];
                
                //Add the new contact object to the ContactList Array. 
                [contactList addContact:newContact];
                
            }
            else if  ([initialInput isEqualToString:@"list"]){
                [contactList printContactList];
            }
        
        }
        
    }
    return 0;
}
