//
//  Contactlist.m
//  
//
//  Created by Kelo Akalamudo on 10/20/15.
//
//

#import "Contactlist.h"



@interface Contactlist()

@end

@implementation Contactlist

-(id) init {
    self = [super init];
    if (self) {
        self.listContacts = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact{
    [self.listContacts addObject:newContact];
    NSLog(@"You added: %@", newContact);
}

-(void)printContactList{
    NSString *description = @"";
    for (Contact *contact in self.listContacts) {
        description = [description stringByAppendingString:[NSString stringWithFormat:@"%lu: <%@> (%@)\n", (unsigned long)[self.listContacts indexOfObject:contact], contact.name, contact.email]];
            NSLog(@"%@", description);
        
    }
}




@end