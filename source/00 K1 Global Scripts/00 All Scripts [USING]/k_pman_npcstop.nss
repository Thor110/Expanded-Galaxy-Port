#include "k_inc_man"
void main()
{
    ClearAllActions();
    CancelCombat(OBJECT_SELF);
    GN_SetSpawnInCondition(SW_FLAG_AI_OFF,TRUE);
}
