//:: Adjust player alignment a large ways towards the light side
/*
    Heavily shifts the player's alignment towards the light side
*/
//:: Created By:  Jason Booth
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_utility"
void main()
{
    UT_LightHigh(GetPCSpeaker());
}

