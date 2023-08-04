//:: k_sup_guiopen
/*
     Controls the text string
     that is displayed for the
     rapid transit system
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

object CUSTOM_GetSpacePortWay(int nCurrent_Planet);

void main()
{
    int nPlanet = GetGlobalNumber("K_CURRENT_PLANET");
    object oEbonHawk = GetWaypointByTag("K_EBON_HAWK_LOCATION");
    object oTarisApt = GetWaypointByTag("K_TARIS_APARTMENT");
    object oSpacePort = CUSTOM_GetSpacePortWay(nPlanet);
    string sMod = GetGlobalString("K_LAST_MODULE");

    if(!GetIsObjectValid(oEbonHawk) && !GetIsObjectValid(oSpacePort) && !GetIsObjectValid(oTarisApt))
    {
        if(nPlanet == 10)
        {
            SetReturnStrref(TRUE, 32228, 42465); //String Return To Hideout
        }
        else if(nPlanet != 5 && nPlanet != 0)
        {
            SetReturnStrref(TRUE, 38477, 42466); //String Return To Ebon Hawk
        }
        else
        {
            PrintString("JUMP VALIDATION ************************ 1st Transit Disabled Activated");
            SetReturnStrref(FALSE, 38550); //Transit Disabled
        }
    }
    else if((GetIsObjectValid(oEbonHawk) || GetIsObjectValid(oSpacePort)) && UT_ValidateJump(sMod) == FALSE)
    {
        PrintString("JUMP VALIDATION ************************ 2nd Transit Disabled Activated");
        SetReturnStrref(FALSE, 38550); //Transit Disabled
    }
    else
    {
        SetReturnStrref(TRUE, 32227, 42467); //Transit Back
    }
}

object CUSTOM_GetSpacePortWay(int nCurrent_Planet)
{
    object oWay;
    if(nCurrent_Planet == 10)
    {
        return GetWaypointByTag("tar02_sw02af");
    }
    else if(nCurrent_Planet == 15)
    {
        return GetWaypointByTag("K_DAN_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 20)
    {
        return GetWaypointByTag("K_KAS_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 25)
    {
        return GetWaypointByTag("K_MAN_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 30)
    {
        return GetWaypointByTag("K_KOR_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 35)
    {
        return GetWaypointByTag("K_TAT_EBON_HAWK_TRANSITION");
    }
    else if(nCurrent_Planet == 45)
    {
        return GetWaypointByTag("K_UNK_EBON_HAWK_TRANSITION");
    }
    return OBJECT_INVALID;
}
