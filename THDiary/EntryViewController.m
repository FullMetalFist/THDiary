//
//  NewEntryViewController.m
//  THDiary
//
//  Created by Michael Vilabrera on 9/16/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import "EntryViewController.h"
#import "DiaryEntry.h"
#import "CoreDataStack.h"

@interface EntryViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

- (IBAction)doneWasPressed:(id)sender;
- (IBAction)cancelWasPressed:(id)sender;

@end

@implementation EntryViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    if (self.entry) {
        self.textField.text = self.entry.body;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void) insertDiaryEntry
{
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    DiaryEntry *entry = [NSEntityDescription insertNewObjectForEntityForName:@"DiaryEntry" inManagedObjectContext:coreDataStack.managedObjectContext];
    entry.body = self.textField.text;
    entry.date = [[NSDate date] timeIntervalSince1970];
    [coreDataStack saveContext];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void) dismissSelf {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

- (void) updateDiaryEntry
{
    self.entry.body = self.textField.text;
    
    CoreDataStack *coreDataStack = [CoreDataStack defaultStack];
    [coreDataStack saveContext];
}

- (IBAction)doneWasPressed:(id)sender {
    if (self.entry) {
        [self updateDiaryEntry];
    } else {
        [self insertDiaryEntry];
    }
    [self dismissSelf];
}

- (IBAction)cancelWasPressed:(id)sender {
    [self dismissSelf];
}
@end
