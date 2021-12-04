#include "k_inc_stunt"

void main() {
	//DelayCommand(0.1, ExecuteScript("k_ren_leavlev", OBJECT_SELF, 0xFFFFFFFF));
  int nFPlanet = GetGlobalNumber("K_FUTURE_PLANET");

  if(nFPlanet == 15)
  {
      if(GetGlobalBoolean("K_STAR_MAP_KASHYYYK") == FALSE)
      {
          nFPlanet = 20;
      }
      else if(GetGlobalBoolean("K_STAR_MAP_MANAAN") == FALSE)
      {
          nFPlanet = 25;
      }
      else if(GetGlobalBoolean("K_STAR_MAP_KORRIBAN") == FALSE)
      {
          nFPlanet = 30;
      }
      else if(GetGlobalBoolean("K_STAR_MAP_TATOOINE") == FALSE)
      {
          nFPlanet = 35;
      }
  }
  SetGlobalNumber("K_FUTURE_PLANET", nFPlanet);
  if(ST_VisionPlayed() == TRUE)
  {
      //StartNewModule("ebo_m12aa","",  ST_GetLandingRender());
      StartNewModule("ebo_m12aa");
      SetGlobalNumber("K_CURRENT_PLANET", nFPlanet);
  }
  else
  {
      //ST_PlayVisionStunt();
      StartNewModule("stunt_00","", "07_1");
  }
}

