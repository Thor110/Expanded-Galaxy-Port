//:: k_ren_nextplanet
/*
     Go to the next planet after a STUNT
     scene and play a vision or not.
*/
//:: Created By: Preston Watamaniuk
//:: Copyright (c) 2002 Bioware Corp.

#include "k_inc_debug"
#include "k_inc_stunt"

void main()
{
  if(GetGlobalNumber("K_FUTURE_PLANET") == 3)
  {
    if(GetGlobalBoolean("k_vis_korriban") == FALSE)
    {
      ST_PlayVisionStunt();
    }
    else
    {
      ST_PlayGenericLanding();
    }
  }
  if(GetGlobalNumber("K_FUTURE_PLANET") == 11)
  {
    if(GetGlobalBoolean("k_vis_kashyyyk") == FALSE)
    {
      ST_PlayVisionStunt();
    }
    else
    {
      ST_PlayGenericLanding();
    }
  }
  if(GetGlobalNumber("K_FUTURE_PLANET") == 14)
  {
    if(GetGlobalBoolean("k_vis_tatooine") == FALSE)
    {
      ST_PlayVisionStunt();
    }
    else
    {
      ST_PlayGenericLanding();
    }
  }
  if(GetGlobalNumber("K_FUTURE_PLANET") == 15)
  {
    if(GetGlobalBoolean("k_vis_manaan") == FALSE)
    {
      ST_PlayVisionStunt();
    }
    else
    {
      ST_PlayGenericLanding();
    }
  }
  else
  {
    ST_PlayGenericLanding();
  }
}

