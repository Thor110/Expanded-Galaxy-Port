//::///////////////////////////////////////////////
//:: k_inc_lev
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
  include file for leviathan
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 26, 2002
//:://////////////////////////////////////////////
#include "k_inc_debug"
#include "k_inc_utility"
//mark an object for cleanup by the LEV_CleanupDeadObjects function
void LEV_MarkForCleanup(object obj);

//destroy all objects whose PLOT_10 flag has been set
void LEV_CleanupDeadObjects(object oArea);

//mark object for cleanup and move to nearest exit
void LEV_LeaveArea(object obj = OBJECT_SELF, int bRun = FALSE);

//fill container with treasure from table
void LEV_AddTreasureToContainer(object oContainer,int iTable,int iAmount);

//strip inventory from oTarget and put it in oDest
void LEV_StripCharacter(object oTarget,object oDest);

//::///////////////////////////////////////////////
//:: LEV_MarkForCleanup
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//mark an object for cleanup by the TAR_CleanupDeadObjects function
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 26, 2002
//:://////////////////////////////////////////////
void LEV_MarkForCleanup(object obj)
{
  UT_SetPlotBooleanFlag(obj,SW_PLOT_BOOLEAN_10,TRUE);
}

//::///////////////////////////////////////////////
//:: LEV_CleanupDeadObjects
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//destroy all objects whose PLOT_10 flag has been set
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 15, 2002
//:://////////////////////////////////////////////
void LEV_CleanupDeadObjects(object oArea)
{
  object obj;

  obj = GetFirstObjectInArea(oArea);
  //Db_PostString("START CLEANUP...",5,7,5.0);
  while(GetIsObjectValid(obj))
  {
    //Db_PostString("FOUND OBJ",5,6,5.0);
    if(UT_GetPlotBooleanFlag(obj,SW_PLOT_BOOLEAN_10))
    {
      //Db_PostString("CLEANING UP OBJECT",5,5,5.0);
      DestroyObject(obj);
    }
    obj = GetNextObjectInArea(oArea);
  }
}

//::///////////////////////////////////////////////
//:: LEV_LeaveArea
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//mark object for cleanup and move to nearest exit
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 26, 2002
//:://////////////////////////////////////////////
void LEV_LeaveArea(object obj = OBJECT_SELF, int bRun = FALSE)
{
  object oExit = GetNearestObjectByTag("plev_wpnpcext");

  LEV_MarkForCleanup(obj);
  if(GetIsObjectValid(oExit))
  {
    UT_PlotMoveObject(oExit,bRun);
  }
}

//fill container with treasure from table
void LEV_AddTreasureToContainer(object oContainer,int iTable,int iAmount)
{
  int i;

  if(!GetIsObjectValid(oContainer))
  {
    return;
  }

  for(i = 0;i < iAmount;i++)
  {
    switch(iTable)
    {
    case 0:
      switch(Random(3))
      {
      case 0:
        CreateItemOnObject("G_I_CREDITS001",oContainer,Random(30) + 10);
        break;
      case 1:
        CreateItemOnObject("G_I_DRDREPEQP002",oContainer);
        break;
      case 2:
        CreateItemOnObject("G_I_MEDEQPMNT04",oContainer);
        break;
      default:
        CreateItemOnObject("G_I_MEDEQPMNT02",oContainer);
      }
      break;
    }
  }
}

void LEV_StripCharacter(object oTarget,object oDest)
{
  object oItem;

  if(!GetIsObjectValid(oTarget) || !GetIsObjectValid(oDest))
  {
    return;
  }
  
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_BELT,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_BODY,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_HANDS,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_HEAD,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_IMPLANT,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_LEFTARM,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_LEFTWEAPON,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTARM,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  if(GetIsObjectValid(oItem = GetItemInSlot(INVENTORY_SLOT_RIGHTWEAPON,oTarget)))
  {
    GiveItem(oItem,oDest);
  }
  
  oItem = GetFirstItemInInventory(oTarget);
  while(GetIsObjectValid(oItem))
  {
    GiveItem(oItem,oDest);
    oItem = GetFirstItemInInventory(oTarget);
  }
}
