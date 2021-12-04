//::///////////////////////////////////////////////
//:: k_ptar_sitharm
//:: Copyright (c) 2001 Bioware Corp.
//:://////////////////////////////////////////////
/*
  activate script for sith armor
*/
//:://////////////////////////////////////////////
//:: Created By: Jason Booth
//:: Created On: Oct. 8, 2002
//:://////////////////////////////////////////////
#include "k_inc_debug"
void main()
{
  int i;
  object obj;
  effect eff;

  Db_PostString("ACTIVATING ARMOR",5,5,5.0);
  i = 1;
  //obj = GetNearestCreature(CREATURE_TYPE_PERCEPTION,PERCEPTION_SEEN,GetFirstPC(),i);
  obj = GetNearestCreature(CREATURE_TYPE_RACIAL_TYPE,RACIAL_TYPE_ALL,GetFirstPC(),i);
  while(GetIsObjectValid(obj))
  {
    if((!IsObjectPartyMember(obj) && GetDistanceBetween(GetFirstPC(),obj) < 15.0) ||
      GetGlobalBoolean("TAR_DUELINPROGRESS"))
    {
      Db_PostString("SOMEONE TOO CLOSE - " + GetName(obj),5,6,5.0);
      AssignCommand(obj,
        ActionStartConversation(GetFirstPC(),"ptar_armor_dlg",FALSE,CONVERSATION_TYPE_CINEMATIC,TRUE));
      return;
    }
    i++;
    obj = GetNearestCreature(CREATURE_TYPE_PERCEPTION,PERCEPTION_SEEN,GetFirstPC(),i);
  }
  Db_PostString("ARMOR SUCCESS",5,6,5.0);
  SetGlobalBoolean("TAR_SITHARMOR",!GetGlobalBoolean("TAR_SITHARMOR"));
  if(GetGlobalBoolean("TAR_SITHARMOR"))
  {
    for(i = 0;i < GetPartyMemberCount();i++)
    {
      obj = GetPartyMemberByIndex(i);
      Db_PostString("APPLYING DISGUISE",5,5+i,5.0);
      ApplyEffectToObject(DURATION_TYPE_PERMANENT,EffectDisguise(DISGUISE_TYPE_N_SITHSOLDIER),obj);
    }
  }
  else
  {
    for(i = 0;i < GetPartyMemberCount();i++)
    {
      obj = GetPartyMemberByIndex(i);
      eff = GetFirstEffect(obj);
      while(GetIsEffectValid(eff))
      {
        if(GetEffectType(eff) == EFFECT_TYPE_DISGUISE)
        {
          Db_PostString("REMOVING DISGUISE",5,5+i,5.0);
          RemoveEffect(obj,eff);
        }
        eff = GetNextEffect(obj);
      }
    }
  }
}
