//:: k_swg_hk47upg01
/*
  HK-47 Item Upgrade 4
  Destroy Old Hide, Create New Hide
*/
//:: Created By: Drew Karpyshyn
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"

void main()
{
    object oOldHide = GetItemInSlot(INVENTORY_SLOT_CARMOUR,OBJECT_SELF);
    object oNewHide = CreateItemOnObject("g_i_crhide012",OBJECT_SELF);

    if (GetIsObjectValid (oOldHide))
        {
        DestroyObject(oOldHide);
        }

    ActionEquipItem(oNewHide,INVENTORY_SLOT_CARMOUR,TRUE);


}

