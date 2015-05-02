//
//  ViewController.m
//  Lesson4.1
//
//  Created by T on 10.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "CustomTableViewCell.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayBase;
@property (nonatomic, strong) NSArray * arrayAmount;
@property (nonatomic, strong) NSArray * arrayCharacters;


- (IBAction)backAction:(id)sender;

@property (strong, nonatomic) IBOutlet UITableView *tableView;

- (IBAction)first_ArrayAction:(id)sender;

- (IBAction)another_ArrayAction:(id)sender;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mArrayDict = [NSMutableArray array];
    
    if (self.isFirstArray)
        [self makeFirstArray];
    else
        [self makeAnotherArray];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) makeFirstArray{
    self.isFirstArray = YES;
    [self.mArrayDict removeAllObjects];
    self.mArrayDict = [makeArrays makeFirstArray];
    
}
-(void) makeAnotherArray{
    self.isFirstArray = NO;
    [self.mArrayDict removeAllObjects];
    self.mArrayDict = [makeArrays makeAnotherArray];
    
}

- (void) makeFirstArray {
    
    self.isFirstArray = YES;
    
    NSString * stringAmount = @"245,5565,453,65,3,234,15,45,6777,54.544";
    NSString * stringCharacters = @"Разумных,Ленивых,Упорных,Серьезных,Умных,Веселых,Милых,Развязных,Мелочных,Забавных,Глупых";
    
    NSString * stringCharacterRational = @"Эники-бэники ели вареники, Драники, финики, кексы и пряники";
    NSString * stringCharacterLazy = @"Косой Пикассо косо косил откос косой покасой.";
    NSString * stringCharacterPertinacious = @"Козёл-мукомол,кому муку молол,кому не молол?";
    NSString * stringCharacterSerious = @"Шишкосушитель Сашка сушил шишки на шишкосушке";
    NSString * stringCharacterSmart = @"Премированный преемник премьера - пример не премированному преемнику премьера";
    NSString * stringCharacterFunny = @"На работе мы работали перерабатывали разработанные разработки по перерабатыванию разных разработанных разработок";
    NSString * stringCharacterCute = @"Тараторки на базаре тараторят каждый вторник, из-за этого в Торонто улетает Торотор";
    NSString * stringCharacterCheeky = @"Журналистов не жалеют за жуткое желание прижучить живое жареное жаргоном за жабры, живо зажав жилу жизни жуликоватой жестью";
    NSString * stringCharacterPetty = @"Установщик в установленные сроки установил установку";
    NSString * stringCharacterComic = @"Рифмует рифмач рифмоплёта, не зарифмует, рифмуя, не перерифмует, рифмуя рифмача, рифмоплёт, нет рифмо - ритма без ритма рифмы";
    NSString * stringCharacterStupid = @"Астронавт Армстронг принарядился на космодроме в оранжевый скафандр";
    
    self.arrayBase = [NSMutableArray array];
    
    self.arrayAmount = [stringAmount componentsSeparatedByString:@","];
    self.arrayCharacters = [stringCharacters componentsSeparatedByString:@","];
    
    
    for (int i = 0; i < self.arrayAmount.count; i++) {
        
        NSMutableDictionary * dict = [[NSMutableDictionary alloc] init];
        [dict setObject:[self.arrayAmount objectAtIndex:i] forKey:@"type"];
        [dict setObject:[self.arrayCharacters objectAtIndex:i] forKey:@"character"];
        
        NSString * value = [self.arrayCharacters objectAtIndex:i];
        
        if ([value isEqualToString:@"Разумных"]) {
            
            [dict setObject:stringCharacterRational forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Ленивых"]) {
            
            [dict setObject:stringCharacterLazy forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Упорных"]) {
            
            [dict setObject:stringCharacterPertinacious forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Серьезных"]) {
            
            [dict setObject:stringCharacterSerious forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Умных"]) {
            
            [dict setObject:stringCharacterSmart forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Веселых"]) {
            
            [dict setObject:stringCharacterFunny forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Милых"]) {
            
            [dict setObject:stringCharacterCute forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Развязных"]) {
            
            [dict setObject:stringCharacterCheeky forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Мелочных"]) {
            
            [dict setObject:stringCharacterPetty forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Забавных"]) {
            
            [dict setObject:stringCharacterComic forKey:@"descr"];
            
        }
        
        else if ([value isEqualToString:@"Глупых"]) {
            
            [dict setObject:stringCharacterStupid forKey:@"descr"];
            
        }
        
        
        
        [self.arrayBase addObject:dict];
        
    }
    
    NSLog(@"self.arrayBase %@", self.arrayBase);
    
}



//#pragma mark - UITableViewDelegate
//
//- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
//{
//    
//    return self.arrayBase.count ;
//    
//    
//}
//
//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    
//    static NSString * simpleTableIdentifier = @"Cell";
//    CustomTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
//    
//    if (self.isFirstArray) {
//        
//        cell.label_ProductSub.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"amount"];
//        cell.label_ProductName.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"character"];
//        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"character"]]];
//        cell.imageView_ProductImage.image = image;
//        
//    }
//    
//    else {
//        
//        
//        cell.label_ProductSub.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"type"];
//        cell.label_ProductName.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"character"];
//        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"%@", [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"character"]]];
//        cell.imageView_ProductImage.image = image;
//
//        
//    }
// 
//    
//    
//    
//    
//    return cell;
//    
//}
//
//
//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    
//    DetailViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
//    
//    NSDictionary * dict = [self.arrayBase objectAtIndex:indexPath.row];
//    
//    NSString * format_PNG = @"png";
//    NSString * format_JPG = @"jpg";
//    UIImage * image = [UIImage imageNamed:@"Разумных.png"];
//    
//    
//    if ([[dict objectForKey:@"character"] isEqualToString:@"Разумных"]) {
//        
//        image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@", [dict objectForKey:@"character"], format_PNG]];
//        
//    }
//    
//    else {
//        
//        image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@", [dict objectForKey:@"character"], format_JPG]];
//        
//        
//    }
//    
//    detail.string_mainValue = [dict objectForKey:@"character"];
//    detail.string_Price = [dict objectForKey:@"amount"];
//    detail.string_Discr = [dict objectForKey:@"descr"];
//    detail.image = image;
//    
//    [self.navigationController pushViewController:detail animated:YES];

//    
//}
//
//
//
//
//
//
//@end




#pragma mark - UITableViewDelegate
-(void) reloadTableView{
    
    dispatch_async(dispatch_get_main_queue(), ^{
        [self.tableView reloadSections:[NSIndexSet indexSetWithIndex:0] withRowAnimation:UITableViewRowAnimationMiddle];
    });
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.mArrayDict.count;
    
    
}

-(UITableViewCell *)tableView:(UITableView *) tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc] initWithStyle: UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [[self.mArrayDict objectAtIndex: indexPath.row]objectForKey:@"type"];
    cell.detailTextLabel.text = [[self.mArrayDict objectAtIndex:indexPath.row]objectForKey:@"character"];
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];

    DetailViewController *detail =  [self.storyboard instantiateViewControllerWithIdentifier:@"discr"];

    NSDictionary * dict = [self.mArrayDict objectAtIndex: indexPath.row];
    detail.string_MainValue = [dict objectForKey:@"type"];
    detail.string_Price = [dict objectForKey:@"character"];
    detail.string_Discr = [dict objectForKey:@"discr"];
    [self.navigationController pushViewController: detail animated:(true)];
    NSLog(@"index=%li", indexPath.row);
    
}

- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
    
}

- (IBAction)first_ArrayAction:(id)sender {
    [self makeFirstArray];
    [self reloadTableView];
    
}

- (IBAction)another_ArrayAction:(id)sender {
    [self makeAnotherArray];
    [self reloadTableView];
    
}
@end
