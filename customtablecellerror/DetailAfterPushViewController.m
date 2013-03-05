//
//  DetailAfterPushViewController.m
//  customtablecellerror
//
//

#import "DetailAfterPushViewController.h"
#import "PopoverMenuViewController.h"
@interface DetailAfterPushViewController (){
    UIPopoverController *popOver;
}

@end

@implementation DetailAfterPushViewController

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
    
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"Button" style:UIBarButtonItemStyleBordered target:self action:@selector(getMenu:)];
    
    self.navigationItem.leftBarButtonItems = [[NSArray alloc] initWithObjects:btn, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) getMenu:(UIBarButtonItem *)sender{
    PopoverMenuViewController *vc = [[PopoverMenuViewController alloc]init];
    
    
    UIPopoverController *popOverController = [[UIPopoverController alloc]initWithContentViewController:vc];
    popOver = popOverController;
    
    [popOver presentPopoverFromBarButtonItem:sender permittedArrowDirections:UIPopoverArrowDirectionRight animated:YES];
    
    
}

@end
