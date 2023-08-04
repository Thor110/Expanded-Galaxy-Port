//:: k_act_com31
/*
     Removes the correct amount of tokens
     and sets the boolean flag on the module
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

void main()
{
    Db_MyPrintString("Module ID = " + ObjectToString(GetModule()));

    int nAmount = UT_DeterminesItemCost(3, SKILL_COMPUTER_USE);
    UT_RemoveComputerSpikes(nAmount);
    UT_SetPlotBooleanFlag(GetModule(), SW_PLOT_COMPUTER_OPEN_DOORS, TRUE);

    object oDoor = GetFirstObjectInArea(GetArea(OBJECT_SELF), OBJECT_TYPE_DOOR);
    while(GetIsObjectValid(oDoor))
    {
        if(!GetPlotFlag(oDoor))
        {
            SetLocked(oDoor, FALSE);
            AssignCommand(oDoor, ActionOpenDoor(oDoor));
        }
        oDoor = GetNextObjectInArea(GetArea(OBJECT_SELF), OBJECT_TYPE_DOOR);
    }
}
