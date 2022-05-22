#include "k_inc_man"
void main()
{
    GN_SetSpawnInCondition(SW_FLAG_AI_OFF,TRUE);
    CancelCombat(OBJECT_SELF);
    ClearAllActions();
}
