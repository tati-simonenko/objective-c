//
//  ViewController.m
//  Lesson4.1
//
//  Created by T on 10.04.15.
//  Copyright (c) 2015 T. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@property (nonatomic, strong) NSMutableArray * arrayBase;
@property (nonatomic, strong) NSArray * arrayAmount;
@property (nonatomic, strong) NSArray * arrayCharacters;


@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
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
        [dict setObject:[self.arrayAmount objectAtIndex:i] forKey:@"amount"];
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

- (void) testMethod {
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


#pragma mark - UITableViewDelegate

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return self.arrayBase.count ;
    
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    
    static NSString * simpleTableIdentifier = @"Cell";
    UITableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    
    
    cell.textLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"amount"];
    cell.detailTextLabel.text = [[self.arrayBase objectAtIndex:indexPath.row]objectForKey:@"character"];
    
    return cell;
    
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    DetailViewController * detail = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    
    NSDictionary * dict = [self.arrayBase objectAtIndex:indexPath.row];
    
    NSString * format_PNG = @"png";
    NSString * format_JPG = @"jpg";
    UIImage * image = [UIImage imageNamed:@"Разумных.png"];
    
    
    if ([[dict objectForKey:@"character"] isEqualToString:@"Разумных"]) {
        
        image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@", [dict objectForKey:@"character"], format_PNG]];
        
    }
    
    else {
        
        image = [UIImage imageNamed:[NSString stringWithFormat:@"%@.%@", [dict objectForKey:@"character"], format_JPG]];
        
        
    }
    
    detail.string_mainValue = [dict objectForKey:@"character"];
    detail.string_Price = [dict objectForKey:@"amount"];
    detail.string_Discr = [dict objectForKey:@"descr"];
    detail.image = image;
    
    [self.navigationController pushViewController:detail animated:YES];
    
//    NSLog(@"IndexPath %i", indexPath.row);
    
    
}






@end