#import "PolynomialConverter.h"

@implementation PolynomialConverter
- (NSString*)convertToStringFrom:(NSArray <NSNumber*>*)numbers {
    NSMutableString *answer = [[NSMutableString alloc] init];
    int max = numbers.count-1;
    if(numbers.count == 0) return nil;
    for (int i =0; i<numbers.count; i++) {
        if([[numbers objectAtIndex:i] intValue]==0){
            max--;
            continue;
        }
        else{
            if([[numbers objectAtIndex:i] intValue] >0){
                if (i!=0) {
                    [answer appendString:@"+ "];
                }
                if([[numbers objectAtIndex:i] intValue]!=1){
                    [answer appendString:[[numbers objectAtIndex:i] stringValue]];
                }
            }
            else{
                if ([[numbers objectAtIndex:i] intValue]==-1) {
                    [answer appendString:@"- "];
                }
                else{
                    [answer appendString:@"- "];
                    [answer appendString:[NSString stringWithFormat:@"%d",[[numbers objectAtIndex:i] intValue]*(-1)]];
                }
            }
            if(max!=0){
                if(max==1){
                    [answer appendString:@"x"];
                }
                else{
                    [answer appendString:@"x^"];
                    [answer appendString:[NSString stringWithFormat:@"%d",max]];
                }
                max--;
                [answer appendString:@" "];
            }
            
        }
    }
    if([answer characterAtIndex:answer.length-1]==' ') [answer deleteCharactersInRange:NSMakeRange([answer length]-1, 1)];
        
    return answer;
}
@end
