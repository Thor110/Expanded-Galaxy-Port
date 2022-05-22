//::///////////////////////////////////////////////
//:: k_inc_tar
//:: k_inc_tar
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
  include file for taris
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: July 16, 2002
//:://////////////////////////////////////////////
#include "k_inc_debug"
#include "k_inc_utility"

//performs a standard creature transformation where the original creature
//is destroyed and a new creature is put in its place.  returns a reference
//to the new creature.
object TAR_TransformCreature(object oTarget = OBJECT_INVALID,string sTemplate = "");

//test routine for walking waypoints
void TAR_WalkWaypoints();

//mark an object for cleanup by the TAR_CleanupDeadObjects function
void TAR_MarkForCleanup(object obj = OBJECT_SELF);

//destroy all objects whose PLOT_10 flag has been set
void TAR_CleanupDeadObjects(object oArea);

//make object do an uninterruptible path move
void TAR_PlotMovePath(string sWayPointTag,int nFirst, int nLast, int nRun = FALSE);

//make object do an uninterruptible move to an object
void TAR_PlotMoveObject(object oTarget,int nRun = FALSE);

//make object do an uninterruptible move to a location
void TAR_PlotMoveLocation(location lTarget,int nRun = FALSE);

//check for rukil's apprentice journal
int TAR_PCHasApprenticeJournal();

//return number of promised land journals player has
int TAR_GetNumberPromisedLandJournals();

//toggle the state of sith armor
void TAR_ToggleSithArmor();

//fill container with treasure from table
void TAR_AddTreasureToContainer(object oContainer,int iTable,int iAmount);

//returns TRUE if object is wearing sith armor
int TAR_GetWearingSithArmor(object oTarget = OBJECT_INVALID);

//strip sith armor from party, equipping another appropriate item (if available)
//returns the sith armor object if it was being worn
object TAR_StripSithArmor();

//teleport party member
void TAR_TeleportPartyMember(object oPartyMember, location lDest);

//makes the sith armor equippable
void TAR_EnableSithArmor();

//strip all items from an object
void TAR_StripCharacter(object oTarget,object oDest);

//::///////////////////////////////////////////////
//:: TAR_TransformCreature
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//performs a standard creature transformation where the original creature
//is destroyed and a new creature is put in its place.  returns a reference
//to the new creature.
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: July 16, 2002
//:://////////////////////////////////////////////
object TAR_TransformCreature(object oTarget = OBJECT_INVALID,string sTemplate = "")
{
  if(GetIsObjectValid(oTarget) && sTemplate != "")
  {
    location lPlace = GetLocation(oTarget);

    DestroyObject(oTarget,0.0,TRUE);
    return(CreateObject(OBJECT_TYPE_CREATURE,sTemplate,lPlace));
  }
  else
  {
    return(OBJECT_INVALID);
  }
}

//::///////////////////////////////////////////////
//:: TAR_WalkWaypoints
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//test routine for walking waypoints
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: July 29, 2002
//:://////////////////////////////////////////////
void TAR_WalkWaypoints()
{
  object oNextWP = OBJECT_INVALID;
  string sWPPath = "";

  if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_01))
  {
    sWPPath = "ptar_testwp1";
  }
  else if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_02))
  {
    sWPPath = "ptar_testwp2";
  }
  else if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_03))
  {
    sWPPath = "ptar_testwp3";
  }
  else if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_04))
  {
    sWPPath = "ptar_testwp4";
  }
  else if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_05))
  {
    sWPPath = "ptar_testwp5";
  }
  else
  {
    sWPPath = "ptar_testwp6";
  }
  
  if(UT_GetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_06))
  {
    sWPPath = sWPPath + "_1";
    UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_06,FALSE);
  }
  else
  {
    sWPPath = sWPPath + "_0";
    UT_SetPlotBooleanFlag(OBJECT_SELF,SW_PLOT_BOOLEAN_06,TRUE);
  }
  
  oNextWP = GetObjectByTag(sWPPath);
  
  Db_PostString("MOVING TO " + GetTag(oNextWP),5,5,2.0);
  //ClearAllActions();
  ActionForceMoveToObject(oNextWP);
  ActionDoCommand(TAR_WalkWaypoints());
}

//::///////////////////////////////////////////////
//:: TAR_MarkForCleanup
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//mark an object for cleanup by the TAR_CleanupDeadObjects function
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 16, 2002
//:://////////////////////////////////////////////
void TAR_MarkForCleanup(object obj = OBJECT_SELF)
{
  UT_SetPlotBooleanFlag(obj,SW_PLOT_BOOLEAN_10,TRUE);
}

//::///////////////////////////////////////////////
//:: TAR_CleanupDeadObjects
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//destroy all objects whose PLOT_10 flag has been set
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 15, 2002
//:://////////////////////////////////////////////
void TAR_CleanupDeadObjects(object oArea)
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
      DestroyObject(obj,0.0,TRUE);
    }
    obj = GetNextObjectInArea(oArea);
  }
}

//::///////////////////////////////////////////////
//:: TAR_PlotMovePath
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//make object do an uninterruptible path move
//based on code done by Aidan (actually, pretty much a copy)
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 16, 2002
//:://////////////////////////////////////////////
void TAR_PlotMovePath(string sWayPointTag,int nFirst, int nLast, int nRun = FALSE)
{

    int nInc = 1;
    object oWP;
    int nIdx;
    if(nFirst > nLast)
    {
        nInc = -1;
    }
    for(nIdx = nFirst - nInc; abs(nLast - nIdx) > 0 && abs(nLast - nIdx) <= abs((nLast - nFirst) + 1); nIdx = nIdx + nInc)
    {
        oWP = GetObjectByTag(sWayPointTag + IntToString(nIdx + nInc));
        if(GetIsObjectValid(oWP))
        {
            ActionForceMoveToObject(oWP,nRun);
        }
    }
    ActionDoCommand(SetCommandable(TRUE));
    SetCommandable(FALSE);
}

//::///////////////////////////////////////////////
//:: TAR_PlotMoveObject
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//make object do an uninterruptible move to an object
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 16, 2002
//:://////////////////////////////////////////////
void TAR_PlotMoveObject(object oTarget,int nRun = FALSE)
{
  ActionForceMoveToObject(oTarget,nRun);
  ActionDoCommand(SetCommandable(TRUE));
  SetCommandable(FALSE);
}

//::///////////////////////////////////////////////
//:: TAR_PlotMoveObject
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//make object do an uninterruptible move to a location
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 16, 2002
//:://////////////////////////////////////////////
void TAR_PlotMoveLocation(location lTarget,int nRun = FALSE)
{
  ActionForceMoveToLocation(lTarget,nRun);
  ActionDoCommand(SetCommandable(TRUE));
  SetCommandable(FALSE);
}

//::///////////////////////////////////////////////
//:: TAR_PCHasApprenticeJournal
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//check for rukil's apprentice journal
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 21, 2002
//:://////////////////////////////////////////////
int TAR_PCHasApprenticeJournal()
{
  return(GetIsObjectValid(GetItemPossessedBy(GetFirstPC(),"ptar_appjournal")));
}

//::///////////////////////////////////////////////
//:: TAR_GetNumberPromisedLandJournals
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//return number of promised land journals player has
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 21, 2002
//:://////////////////////////////////////////////
int TAR_GetNumberPromisedLandJournals()
{
  object oInv;
  int iJournals = 0;
  
  oInv = GetFirstItemInInventory(GetFirstPC());
  while(GetIsObjectValid(oInv))
  {
    if(GetTag(oInv) == "ptar_rukjournal")
    {
      Db_PostString("JOURNALS - " + IntToString(GetNumStackedItems(oInv)),5,5,5.0);
      iJournals += GetNumStackedItems(oInv);
    }
    oInv = GetNextItemInInventory(GetFirstPC());
  }
  
  return(iJournals);
}

//::///////////////////////////////////////////////
//:: TAR_ToggleSithArmor
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//toggle the state of sith armor
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Oct. 8, 2002
//:://////////////////////////////////////////////
void TAR_ToggleSithArmor()
{
  int i;
  object obj;
  
  obj = GetItemActivated();
  if(GetTag(obj) != "ptar_sitharmor")
  {
    return;
  }
  
  i = 1;
  obj = GetNearestCreature(CREATURE_TYPE_RACIAL_TYPE,RACIAL_TYPE_ALL,GetFirstPC(),i);
  while(GetIsObjectValid(obj))
  {
    if(GetDistanceBetween(obj,GetFirstPC()) < 10.0 && !IsObjectPartyMember(obj))
    {
      ActionStartConversation(GetFirstPC(),"ptar_armor_dlg");
      return;
    }
    i++;
    obj = GetNearestCreature(CREATURE_TYPE_RACIAL_TYPE,RACIAL_TYPE_ALL,GetFirstPC(),i);
  }
  
  ActionStartConversation(GetFirstPC(),"ptar_armon_dlg");
  SetGlobalBoolean("TAR_SITHARMOR",!GetGlobalBoolean("TAR_SITHARMOR"));
}

//fill container with treasure from table
void TAR_AddTreasureToContainer(object oContainer,int iTable,int iAmount)
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
        CreateItemOnObject("G_I_CREDITS001",oContainer,Random(20) + 1);
        break;
      case 1:
        CreateItemOnObject("G_I_DRDREPEQP001",oContainer);
        break;
      case 2:
        CreateItemOnObject("G_I_MEDEQPMNT04",oContainer);
        break;
      default:
        CreateItemOnObject("G_I_MEDEQPMNT01",oContainer);
      }
      break;
    case 1:
      switch(Random(11))
      {
      case 0:
        CreateItemOnObject("G_W_BLSTRPSTL001",oContainer);
        break;
      case 1:
        CreateItemOnObject("G_I_SECSPIKE01",oContainer);
        break;
      case 2:
        CreateItemOnObject("G_I_PROGSPIKE01",oContainer);
        break;
      case 3:
        CreateItemOnObject("G_A_CLASS5001",oContainer);
        break;
      case 4:
        CreateItemOnObject("G_W_FRAGGREN01",oContainer);
        break;
      case 5:
        CreateItemOnObject("G_W_STUNGREN01",oContainer);
        break;
      case 6:
        CreateItemOnObject("G_W_IONGREN01",oContainer);
        break;
      case 7:
        CreateItemOnObject("G_W_SONICGREN01",oContainer);
        break;
      case 8:
        CreateItemOnObject("G_W_VBROSHORT01",oContainer);
        break;
      case 9:
        CreateItemOnObject("G_W_STUNBATON01",oContainer);
        break;
      default:
        CreateItemOnObject("G_I_CREDITS001",oContainer,Random(40) + 20);
        break;
      }
      break;
    case 2:
      switch(Random(5))
      {
      case 0:
        CreateItemOnObject("G_W_BLSTRPSTL001",oContainer);
        break;
      case 1:
        CreateItemOnObject("G_W_QTRSTAFF01",oContainer);
        break;
      case 2:
        CreateItemOnObject("G_I_MEDEQPMNT01",oContainer);
        break;
      case 3:
        CreateItemOnObject("G_A_CLASS4001",oContainer);
        break;
      default:
        CreateItemOnObject("G_I_CREDITS001",oContainer,Random(20) + 1);
        break;
      }
      break;
    }
  }
}


int TAR_GetWearingSithArmor(object oTarget = OBJECT_INVALID)
{
  int i;
  object obj;
  object oArmorItem = GetItemInSlot(INVENTORY_SLOT_BODY,oTarget);

  if(!GetIsObjectValid(oTarget))
  {
    for(i = 0;i < GetPartyMemberCount();i++)
    {
      obj = GetPartyMemberByIndex(i);
      oArmorItem = GetItemInSlot(INVENTORY_SLOT_BODY,obj);
      if(GetTag(oArmorItem) == "ptar_sitharmor")
      {
        return(TRUE);
      }
    }
    return(FALSE);
  }
  return(GetTag(oArmorItem) == "ptar_sitharmor");
}

//strip sith armor from target, equipping another appropriate item (if available)
object TAR_StripSithArmor()
{
  object oArmor = OBJECT_INVALID;
  object obj;
  object oTarget;
  int i;

  Db_PostString("STRIPPING ARMOR = " + GetTag(oTarget),5,7,5.0);

  for(i = 0;i < GetPartyMemberCount();i++)
  {
    oTarget = GetPartyMemberByIndex(i);
    
    if(TAR_GetWearingSithArmor(oTarget))
    {
      Db_PostString("ARMOR STRIPPED",5,8,5.0);
      oArmor = GetItemInSlot(INVENTORY_SLOT_BODY,oTarget);
      SetCommandable(TRUE,oTarget);
      AssignCommand(oTarget,ActionUnequipItem(oArmor));
      obj = GetFirstItemInInventory(oTarget);
      while(GetIsObjectValid(obj))
      {
        if(GetBaseItemType(obj) == BASE_ITEM_BASIC_CLOTHING)
        {
          Db_PostString("PUT ON NEW ITEM",5,9,5.0);
          AssignCommand(oTarget,ActionEquipItem(obj,INVENTORY_SLOT_BODY,TRUE));
          break;
        }
        obj = GetNextItemInInventory(oTarget);
      }
    }
    else if(GetIsObjectValid(obj = GetItemPossessedBy(oTarget,"ptar_sitharmor")))
    {
      oArmor = obj;
      Db_PostString("ARMOR FOUND",5,9,5.0);
    }
  }
  return(oArmor);
}

//teleport party member
void TAR_TeleportPartyMember(object oPartyMember, location lDest)
{
  if(!GetIsObjectValid(oPartyMember))
  {
    return;
  }
  
  SetCommandable(TRUE,oPartyMember);
  AssignCommand(oPartyMember,ClearAllActions());
  AssignCommand(oPartyMember,ActionJumpToLocation(lDest));
}

//makes the sith armor equippable
void TAR_EnableSithArmor()
{
  int i;
  object obj;
  object oArmor;
  
  for(i = 0;i < GetPartyMemberCount();i++)
  {
    obj = GetPartyMemberByIndex(i);
    if(GetIsObjectValid(oArmor = GetItemPossessedBy(obj,"ptar_sitharmor")))
    {
      SetItemNonEquippable(oArmor,FALSE);
    }
  }
}

void TAR_StripCharacter(object oTarget,object oDest)
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


