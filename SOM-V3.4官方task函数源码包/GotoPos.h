#ifndef GOTOPOS_H
#define GOTOPOS_H
#include "strategy/task/PlayerTask.h"
class GotoPos
{
public:
	GotoPos();
	~GotoPos();
	PlayerTask plan(float x, float y, float dir);
private:

};

typedef Singleton<GotoPos> gotoPos;
#endif