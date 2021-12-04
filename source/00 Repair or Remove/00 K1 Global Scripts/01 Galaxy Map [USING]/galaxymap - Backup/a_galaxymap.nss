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
			return 5;//5 = extra planet ///////
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

///*

    /*if (GetGlobalNumber("003EBO_Atton_Talk") <= 4) {
        object oPC = GetFirstPC();
        AssignCommand(oPC, ClearAllActions());
        AssignCommand(OBJECT_SELF, ActionStartConversation(oPC, "galaxy", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));   
        return;
    }
    else if (GetGlobalNumber("003EBO_RETURN_DEST") == 4) {
        if (GetGlobalNumber("502OND_End_First") == 0) {
            object oPC = GetFirstPC();
            AssignCommand(oPC, ClearAllActions());
            AssignCommand(OBJECT_SELF, ActionStartConversation(oPC, "galaxy2", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));          
            return;
        }
    }
    else if (GetGlobalNumber("003_IN_COMBAT") == 1) {
        object oPC = GetFirstPC();
        AssignCommand(oPC, ClearAllActions());
        AssignCommand(OBJECT_SELF, ActionStartConversation(oPC, "galaxy", FALSE, CONVERSATION_TYPE_CINEMATIC, TRUE));           
        return;
    }*///Combat and Dialog?
    int nWorld = 0;/*
    for (nWorld = PLANET_DANTOOINE; nWorld < PLANET_LIVE_01; ++nWorld) {
        SetPlanetAvailable(nWorld, FALSE);
        SetPlanetSelectable(nWorld, FALSE); 
    }
    
    if (GetGlobalNumber("900MAL_Open") == 1) {
        for (nWorld = PLANET_DANTOOINE; nWorld < PLANET_LIVE_01; nWorld++) {
            int nPlanet = nWorld;
            SetPlanetAvailable(nPlanet, TRUE);
            
            if (nWorld == PLANET_MALACHOR_V) 
                SetPlanetSelectable(nPlanet, TRUE); 
        }       
    }*/
    int nMain = GetGlobalNumber("K_KOTOR_MASTER");
    /*else
    {
        SetPlanetAvailable(PLANET_TELOS, FALSE);
        SetPlanetSelectable(PLANET_TELOS, FALSE);
    {*/
    //else if Tar_Destroyed
    if (GetGlobalBoolean("Tar_Destroyed") == 1) {
        for (nWorld = PLANET_DANTOOINE; nWorld < PLANET_LIVE_01; nWorld++) {
            int nPlanet = nWorld;
            
            if (nWorld != PLANET_MALACHOR_V) {
                SetPlanetAvailable(nPlanet, TRUE);
                
                if (nWorld != PLANET_PERAGUS) 
                    SetPlanetSelectable(nPlanet, TRUE);                 
            }
        }    
            //if (GetGlobalBoolean("Tar_Destroyed") == 1) {
            SetPlanetAvailable(PLANET_LIVE_01, TRUE);
            SetPlanetSelectable(PLANET_LIVE_01, TRUE); 
            SetPlanetAvailable(PLANET_LIVE_02, TRUE);
            SetPlanetSelectable(PLANET_LIVE_02, TRUE);  
            SetPlanetAvailable(PLANET_LIVE_03, TRUE);
            SetPlanetSelectable(PLANET_LIVE_03, TRUE);   
            SetPlanetAvailable(PLANET_LIVE_04, TRUE);
            SetPlanetSelectable(PLANET_LIVE_04, TRUE);   
            SetPlanetAvailable(PLANET_LIVE_05, TRUE);
            SetPlanetSelectable(PLANET_LIVE_05, TRUE); 
            SetPlanetAvailable(PLANET_PERAGUS, TRUE);
            SetPlanetSelectable(PLANET_PERAGUS, TRUE);
            //SetPlanetAvailable(PLANET_LIVE_06, TRUE);// can #06 be used too?
            //SetPlanetSelectable(PLANET_LIVE_06, TRUE); 
            SetPlanetAvailable(PLANET_HARBINGER, FALSE);
            SetPlanetSelectable(PLANET_HARBINGER, FALSE);    
            SetPlanetAvailable(PLANET_MALACHOR_V, TRUE);
            SetPlanetSelectable(PLANET_MALACHOR_V, FALSE);
            SetPlanetAvailable(PLANET_M4_78, TRUE);
            SetPlanetSelectable(PLANET_M4_78, TRUE);
            SetPlanetAvailable(PLANET_EBON_HAWK, FALSE);// MALACHOR V IS OFF FOR NOW
            SetPlanetSelectable(PLANET_EBON_HAWK, FALSE);
            SetPlanetAvailable(PLANET_DANTOOINE, TRUE);
            SetPlanetSelectable(PLANET_DANTOOINE, TRUE);
            SetPlanetAvailable(PLANET_ONDERON, FALSE);// ONDERON IS OFF FOR NOW
            SetPlanetSelectable(PLANET_ONDERON, FALSE);
            SetPlanetAvailable(PLANET_DXUN, TRUE);
            SetPlanetSelectable(PLANET_DXUN, TRUE);
            //SetPlanetAvailable(PLANET_KORRIBAN, TRUE);
            //SetPlanetSelectable(PLANET_KORRIBAN, TRUE);
            SetPlanetAvailable(PLANET_NAR_SHADDAA, TRUE);
            SetPlanetSelectable(PLANET_NAR_SHADDAA, TRUE);
//
    if (nMain == 30)
    {
        SetPlanetAvailable(PLANET_TELOS, TRUE);
        SetPlanetSelectable(PLANET_TELOS, TRUE);
    }
    else
    {
        SetPlanetAvailable(PLANET_TELOS, FALSE);
        SetPlanetSelectable(PLANET_TELOS, FALSE);
    }
    /*if (nMain == 20)
    {
        SetPlanetAvailable(PLANET_DANTOOINE, TRUE); //DAT
        SetPlanetSelectable(PLANET_DANTOOINE, FALSE);
    }*/
        //}
        /*else {
            SetPlanetSelectable(PLANET_LIVE_01, FALSE);
            SetPlanetSelectable(PLANET_LIVE_02, FALSE);
            SetPlanetSelectable(PLANET_LIVE_03, FALSE);
            SetPlanetSelectable(PLANET_LIVE_04, FALSE);
            SetPlanetSelectable(PLANET_LIVE_05, FALSE);
            SetPlanetSelectable(PLANET_TELOS, FALSE);
            SetPlanetSelectable(PLANET_EBON_HAWK, FALSE);
            SetPlanetSelectable(PLANET_HARBINGER, FALSE);   
            SetPlanetSelectable(PLANET_PERAGUS, FALSE);   
            SetPlanetSelectable(PLANET_MALACHOR_V, FALSE); 
            SetPlanetSelectable(PLANET_M4_78, FALSE);
        }*/
    
    }
    /*else { 
        // After Peragus Before Telos
        SetPlanetAvailable(PLANET_HARBINGER, TRUE); // HARBINGER IS TELOS : CITADEL STATION
        SetPlanetSelectable(PLANET_HARBINGER, TRUE); //
        SetPlanetAvailable(PLANET_MALACHOR_V, TRUE); // MALACHOR_V is a spare planet space - now peragus - spare for future use
        SetPlanetSelectable(PLANET_MALACHOR_V, TRUE);
        SetPlanetAvailable(PLANET_EBON_HAWK, TRUE);// EBON_HAWK IS MALACHOR_V
        SetPlanetSelectable(PLANET_EBON_HAWK, TRUE);
        SetPlanetAvailable(PLANET_PERAGUS, TRUE);// PERAGUS IS SLEHEYRON
        SetPlanetSelectable(PLANET_PERAGUS, TRUE);//     
        SetPlanetAvailable(PLANET_TELOS, TRUE);// TELOS IS LEHON
        SetPlanetSelectable(PLANET_TELOS, TRUE);//   
        SetPlanetAvailable(PLANET_LIVE_01, TRUE); // LIVE_01 IS KASHYYYK
        SetPlanetSelectable(PLANET_LIVE_01, TRUE); 
        SetPlanetAvailable(PLANET_LIVE_02, TRUE); // LIVE_02 IS CORUSCANT
        SetPlanetSelectable(PLANET_LIVE_02, TRUE);  
        SetPlanetAvailable(PLANET_LIVE_03, TRUE); // LIVE_03 IS YAVIN
        SetPlanetSelectable(PLANET_LIVE_03, TRUE);   
        SetPlanetAvailable(PLANET_LIVE_04, TRUE); // LIVE_04 IS TATOOINE
        SetPlanetSelectable(PLANET_LIVE_04, TRUE);   
        SetPlanetAvailable(PLANET_LIVE_05, TRUE); // LIVE_05 IS MANAAN
        SetPlanetSelectable(PLANET_LIVE_05, TRUE);      // can PLANET_ONDERON be used?                  
    }*/
    //if ((GetGlobalNumber("000_M478_Found") == 0)) {
		//SetPlanetAvailable(PLANET_M4_78, FALSE);
		//SetPlanetSelectable(PLANET_M4_78, FALSE);
    //}
    //
    /*if (GetGlobalNumber("852NIH_Nihilus_Dead") == 1)
    {
      SetPlanetAvailable(PLANET_EBON_HAWK, TRUE);
      SetPlanetSelectable(PLANET_EBON_HAWK, TRUE); 
      if (GetGlobalNumber("GBL_GAME_COMPLETE") >= 1)
      {
        SetPlanetAvailable(PLANET_EBON_HAWK, TRUE);// EBON HAWK IS MALACHOR
        SetPlanetSelectable(PLANET_EBON_HAWK, FALSE); 
      }
    }
    else
    {
      SetPlanetAvailable(PLANET_EBON_HAWK, FALSE);
      SetPlanetSelectable(PLANET_EBON_HAWK, FALSE); 
    }*/
    //
    int int12 = sub1();
    // Show Malachor Anyway For Now
      //SetPlanetAvailable(PLANET_EBON_HAWK, TRUE);
      //SetPlanetSelectable(PLANET_EBON_HAWK, TRUE); 
    
    // ST: In Space or Hyperspace
    //if ((GetGlobalNumber("003EBO_BACKGROUND") == 8) || (GetGlobalNumber("003EBO_BACKGROUND") == 10)) {
        //int12 = 2;
        //SetPlanetAvailable(2, 1); 
    //}
    // check after telos
    if (nMain == 20)
    {
        int12=6;// otherwise Sleheyron is selected
        //int12=5;
        SetPlanetAvailable(int12, TRUE);
        SetPlanetSelectable(int12, FALSE);
        //QueueMovie("HypMov01");// make a "HypMov02" removing the entering hyperspace
        //QueueMovie("TelMov01");
        //PlayMovieQueue();
        //StartNewModule("201TEL", "WP_from_ebonhawk");
        ExecuteScript("k_sup_galaxymap", OBJECT_SELF, -1);
    }
    /*if(GetGlobalBoolean("Tar_Destroyed") == 1 && GetGlobalBoolean("Tar_Destroyed") == 1 )
    {// change to a number to alter so this doesnt always happen
        int12=0;//
        SetPlanetSelectable(int12, FALSE);
        ShowGalaxyMap(int12);
    }*/
    else
    {
        SetPlanetSelectable(int12, FALSE);
        ShowGalaxyMap(int12);
    }
}
