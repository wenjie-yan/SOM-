#ifndef GETBALL_H
#define GETBALL_H
#include "strategy/task/PlayerTask.h"
//#include "./vision/basevision.h"

class GetBall 
{
public:
	GetBall();
	~GetBall();
	PlayerTask plan(int runner_id, int receiver_id);
	bool toward_opp_goal(float dir);
	float ball_x_angle();
private:
};

typedef Singleton<GetBall> getBall;
#endif