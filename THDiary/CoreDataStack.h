//
//  CoreDataStack.h
//  THDiary
//
//  Created by Michael Vilabrera on 9/15/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CoreDataStack : NSObject

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

+ (instancetype) defaultStack;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
