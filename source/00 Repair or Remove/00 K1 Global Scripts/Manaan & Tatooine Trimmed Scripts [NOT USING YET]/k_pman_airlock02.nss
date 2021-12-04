/*

*/
#include "k_inc_man"

void UnequipItems()
{
    int nMax = GetPartyMemberCount();
    int nIdx;
    object oPlayer;
    object oItem;
    for(nIdx = 0; nIdx < nMax; nIdx++)
    {
        oPlayer = GetPartyMemberByIndex(nIdx);
        oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON,oPlayer);
        if(GetIsObjectValid(oItem))
        {
            AssignCommand(oPlayer,ActionUnequipItem(oItem));
        }
        oItem = GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON,oPlayer);
        if(GetIsObjectValid(oItem))
        {
            AssignCommand(oPlayer,ActionUnequipItem(oItem));
        }
    }
}

void main()
{
    int nParty;
    for (nParty = NPC_BASTILA; nParty <= NPC_ZAALBAR; nParty++)
    {
        if(IsNPCPartyMember(nParty))
        {
            RemovePartyMember(nParty);
        }
    }

    //A cut scene will have to be addded here.
    DonSuits();
    //UnequipItems();
    if(GetTag(OBJECT_SELF) == "28d")
    {
        StartNewModule("manm28ad","from" + GetTag(OBJECT_SELF));
    }
    else
    {
        StartNewModule("manm28ab","from" + GetTag(OBJECT_SELF));
    }
}
