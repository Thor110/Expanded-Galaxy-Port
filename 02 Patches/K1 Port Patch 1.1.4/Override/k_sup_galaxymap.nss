//:: k_sup_galaxymap
/*
    Universal Script that fires when
    the galaxy map is used.
*/

#include "k_inc_hawk"
//#include "k_inc_stunt"

//turns off all of the core worlds and live planets.
void CUSTOM_TurnOffPlanets();

int CUSTOM_PlanetIDTo2DA(int nPlanetID);
int CUSTOM_2DAToPlanetID(int nPlanet2DA);

void DoPlanetChange()
{
  SignalEvent(GetArea(GetFirstPC()), EventUserDefined(1));
  PlayMovieQueue();
}

void main()
{
  int nSelected = GetSelectedPlanet();
  int nPrevPlanet = GetCurrentPlanet();
  SetGlobalNumber("K_FUTURE_PLANET", nSelected);
  //Game Variables
  int nCurrent = GetGlobalNumber("K_CURRENT_PLANET");//003EBO_RETURN_DEST
  //int nCurrent = GetGlobalNumber("003EBO_RETURN_DEST");
  int nStarmap = GetGlobalNumber("K_STAR_MAP");
  int nLevCapture = GetGlobalNumber("K_CAPTURED_LEV");
  int nKOTOR = GetGlobalNumber("K_KOTOR_MASTER");
  int nCALO = GetGlobalNumber("K_KALO_BANDON");
  if(nSelected == -1)
  {
    nSelected=PLANET_DANTOOINE;
  }                //
  if(GetGlobalNumber("K_CAPTURED_LEV") == 10)
  {
    QueueMovie("08");
    SetGlobalNumber("K_CAPTURED_LEV",11);
  }
  else
  {
    switch(GetGlobalNumber("003EBO_BACKGROUND"))
    {
        case 0://106PER
        {
            QueueMovie("KorMov02");
            QueueMovie("08");
			
        }break;
        case 1://201TEL
        {
            QueueMovie("TelMov02");
            QueueMovie("08");
        }break;
        case 2://New Yavin
        {
            QueueMovie("05_8c");
            QueueMovie("08");
        }break;
        case 3://301NAR
        {
            QueueMovie("NarMov02");
            QueueMovie("08");
        }break;
        case 4://401DXN
        {
            QueueMovie("OndMov04");
            QueueMovie("08");
        }break;
        case 5://601DAN
        {
            QueueMovie("05_2c");//
            QueueMovie("08");
        }break;
        case 6://701KOR
        {
            QueueMovie("05_7c");//K1 Movie?05_7c/KorMov02
            QueueMovie("08");
        }break;
        case 7://801DRO
        {
            QueueMovie("DroMov04");
            QueueMovie("08");
        }break;
        case 8://
        {
            QueueMovie("Live_1c");
            QueueMovie("08");
        }break;
        case 9://901MAL // new planet 02?
        {
            QueueMovie("Live_1c");
            QueueMovie("08");
        }break;
        case 10://Hyperspace // new planet 03?
        {
            //QueueMovie("KasMov02");
            //QueueMovie("HypMov01");
        }break;
        case 11: //KASHYYK
        {
            QueueMovie("05_4c");
            QueueMovie("08");
        }break;
        case 12: //954COR
        {
            QueueMovie("NarMov02");
            QueueMovie("08");
        }break;
        case 13: //YAVIN
        {
            QueueMovie("Live_1c");
            QueueMovie("08");
        }break;
        case 14: //TATOOINE
        {
            QueueMovie("05_3c");
            QueueMovie("08");
        }break;
        case 15: //MANAAN
        {
            QueueMovie("05_5c");
            QueueMovie("08");//HypMov01
            //}
        }break;
    }
}

    int nPlanet = nSelected;
    int nMain = GetGlobalNumber("K_KOTOR_MASTER");
    int nFuture = GetGlobalNumber("K_FUTURE_PLANET");

            if(nStarmap == 40 && nLevCapture == 5/* && nFuture == 11 && nFuture == 3 && nFuture == 14 && nFuture == 15*/)//11,3,14,15//star map planets
            {//figure out how to also check if you are travelling in between any of the four star map planets in order to get trapped by the Leviathan
                //QueueMovie("05_5c");
                //ST_PlayLevCaptureStunt();
                /*if(nFuture == 11 || nFuture == 3 || nFuture == 14 || nFuture == 15)
                {
                    SetGlobalNumber("K_CURRENT_PLANET", 40);
                    StartNewModule("stunt_16");
                }*/
                //else
                //{
                    SetGlobalNumber("K_CURRENT_PLANET", 40);
                    StartNewModule("stunt_16");
                //}
                //StartNewModule("stunt_16", "",  "", "08");
            }
            else if (nMain == 30 && nFuture == 9)//if player has all four star maps and is travelling to the unknown world
            {
                StartNewModule("stunt_18");
          }
          else//else do landing movie and set return destination / background variables for the ebon hawk
          {
    switch(nPlanet)//17 cases in this switch statement 0-15 = 16? 17 = LIVE_PLANET_06 ?.! figure out, find and assign the extra slot
    {               //also look into adding more slots if possible via LIVE_PLANET_##, 07 onwards extensions.
        case PLANET_PERAGUS://1//Korriban ?.!
        {
            AurPostString("ERROR: We should not be able to travel back to peragus.",0,10,5.0);
            // See if peragus slot can be usedSetGlobalNumber("003EBO_RETURN_DEST",2);
            SetGlobalNumber("003EBO_RETURN_DEST",0);//
            SetGlobalNumber("003EBO_BACKGROUND",0);//2

            // need to check where we are landing
            QueueMovie("KorMov01");
            SetGlobalNumber("K_CURRENT_PLANET",30);//peragus???korriban???
        }break;
        case 10://2//Telos : Citadel Station // extra case 0-16 exist and LIVE_PLANET_06 would be further extra
        {
            SetGlobalNumber("003EBO_RETURN_DEST",1);
            SetGlobalNumber("003EBO_BACKGROUND",1);

            // need to check where we are landing
            QueueMovie("TelMov01");
        }break;
        case PLANET_TELOS://3//Unknown World : Lehon
        {
            SetGlobalNumber("003EBO_RETURN_DEST",2);
            SetGlobalNumber("003EBO_BACKGROUND",2);

            // need to check where we are landing
            QueueMovie("05_8a");
            SetGlobalNumber("K_CURRENT_PLANET",45);
        }break;
        case PLANET_NAR_SHADDAA://4//Nar Shaddaa
        {
            SetGlobalNumber("003EBO_RETURN_DEST",3);
            SetGlobalNumber("003EBO_BACKGROUND",3);

            //if(GetGlobalBoolean("301_FIRST_ENTER"))//only que this movie if we have been here before
            QueueMovie("NarMov01");
        }break;
        case PLANET_DXUN://5//Onderon
        {

            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);

            QueueMovie("OndMov03");
        }break;
        case PLANET_ONDERON://6//Dxun ?.!
        {

            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);

            //first time going to onderon?
            /*if( (GetGlobalNumber("401DXN_Visited") == 0) && (GetGlobalNumber("401DXN_STARTED") == 0) )
            {
                SetGlobalNumber("401DXN_STARTED", 1);
                SetGlobalNumber("003EBO_RETURN_DEST",8);
                SetGlobalNumber("003EBO_BACKGROUND",8);//set space background
                QueueMovie("OndScn01");
            }*/
        }break;
        case PLANET_DANTOOINE://7//Dantooine
        {
            SetGlobalNumber("003EBO_RETURN_DEST",5);
            SetGlobalNumber("003EBO_BACKGROUND",5);

            QueueMovie("05_2a");
            SetGlobalNumber("K_CURRENT_PLANET",15);
        }break;
        case PLANET_KORRIBAN://8//Korriban
        {
            SetGlobalNumber("003EBO_RETURN_DEST",6);
            SetGlobalNumber("003EBO_BACKGROUND",6);

            QueueMovie("05_7a");//K1 Movie? 05_7a?KorMov01
            SetGlobalNumber("K_CURRENT_PLANET",30);
        }break;
        case PLANET_M4_78://9//M478
        {
            SetGlobalNumber("003EBO_RETURN_DEST",7);
            SetGlobalNumber("003EBO_BACKGROUND",7);

            QueueMovie("DroMov02");
        }break;
        case PLANET_MALACHOR_V://10//Yavin Station or Malachor V?.!
        {
            //SetGlobalNumber("003EBO_RETURN_DEST",8);//use to drop out of or mimic hyperspace
            //SetGlobalNumber("003EBO_BACKGROUND",8);//can be used to put ebon hawk into transit
            // check if this is actually used
            SetGlobalNumber("003EBO_RETURN_DEST",9);//8 originally - exit destination case
            SetGlobalNumber("003EBO_BACKGROUND",8);//4 is dxun - background and return planet icon case
                                                // alternating 8 for space background and 9 for return destination
            QueueMovie("LIVE_1a");//
        }break;
        case PLANET_LIVE_01://11//Kashyyyk
        {
            SetGlobalNumber("003EBO_RETURN_DEST",11);
            SetGlobalNumber("003EBO_BACKGROUND",11);// background check fires different planet exit

            QueueMovie("05_4a");
            SetGlobalNumber("K_CURRENT_PLANET",20);
        }break;
        case PLANET_LIVE_02://12//Coruscant
        {
            SetGlobalNumber("003EBO_RETURN_DEST",12);
            SetGlobalNumber("003EBO_BACKGROUND",12);
          
            //Coruscant No Movie
            QueueMovie("NarMov01");
        }break;
        case PLANET_LIVE_03://13//Yavin Station?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",13);
            SetGlobalNumber("003EBO_BACKGROUND",13);

            QueueMovie("LIVE_1a");
        }break;
        case PLANET_LIVE_04://14//Tatooine
        {
            SetGlobalNumber("003EBO_RETURN_DEST",14);
            SetGlobalNumber("003EBO_BACKGROUND",14);

            QueueMovie("05_3a");
            SetGlobalNumber("K_CURRENT_PLANET",35);
        }break;
        case PLANET_LIVE_05://15//Manaan
        {
            SetGlobalNumber("003EBO_RETURN_DEST",15);
            SetGlobalNumber("003EBO_BACKGROUND",15);
            QueueMovie("05_5a");
            SetGlobalNumber("K_CURRENT_PLANET",25);
        }break;
        case PLANET_EBON_HAWK://16//Malachor V?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",8);
            SetGlobalNumber("003EBO_BACKGROUND",10);
        }break;
        case PLANET_HARBINGER://17//Harbinger?.!
        {
            //SetGlobalNumber("003EBO_RETURN_DEST",15);
            //SetGlobalNumber("003EBO_BACKGROUND",15);

            //QueueMovie("KasMov01");//
            // case 15 is used for PLANET_LIVE_05
        }break;
    }
}//extra for if
    //fade out
    SetBackground();
    ExecuteScript("a_holoworld", GetFirstPC());
    DoPlanetChange();
}

//turns off all of the core worlds and live planets.
void CUSTOM_TurnOffPlanets()
{

    SetPlanetSelectable(PLANET_TELOS, FALSE);
    SetPlanetSelectable(PLANET_NAR_SHADDAA, FALSE);
    SetPlanetSelectable(PLANET_DXUN, FALSE);
    SetPlanetSelectable(PLANET_ONDERON, FALSE);
    SetPlanetSelectable(PLANET_DANTOOINE, FALSE);
    SetPlanetSelectable(PLANET_KORRIBAN, FALSE);
    SetPlanetSelectable(PLANET_MALACHOR_V, FALSE);
    SetPlanetSelectable(PLANET_TELOS, FALSE);
    SetPlanetSelectable(PLANET_EBON_HAWK, FALSE);  
    SetPlanetSelectable(PLANET_HARBINGER, FALSE);  
    SetPlanetSelectable(PLANET_PERAGUS, FALSE);   

    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG1))
    {
        SetPlanetSelectable(PLANET_M4_78, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG2))
    {
        SetPlanetSelectable(PLANET_LIVE_01, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG3))
    {
        SetPlanetSelectable(PLANET_LIVE_02, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG4))
    {
        SetPlanetSelectable(PLANET_LIVE_03, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG5))
    {
        SetPlanetSelectable(PLANET_LIVE_04, FALSE);
    }
    if(GetIsLiveContentAvailable(LIVE_CONTENT_PKG6))
    {
        SetPlanetSelectable(PLANET_LIVE_05, FALSE);
    }
}