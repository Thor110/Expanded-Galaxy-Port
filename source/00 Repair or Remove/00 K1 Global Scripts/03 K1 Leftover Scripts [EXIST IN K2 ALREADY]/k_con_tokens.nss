//:: k_con_tokens
/*
     Default Setup script for computer or repair
     token setup.  To use this script the writer
     should create a new version of this script
     in the same manner as a custom on spawn in
     script.

     Computer Skill uses tokens 31 - 40
     Repair Skill uses tokens 41 - 50

    Computer Use
    1.  Open all doors in area (cost: 3 spikes). The player can open all doors on the level.
    2.  Open all containers in area (cost: 3 spikes). The player can open all containers on the level.
    3.  Fill security room with gas (cost: 5 spikes).
    4.  Turn off all gun turrets (cost: 8 spikes).
    5.  Modify droid programming; target everything (cost: 10 spikes).
    6.  Deactivate all droids in area (cost: 8 spikes).

    Repair Use
    1.  Activate droid. Hostile to Sith faction. (cost: 3 repair unit)
    2.  Activate droid. Hostile to Sith faction. Enter patrol route. (cost: 5 repair unit)
    3.  Activate droid. Hostile to Sith faction. Hunter Killer mode. (cost: 7 repair unit)
    4.  Activate droid. Hostile to Sith faction. Follow mode. (cost: 5 repair unit)


    Modified by Peter T. 18/03/03
    Added Computer Use
    7. Slice into the computer (cost: 2 spikes).
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"

int StartingConditional()
{
    //Computer Tokens --

    int nToken31 = 3; //Open All Doors
    int nToken32 = 5; //Fill security room with gas
    int nToken33 = 8; //Turn off all gun turrets OR Deactivate all droids in area
    int nToken34 = 10; //Modify droid programming

    // Added by Peter T. 18/03/03
    int nToken35 = 2; // Initial slicing of the computer

    //int nToken36 = 0;
    //int nToken37 = 0;
    //int nToken38 = 0;
    //int nToken39 = 0;
    //int nToken40 = 0;

    //Repair Tokens --

    int nToken41 = 1; //Activate
    int nToken42 = 4; //Repair Weapons
    int nToken43 = 4; //Repair Targeting Computer
    int nToken44 = 5; //Repair Shields
    int nToken45 = 6; //Send on Patrol
    //int nToken46 = 0;
    //int nToken47 = 0;
    //int nToken48 = 0;
    //int nToken49 = 0;
    //int nToken50 = 0;

    SetCustomToken(31, IntToString(UT_DeterminesItemCost(3, SKILL_COMPUTER_USE)));
    SetCustomToken(32, IntToString(UT_DeterminesItemCost(5, SKILL_COMPUTER_USE)));
    SetCustomToken(33, IntToString(UT_DeterminesItemCost(8, SKILL_COMPUTER_USE)));
    SetCustomToken(34, IntToString(UT_DeterminesItemCost(10, SKILL_COMPUTER_USE)));

    // Added by Peter T. 18/03/03
    SetCustomToken(35, IntToString(UT_DeterminesItemCost(2, SKILL_COMPUTER_USE)));

    SetCustomToken(41, IntToString(UT_DeterminesItemCost(1, SKILL_REPAIR)));
    SetCustomToken(42, IntToString(UT_DeterminesItemCost(4, SKILL_REPAIR)));
    SetCustomToken(43, IntToString(UT_DeterminesItemCost(4, SKILL_REPAIR)));
    SetCustomToken(44, IntToString(UT_DeterminesItemCost(5, SKILL_REPAIR)));
    SetCustomToken(45, IntToString(UT_DeterminesItemCost(6, SKILL_REPAIR)));

    //If more tokens are needed then uncomment them and above and add more SetCustomToken lines for
    //the appropriate indexes.

    return TRUE;
}


