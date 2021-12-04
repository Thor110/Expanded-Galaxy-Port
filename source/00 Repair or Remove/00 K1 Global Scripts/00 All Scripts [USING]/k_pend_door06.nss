#include "k_inc_end"
void main()
{
   // SetLocked(OBJECT_SELF,FALSE);
   AurPostString("Trask: " + IntToString(GetTraskState()),5,7,5.0);
    if(GetTraskState() < TRASK_COMBAT_WARNING)
    {
        SetTraskState(TRASK_COMBAT_WARNING);
        TalkTrask();
    }
    else if(GetTraskState() == TRASK_COMBAT_WARNING &&
           GN_GetWeaponType(GetFirstPC()) == 2)
    {
         SetTraskState(TRASK_COMBAT_WARNING2);
         TalkTrask();
    }
    else
    {
        SetLocked(OBJECT_SELF,FALSE);
        ActionOpenDoor(OBJECT_SELF);
    }
    DestroyObject(GetCarth());
}
