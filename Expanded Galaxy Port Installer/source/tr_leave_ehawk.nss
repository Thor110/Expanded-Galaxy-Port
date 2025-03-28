// ST: tr_leave_ehawk.nss (003EBO_s.rim)

#include "k_inc_hawk"

void ExitToDxunOnderon();
void ExitToKorriban();
void DoEbo004ExitHawk();

void main() {
    object oEnter = GetEnteringObject();
    SetNPCSelectability(NPC_KREIA, TRUE);
    SetNPCSelectability(NPC_ATTON, TRUE);
    SetNPCSelectability(NPC_BAO_DUR, TRUE);
    SetNPCSelectability(NPC_CANDEROUS, TRUE);
    SetNPCSelectability(NPC_G0T0, TRUE);
    SetNPCSelectability(NPC_HANDMAIDEN, TRUE);
    SetNPCSelectability(NPC_HK_47, TRUE);
    SetNPCSelectability(NPC_MIRA, TRUE);
    SetNPCSelectability(NPC_T3_M4, TRUE);
    SetNPCSelectability(NPC_VISAS, TRUE);
    if (oEnter == GetFirstPC()) {
        // ST: In combat
        if (GetGlobalNumber("003_IN_COMBAT") == 1) {
            BarkString(OBJECT_INVALID, 135165); 
            return;
        }       
        // ST: In space
        else if (GetGlobalNumber("003EBO_RETURN_DEST") == 8) {
            BarkString(OBJECT_INVALID, 129942); 
            return;         
        }
        // ST: Landed on Dxun
        else if (GetGlobalNumber("003EBO_RETURN_DEST") == 4) {
            SetGlobalFadeOut();
            SetFadeUntilScript();
            AurPostString("Leaving the hawk", 15, 22, 10.0);
            DelayCommand(1.0, ExitToDxunOnderon());//
        }   
        // ST: Landed on Korriban       
        else if (GetGlobalNumber("003EBO_RETURN_DEST") == 6) {
            //SetGlobalFadeOut();
            //SetFadeUntilScript();
            //AurPostString("Leaving the hawk", 15, 22, 10.0);
            DelayCommand(1.0, ExitToKorriban());//
            //ExitToKorriban();
        }
		// M4-78EP
		else if ((GetGlobalNumber("003EBO_RETURN_DEST") == 7) && (!GetGlobalBoolean("801DRO_FIRST_ENTER"))) {
			SetGlobalFadeOut();
			SetFadeUntilScript();
			ExecuteScript("check_party_gui", GetFirstPC(), 0xFFFFFFFF);
		}
        else {
            SetGlobalFadeOut();
            SetFadeUntilScript();   
            ShowPartySelectionGUI("check_party_gui", -1, -1, TRUE);     
        }           
    }
}

void ExitToDxunOnderon () {
    if (GetGlobalBoolean("401_FIRST_ENTER") && (GetGlobalNumber("502OND_End_First") > 0)) {
        AurPostString("Atton is selectable", 5, 19, 10.0);
        SetNPCSelectability(NPC_ATTON, TRUE);
    }
    else {
        //SetNPCSelectability(NPC_ATTON, FALSE);
        AurPostString("Atton is NOT selectable", 5, 19, 10.0);
    }   
    AurPostString("Showing party selection", 5, 20, 10.0);
    ShowPartySelectionGUI("check_party_gui"); 
}

void ExitToKorriban() {
    if(GetGlobalNumber("K_CURRENT_PLANET") == 3) {
      SetNPCSelectability(NPC_ATTON, FALSE);
    }
    AurPostString("Bastila is NOT selectable", 5, 19, 10.0);
    AurPostString("Showing party selection", 5, 20, 10.0);
    ShowPartySelectionGUI("check_party_gui");   
}

void DoEbo004ExitHawk() {

    string sComplete;
    //if (GetGlobalNumber("LIGHT_OR_DARK") >= 1)
    //sComplete = "E";
    //if (sComplete = "E")
    if (GetEnteringObject() == GetFirstPC()) {
        int nDest = GetGlobalNumber("003EBO_RETURN_DEST");
        
        
        string sDest;
        switch (nDest) {
            case 0:  sDest = "liv_m99ab";   break;//1 PERAGUS REPLACED
            case 1:  sDest = "201_TEL";      break;//1
            case 2:  sDest = "unk_m41aa";   break;//1 LEHON
            case 3:  sDest = "301_NAR";      break;//1
            case 4:  sDest = "401_DXN";      break;//1
            case 5:  sDest = "danm13";      break;//1
            case 6:  sDest = "korr_m33aa";      break;//1
            case 7:  sDest = "801_DRO";      break;//1
            case 8:  sDest = "ERROR";       break;//0 EBON HAWK ALWAYS GOES TO MANAAN?
            case 9:  sDest = "901_MAL";   break;//1
            case 10: sDest = "ERROR";       break;//0
            case 11: sDest = "kas_m22aa"; 	break;//1
            case 12: sDest = "954_COR"; 	    break;//1??
            case 13: sDest = "liv_m99aa"; 	break;//1
            case 14: sDest = "tat_m17ab"; 	break;//1
            case 15: sDest = "manm26ad"; 	break;//1
            default: sDest = "ERROR";
            //case 8:  sDest = "ERROR";       break;
            //case 9:  sDest = "901MAL";      break;
            //case 10: sDest = "ERROR";       break;//
        }
        if (sDest == "ERROR")
            AurPostString("EBO ERROR: No module sepcified!", 5, 15, 10.0);
        else
            //sDest = sDest + sComplete;
            StartNewModule(sDest+sComplete, "WP_from_ebonhawk");
            //SendMessageToPC(GetFirstPC(), sDest+sComplete);
    }
}