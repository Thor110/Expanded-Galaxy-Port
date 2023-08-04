//:: k_ptat_givepearl
/*
     The player receives Fizark's dragon pearl from Sharina.
*/
//:: Created By:
//:: Copyright (c) 2002 Bioware Corp.

void main()
{
    object oPC = GetPCSpeaker();
    object oPearl = GetItemPossessedBy(OBJECT_SELF, "tat17_fizarkprl");

    ActionGiveItem(oPearl, oPC);
}
