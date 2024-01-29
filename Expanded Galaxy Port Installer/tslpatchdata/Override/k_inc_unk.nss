//::///////////////////////////////////////////////
//:: k_inc_unk
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
  include file for unknown world
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Sept. 9, 2002
//:://////////////////////////////////////////////
#include "k_inc_debug"
#include "k_inc_utility"
#include "k_inc_generic"
//mark an object for cleanup by the UNK_CleanupDeadObjects function
void UNK_MarkForCleanup(object obj);

//destroy all objects whose PLOT_10 flag has been set
void UNK_CleanupDeadObjects(object oArea);

//mark object for cleanup and move to nearest exit
void UNK_LeaveArea(object obj = OBJECT_SELF, int bRun = FALSE);

//test if red rakata are hostile
int UNK_GetRedRakataHostile();

//test if black rakata are hostile
int UNK_GetBlackRakataHostile();

//make red rakatans hostile
void UNK_SetRedRakataHostile();

//make black rakatans hostile
void UNK_SetBlackRakataHostile();

//make black rakatans neutral
void UNK_SetBlackRakataNeutral();

//fill container with treasure from table
void UNK_AddTreasureToContainer(object oContainer,int iTable,int iAmount);

// unavoidable damage to all within radius
void UNK_RakDefence(string sObjectTag, float fDistance, int bIndiscriminant = TRUE);

//::///////////////////////////////////////////////
//:: UNK_MarkForCleanup
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//mark an object for cleanup by the TAR_CleanupDeadObjects function
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 26, 2002
//:://////////////////////////////////////////////
void UNK_MarkForCleanup(object obj)
{
  UT_SetPlotBooleanFlag(obj,SW_PLOT_BOOLEAN_10,TRUE);
}

//::///////////////////////////////////////////////
//:: UNK_CleanupDeadObjects
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//destroy all objects whose PLOT_10 flag has been set
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 15, 2002
//:://////////////////////////////////////////////
void UNK_CleanupDeadObjects(object oArea)
{
  object obj;

  obj = GetFirstObjectInArea(oArea);
  //Db_PostString("START CLEANUP...",5,7,5.0);
  while(GetIsObjectValid(obj))
  {
    //Db_PostString("FOUND OBJ",5,6,5.0);
    if ((UT_GetPlotBooleanFlag(obj,SW_PLOT_BOOLEAN_10)) && (IsObjectPartyMember(obj) == FALSE))
    {
      //Db_PostString("CLEANING UP OBJECT",5,5,5.0);
      DestroyObject(obj,0.0,TRUE);
    }
    obj = GetNextObjectInArea(oArea);
  }
}

//::///////////////////////////////////////////////
//:: UNK_LeaveArea
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//mark object for cleanup and move to nearest exit
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: August 26, 2002
//:://////////////////////////////////////////////
void UNK_LeaveArea(object obj = OBJECT_SELF, int bRun = FALSE)
{
  object oExit = GetNearestObjectByTag("punk_wpnpcext");

  UNK_MarkForCleanup(obj);
  if ((GetIsObjectValid(oExit)) && (IsObjectPartyMember(oExit) == FALSE))
  {
    UT_PlotMoveObject(oExit,bRun);
  }
}

//::///////////////////////////////////////////////
//:: UNK_GetRedRakataHostile
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//test if red rakata are hostile
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Sept. 10, 2002
//:://////////////////////////////////////////////
int UNK_GetRedRakataHostile()
{
  return (GetGlobalNumber("unk_redvill") == 99);
}

//::///////////////////////////////////////////////
//:: UNK_GetBlackRakataHostile
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//test if black rakata are hostile
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Sept. 10, 2002
//:://////////////////////////////////////////////
int UNK_GetBlackRakataHostile()
{
  return ((GetGlobalBoolean("UNK_USEDDARKSIDE") == FALSE) && (GetGlobalBoolean("UNK_BLACKHOSTILE") == FALSE));
}

//::///////////////////////////////////////////////
//:: UNK_SetRedRakatanHostile
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//make red rakatans hostile
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Sept. 13, 2002
//:://////////////////////////////////////////////
void UNK_SetRedRakataHostile()
{
  object obj;

  SetGlobalNumber("Unk_redvill",99);
  SetGlobalBoolean("Unk_RedHostile",TRUE);
  obj = GetFirstObjectInArea();
  while (GetIsObjectValid(obj))
  {
    if ((GetTag(obj) != "unk42_breed01") && (GetTag(obj) != "unk42_breed02") && (GetTag(obj) != "unk42_breed03") && (GetTag(obj) != "unk41_gizka") && (IsObjectPartyMember(obj) == FALSE))
    {
      ChangeToStandardFaction(obj,STANDARD_FACTION_HOSTILE_1);
      AssignCommand(obj,ClearAllActions());
      AssignCommand(obj, GN_DetermineCombatRound());
    }
    obj = GetNextObjectInArea();
  }
}

//::///////////////////////////////////////////////
//:: UNK_SetBlackRakatanHostile
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//make black rakatans hostile
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Sept. 13, 2002
//:://////////////////////////////////////////////
void UNK_SetBlackRakataHostile()
{
  object obj;

  Db_PostString("SCANNING...",5,5,5.0);
  SetGlobalBoolean("UNK_BLACKHOSTILE",TRUE);
  obj = GetFirstObjectInArea();
  Db_PostString("FOUND OBJ...",5,5,5.0);
  while(GetIsObjectValid(obj))
  {
    if ((GetTag(obj) != "unk41_gizka") && (IsObjectPartyMember(obj) == FALSE) && (GetTag(obj) != "unk43_redpris"))
    {
      Db_PostString("IN LOOP...",5,5,5.0);
      Db_PostString("RAKATA HOSTILE",5,5,5.0);
      ChangeToStandardFaction(obj,STANDARD_FACTION_HOSTILE_1);
      AssignCommand(obj,ClearAllActions());
      AssignCommand(obj, GN_DetermineCombatRound());
    }

    obj = GetNextObjectInArea();
  }
}

//::///////////////////////////////////////////////
//:: UNK_SetBlackRakataNeutral
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
//make black rakatans neutral
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Sept. 13, 2002
//:://////////////////////////////////////////////
void UNK_SetBlackRakataNeutral()
{
  object obj;

  obj = GetFirstObjectInArea();
  while(GetIsObjectValid(obj))
  {
    if (IsObjectPartyMember(obj) == FALSE)
    {
        ChangeToStandardFaction(obj,STANDARD_FACTION_NEUTRAL);
        AssignCommand(obj,ClearAllActions());
    }

    obj = GetNextObjectInArea();
  }
}

//fill container with treasure from table
void UNK_AddTreasureToContainer(object oContainer,int iTable,int iAmount)
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
        CreateItemOnObject("G_I_CREDITS001",oContainer,Random(50) + 20);
        break;
      case 1:
        CreateItemOnObject("G_I_MEDEQPMNT04",oContainer);
        break;
      default:
        CreateItemOnObject("G_I_MEDEQPMNT02",oContainer);
      }
      break;
    case 1:
      switch(Random(5))
      {
      case 0:
        CreateItemOnObject("G_I_CREDITS001",oContainer,Random(50) + 20);
        break;
      case 1:
        CreateItemOnObject("G_I_MEDEQPMNT04",oContainer);
        break;
      case 2:
        CreateItemOnObject("G_I_DRDREPEQP002",oContainer);
        break;
      case 3:
        CreateItemOnObject("G_I_PARTS01",oContainer);
        break;
      default:
        CreateItemOnObject("G_I_MEDEQPMNT02",oContainer);
      }
      break;
    }
  }
}


//::///////////////////////////////////////////////
//:: Rakatan Defence Grid
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
    Overloads a power conduit and does 10d6 damage
    to all within the specified radius
*/
//:://////////////////////////////////////////////
//:: Created By: Peter Thomas
//:: Created On:
//:://////////////////////////////////////////////

void UNK_RakDefence(string sObjectTag, float fDistance, int bIndiscriminant = TRUE)
{
    object oWay = GetObjectByTag(sObjectTag);
    if(GetIsObjectValid(oWay))
    {
        effect eFNF = EffectVisualEffect(VFX_FNF_GRENADE_ION);
        effect eVFXHit = EffectVisualEffect(1021);
        effect eVFXBeam = EffectBeam(VFX_BEAM_LIGHTNING_DARK_L, oWay, BODY_NODE_CHEST);
        effect eDam;

        object oTarget = GetNearestObject(OBJECT_TYPE_CREATURE, oWay, 1);
        int nCount = 1;
        int nDam = 1000;
        float fDelay = 0.3;

        AssignCommand(oWay, ActionPlayAnimation(ANIMATION_PLACEABLE_OPEN));

        DelayCommand(0.3, ApplyEffectAtLocation(DURATION_TYPE_INSTANT, eFNF, GetLocation(oWay)));
        while(GetIsObjectValid(oTarget) && GetDistanceBetween(oTarget, oWay) <= fDistance)
        {
            if(bIndiscriminant == TRUE || GetIsEnemy(oTarget, GetFirstPC()))
            {
                eDam = EffectDamage(nDam, DAMAGE_TYPE_UNIVERSAL);
                DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget));
                //fDelay = fDelay + 0.17;

                eDam = EffectDeath();
                DelayCommand(fDelay + 0.1, ApplyEffectToObject(DURATION_TYPE_INSTANT, eDam, oTarget));
                DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_TEMPORARY, eVFXBeam, oTarget, 1.0));
                DelayCommand(fDelay, ApplyEffectToObject(DURATION_TYPE_INSTANT, eVFXHit, oTarget, 1.0));
                fDelay = fDelay + 0.17;
}
            nCount++;
            oTarget = GetNearestObject(OBJECT_TYPE_CREATURE, oWay, nCount);
        }
        ApplyEffectToObject(DURATION_TYPE_INSTANT, EffectVisualEffect(VFX_PRO_DROID_KILL), oWay);

    }
}

