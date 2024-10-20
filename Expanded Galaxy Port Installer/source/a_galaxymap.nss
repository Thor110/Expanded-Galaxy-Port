// ST: a_galaxymap.nss (003EBO_s.rim)

#include "k_inc_hawk"

// Prototypes
int sub1();

int sub1() {
	int nGlobal = GetGlobalNumber("003EBO_BACKGROUND");
	switch (nGlobal) {
		case 0:
			return 8;//8 = sleheyron ///////
			break;
		case 1://telos
			return 10;//10 = telos
			break;
		case 2://lehon
			return 9;//8
			break;
		case 3:// nar shaddaa
			return 6;
			break;
		case 4: // dxun
			return 1;//2
			break;
		case 5: // onderon ////////
			return 0;//1
			break;
		case 6: // dantooine
			return 3;
			break;
		case 7: // korriban
			return 4;
			break;
		case 8: //
			return 2;//5 = Taris ///////The returned value matches the 2DA Rows
			break;
		case 9: // malachor / onderon ?
			return 7;//9
			break;
		case 10: // malachor / onderon ?
			return 2;//2
			break;
		case 11: // kashyyyk
			return 11;
			break;
		case 12: // coruscant
			return 12;
			break;
		case 13: // yavin
			return 13;
			break;
		case 14: // tatooine
			return 14;
			break;
		case 15: // manaan
			return 15;
			break;
		default:
			return 2;
	}
	return 2;
}

void main() {
  int nWorld = 0;
  int nMain = GetGlobalNumber("K_KOTOR_MASTER");
  int nMaps = GetGlobalNumber("K_STAR_MAP");
  int kCapt = GetGlobalNumber("K_CAPTURED_LEV");
  if (GetGlobalBoolean("K_STAR_MAP") <= 10)//Found first star map
  {
    for (nWorld = PLANET_DANTOOINE; nWorld < PLANET_LIVE_06; nWorld++)
    {
      int nPlanet = nWorld;
      SetPlanetAvailable(nPlanet, TRUE);
      SetPlanetSelectable(nPlanet, TRUE);
    }
    //ALL TRUE VALUES COMMENTED OUT ARE CURRENTLY TRUE
    //SetPlanetAvailable(PLANET_LIVE_06, TRUE);   // can #06 be used too?
    //SetPlanetSelectable(PLANET_LIVE_06, TRUE);  // or is just to enable the above for to include 06?
    //SetPlanetAvailable(PLANET_LIVE_01, TRUE);   // LIVE_01 IS KASHYYYK
    //SetPlanetSelectable(PLANET_LIVE_01, TRUE); 
    SetPlanetAvailable(PLANET_LIVE_02, FALSE);    // LIVE_02 IS CORUSCANT
    SetPlanetSelectable(PLANET_LIVE_02, FALSE);
    //SetPlanetAvailable(PLANET_LIVE_03, TRUE);   // LIVE_03 IS YAVIN
    //SetPlanetSelectable(PLANET_LIVE_03, TRUE);   
    //SetPlanetAvailable(PLANET_LIVE_04, TRUE);   // LIVE_04 IS TATOOINE
    //SetPlanetSelectable(PLANET_LIVE_04, TRUE);
    //SetPlanetAvailable(PLANET_LIVE_05, TRUE);   // LIVE_05 IS MANAAN
    //SetPlanetSelectable(PLANET_LIVE_05, TRUE);
    //SetPlanetAvailable(PLANET_PERAGUS, TRUE);   // PERAGUS IS SLEHEYRON
    //SetPlanetSelectable(PLANET_PERAGUS, TRUE);
    SetPlanetAvailable(PLANET_HARBINGER, FALSE);  //HARBINGER IS STAR FORGE SYSTEM
    SetPlanetSelectable(PLANET_HARBINGER, FALSE);    
    //SetPlanetAvailable(PLANET_MALACHOR_V, TRUE);//MALACHOR V IS TARIS
    SetPlanetSelectable(PLANET_MALACHOR_V, FALSE);
    SetPlanetAvailable(PLANET_M4_78, FALSE);      //M4-78
    SetPlanetSelectable(PLANET_M4_78, FALSE);
    SetPlanetAvailable(PLANET_EBON_HAWK, FALSE);  //EBON HAWK IS MALACHOR V
    SetPlanetSelectable(PLANET_EBON_HAWK, FALSE);
    //SetPlanetAvailable(PLANET_DANTOOINE, TRUE); //DANTOOINE
    //SetPlanetSelectable(PLANET_DANTOOINE, TRUE);
    SetPlanetAvailable(PLANET_ONDERON, FALSE);    //ONDERON
    SetPlanetSelectable(PLANET_ONDERON, FALSE);
    SetPlanetAvailable(PLANET_DXUN, FALSE);       //DXUN
    SetPlanetSelectable(PLANET_DXUN, FALSE);
    //SetPlanetAvailable(PLANET_KORRIBAN, TRUE);  //KORRIBAN
    //SetPlanetSelectable(PLANET_KORRIBAN, TRUE);
    SetPlanetAvailable(PLANET_NAR_SHADDAA, FALSE);//NAR SHADDAA
    SetPlanetSelectable(PLANET_NAR_SHADDAA, FALSE);
    SetPlanetAvailable(PLANET_TELOS, FALSE);      //UNKNOWN WORLD
    SetPlanetSelectable(PLANET_TELOS, FALSE);
    if (GetGlobalBoolean("MAN_EXILED")) {
      SetPlanetSelectable(PLANET_LIVE_05, FALSE);
    }
    if (nMaps >= 40 && kCapt >= 10)
    {
      SetPlanetSelectable(PLANET_DANTOOINE, FALSE);
    }
    if (nMaps >= 50 && kCapt >= 10)
    {
      SetPlanetAvailable(PLANET_HARBINGER, TRUE); //HARBINGER IS STAR FORGE SYSTEM
      SetPlanetSelectable(PLANET_HARBINGER, TRUE);    
    }
  }
  if (nMain == 60 || nMain == 50)
  {
    for (nWorld = PLANET_DANTOOINE; nWorld < PLANET_LIVE_06; nWorld++)
    {
      int nPlanet = nWorld;
      SetPlanetAvailable(nPlanet, FALSE);
      SetPlanetSelectable(nPlanet, FALSE);
    }
    SetPlanetAvailable(PLANET_HARBINGER, TRUE);   //HARBINGER IS OFF FOR NOW = STAR FORGE SYSTEM
    SetPlanetSelectable(PLANET_HARBINGER, TRUE);  
    SetPlanetAvailable(PLANET_TELOS, TRUE);       //UNKNOWN WORLD
    SetPlanetSelectable(PLANET_TELOS, TRUE);
  }
  if (nMain == 61)
  {
    SetPlanetAvailable(PLANET_TELOS, TRUE);       //UNKNOWN WORLD
    SetPlanetSelectable(PLANET_TELOS, TRUE);
    SetPlanetAvailable(PLANET_HARBINGER, FALSE);  //HARBINGER IS STAR FORGE SYSTEM
    SetPlanetSelectable(PLANET_HARBINGER, FALSE);  
  }
  if(nMain == 63)//DS End Game
  {
    SetPlanetAvailable(PLANET_HARBINGER, TRUE);  //HARBINGER IS STAR FORGE SYSTEM
    SetPlanetSelectable(PLANET_HARBINGER, TRUE);  
  }
  if(nMain >= 62)//LS OR DS End Game
  {
    SetPlanetAvailable(PLANET_LIVE_02, TRUE);    // LIVE_02 IS CORUSCANT
    SetPlanetSelectable(PLANET_LIVE_02, TRUE); 
    SetPlanetAvailable(PLANET_M4_78, TRUE);      //M4-78
    SetPlanetSelectable(PLANET_M4_78, TRUE);
    //SetPlanetAvailable(PLANET_EBON_HAWK, TRUE);  //EBON HAWK IS MALACHOR V
    //SetPlanetSelectable(PLANET_EBON_HAWK, TRUE);
    //SetPlanetAvailable(PLANET_ONDERON, TRUE);    //ONDERON
    //SetPlanetSelectable(PLANET_ONDERON, TRUE);
    SetPlanetAvailable(PLANET_DXUN, TRUE);       //DXUN
    SetPlanetSelectable(PLANET_DXUN, TRUE);
    SetPlanetAvailable(PLANET_NAR_SHADDAA, TRUE);//NAR SHADDAA
    SetPlanetSelectable(PLANET_NAR_SHADDAA, TRUE);
  }
  int int12 = sub1();
  if(nMaps >= 10)
  {
    SetPlanetSelectable(int12, FALSE);
    ShowGalaxyMap(int12);
  }
}
