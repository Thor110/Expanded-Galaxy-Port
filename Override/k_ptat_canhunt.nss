//:: k_ptat_canhunt
/*
     The player is given a hunter's license.
*/
//:: Created By: John Winski
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    object oPC = GetPCSpeaker();

    CreateItemOnObject("tat17_huntpermit", oPC);
}
