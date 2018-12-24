/// @description: Initiation

XAxis = 0; // xdirection
YAxis = 0; // ydirection
Speed = 5; // how fast the objt move


// Declare sprites
Direction = DOWN
Action = IDLE

// State
State = objPlayer_stateIDLE

View[HORIZONTAL, IDLE] = viewPlayerRight
View[HORIZONTAL, MOVE] = viewPlayerWalkSide

View[DOWN, IDLE] = viewPlayerDown
View[DOWN, MOVE] = viewPlayerWalkDown

View[UP, IDLE] = viewPlayerUp
View[UP, MOVE] = viewPlayerWalkUp
