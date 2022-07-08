#ifndef SHOOT_H
#define SHOOT_H
#include "strategy/task/PlayerTask.h"
enum ShootMethods
{
	None,
	ShootBall,
	StopBall,
	ChaseBall,
	WaitTouch,
	AdjustDir,
	GoAndTurnKick,
};
class Shoot
{
public:
	Shoot();
	~Shoot();
	PlayerTask plan(int runner_id);
private:
	PlayerTask do_shoot(int runner_id);
	PlayerTask do_chase_ball(int runner_id);
	PlayerTask do_wait_touch(int runner_id);
	PlayerTask do_stop_ball_and_shoot(int runner_id);
	PlayerTask do_turn_and_shoot(int runner_id);
	PlayerTask do_adjust_dir(int runner_id);
	bool ball_moving_to_head;
};
typedef Singleton<Shoot> shoot;

#endif