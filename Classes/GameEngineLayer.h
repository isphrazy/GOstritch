#import "cocos2d.h"
#import "CJSONDeserializer.h"
#import "Line_Island.h"
#import "Island.h"
#import "Player.h"
#import "Common.h"
#import "BGLayer.h"
#import "Resource.h"

@interface GameEngineLayer : CCLayer {
	NSMutableArray *islands;
	Player *player;
    
	BOOL is_touch;
}

+(float) get_cur_pos_x;
+(float) get_cur_pos_y;

+(CCScene *) scene;
+(NSMutableArray*) loadIslands;
+(CGPoint)line_seg_intersection_a1:(CGPoint)a1 a2:(CGPoint)a2 b1:(CGPoint)b1 b2:(CGPoint)b2;

-(CGRect) get_world_bounds;
-(void) loadMap;
-(void) check_sort_islands_given:(float)pos_x and:(float)pos_y;
-(CGPoint) player_move_x:(float)pos_x y:(float)pos_y;
-(void) check_game_state;
-(void) update_static_x:(float)pos_x y:(float)pos_y;
-(void) player_control_update:(BOOL)is_contact;

@end
