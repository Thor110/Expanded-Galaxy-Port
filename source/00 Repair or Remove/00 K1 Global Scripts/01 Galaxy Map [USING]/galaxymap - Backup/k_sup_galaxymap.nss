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
    /*int nSelected = GetSelectedPlanet();
    //int nPrevPlanet = GetCurrentPlanet();
    SetGlobalNumber("K_FUTURE_PLANET", nSelected);
    //Game Variables
    int nCurrent = GetGlobalNumber("K_CURRENT_PLANET");//003EBO_RETURN_DEST
    //int nCurrent = GetGlobalNumber("003EBO_RETURN_DEST");
    int nStarmap = GetGlobalNumber("K_STAR_MAP");
    int nLevCapture = GetGlobalNumber("K_CAPTURED_LEV");
    int nKOTOR = GetGlobalNumber("K_KOTOR_MASTER");
    int nCALO = GetGlobalNumber("K_KALO_BANDON");*/
    //
    /*if(GetGlobalNumber("401DXN_STARTED") == 1)
    {
        //SetGlobalNumber("401DXN_STARTED", 2);
        PlayMovieQueue();
        //StartNewModule("003EBO", "WP_PC_WALK_MAP");
    }
    else if(GetModuleName() == "001EBO")
    {
        // if we are in tutorial, the galaxy map has different functionality
        //SetGlobalNumber ( "001EBO_Movie_End", 1);
        //PlayMovie("permov02");//play tutorial
        //AssignCommand( GetObjectByTag("Galaxymap"),ActionStartConversation(GetFirstPC(),"outro") );
    }
    else if( (GetGlobalNumber("003EBO_BACKGROUND") == 3)  && !GetGlobalBoolean("301_FIRST_ENTER") && (GetGlobalNumber("301_INTRO_SCENE") == 0) )
    {// first time to nar shadda
        //SetGlobalNumber("003EBO_RETURN_DEST",3);
        //SetGlobalNumber("301_INTRO_SCENE", 1);
        //DoFirst301();
        PlayMovieQueue();
    }
    else if( (GetGlobalNumber("003EBO_BACKGROUND") == 6) && !GetGlobalBoolean("701_FIRST_ENTER") && (GetGlobalNumber("701_INTRO_SCENE") == 0) )
    {//first time to koriban
        //SetGlobalNumber("003EBO_RETURN_DEST",6);
        //SetGlobalBoolean("701_FIRST_SCENE", TRUE);
        //SetGlobalNumber("701_INTRO_SCENE", 1);
        //DoFirst701();

        //old module load way below:
        PlayMovieQueue();
        //StartNewModule("003EBO", "WP_from_outside");
    }
    //AWD-OEI 10-23-2004
    else if((GetGlobalNumber("003EBO_BACKGROUND") == 1) && (!GetGlobalBoolean("201_FIRST_ENTER")))//201 first time
    {//first time to Telos, go ahead and jump to 201
        PlayMovieQueue();
        //StartNewModule("201TEL", "WP_from_ebonhawk");
    }
    //if (GetGlobalNumber("Tar_Destroyed") == 1)
    //{
        //int12=0;// otherwise Sleheyron is selected
        //SetGlobalNumber("003EBO_RETURN_DEST",10);
        //SetGlobalNumber("003EBO_BACKGROUND",8);
        
        //PlayMovie("HypMov01");// make a "HypMov02" removing the entering hyperspace
        //PlayMovie("TelMov01");
        //QueueMovie("HypMov01");// make a "HypMov02" removing the entering hyperspace
        //QueueMovie("TelMov01");
        //PlayMovieQueue();
        
        //StartNewModule("201TEL","WP_from_ebonhawk"); // ("", "WP_from_ebonhawk")
    //}
    // 262TEL cutscene triggers (JAB-OEI 10/22/04)
    else if( (GetGlobalNumber("000_Jedi_Found") >= 1) && (GetGlobalNumber("000_Jedi_Found") < 4) && (GetGlobalNumber("000_Atriscs1") == 0) && (IsAvailableCreature(NPC_HANDMAIDEN)))
    {//only if player is male
        PlayMovieQueue();
        //SetGlobalNumber("000_Atriscs1",2);
        //StartNewModule("262TEL");
    }
    else if( (GetGlobalNumber("000_Jedi_Found") >= 2) && (GetGlobalNumber("000_Jedi_Found") < 4) && (GetGlobalNumber("000_Siscut1") == 0) && (IsAvailableCreature(NPC_HANDMAIDEN)))
    {//only if player is male
        PlayMovieQueue();
        //SetGlobalNumber("000_Siscut1",2);
        //StartNewModule("262TEL");
    }*/
    //else
    //{
    /*if(nSelected != -1 && nSelected != nCurrent)
    {
        if(nKOTOR == 15 && nCALO == 0)
        {
            //Db_MyPrintString("GALAXY MAP DEBUG *********** I am running ST_PlayDantooineTakeOff()");
            SetGlobalNumber("K_KALO_BANDON", 10);
            //ST_PlayDantooineTakeOff();
            SetGlobalNumber("K_KOTOR_MASTER",12);
            StartNewModule("stunt_12");//
        }
        else if(nStarmap == 30 && nCALO == 20)
        {
            //Db_MyPrintString("GALAXY MAP DEBUG *********** I am running ST_PlayStunt14()");
            SetGlobalNumber("K_KALO_BANDON", 30);
            //ST_PlayStunt14();
            StartNewModule("stunt_14");
        }
        else if(nStarmap == 40 && nLevCapture == 5)
        {
            //Db_MyPrintString("GALAXY MAP DEBUG *********** I am running ST_PlayLevCaptureStunt()");
            SetPlanetSelectable(PLANET_DANTOOINE, FALSE);
            //ST_PlayLevCaptureStunt();
            SetGlobalNumber("K_CURRENT_PLANET", 40);
            StartNewModule("stunt_16");
            //StartNewModule("stunt_16", "",  sRender, "08");
        }
        else if(nStarmap == 50 && nKOTOR == 30 && nSelected == 45)
        {
            //When the Unknown World is selected then turn off the other parts of the galaxy map.
            //CUSTOM_TurnOffPlanets();
            //Db_MyPrintString("GALAXY MAP DEBUG *********** I am running ST_PlayBastilaTorture()");
            SetGlobalNumber("K_KOTOR_MASTER", 40);
            //ST_PlayBastilaTorture();
            StartNewModule("stunt_18");
            //StartNewModule("stunt_18", "", ST_GetTakeOffRender(), "08");
        }
        else if(nKOTOR == 50)
        {
            //Play the Lightside / Darkside Starforge approach
            //Db_MyPrintString("GALAXY MAP DEBUG *********** I am running Unknown World Take-Off");
            //ST_PlayUnknownWorldTakeOff();
              //STUNT_44    05_8C   5_9 = DARK SIDE   1
              //STUNT_42    05_8C   5_9 = LIGHT SIDE  2
            int nChoice = GetGlobalNumber("G_FINALCHOICE");
            if(nChoice == 1)
            {
                StartNewModule("stunt_44", "", "05_8C", "5_9");
            }
            else if(nChoice == 2)
            {
                StartNewModule("stunt_42", "", "05_8C", "5_9");
            }
            if(nChoice == 1 || nChoice == 2)
            {
                SetGlobalNumber("K_KOTOR_MASTER", 60);
            }
        }
        /*else if(nSelected != -1 && nSelected != nCurrent)// Planet To Planet Starfighter Battles
        {
            //Db_MyPrintString("GALAXY MAP DEBUG *********** Firing Default Transition ST_PlayPlanetToPlanet");
            //ST_PlayPlanetToPlanet();
            //StartNewModule("ebo_m12aa", ST_GetTakeOffRender(), ST_GetLandingRender());
            StartNewModule("ebo_m12aa");
            SetGlobalNumber("K_CURRENT_PLANET", nSelected);
        }*/
        /*else
        {
            Db_MyPrintString("GALAXY MAP DEBUG ********************** NO PLANETS SELECTED AND/OR AVAILABLE");
        }
        Db_MyPrintString("GALAXY MAP DEBUG ********************** K_SUP_GALAXYMAP ENDING");
        Db_MyPrintString("");
        //
        PlayMovieQueue();//
    }*/
    //else
    //{
        //Db_MyPrintString("GALAXY MAP DEBUG ********************** INVALID SELECTION K_SUP_GALAXYMAP ENDING");
        //Db_MyPrintString("");
        SignalEvent(GetArea(GetFirstPC()), EventUserDefined(1));
        PlayMovieQueue();
    //}//
    //}
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
    //

//#include "k_inc_ebonhawk"
//#include "k_inc_stunt"

//void main()
//{
    //int nSelected = GetSelectedPlanet();
    //nSelected = EBO_GetPlanetFrom2DA(nSelected);
    //SetGlobalNumber("K_FUTURE_PLANET", nSelected);
    //int nCurrent = GetGlobalNumber("K_CURRENT_PLANET");
    //int nStarmap = GetGlobalNumber("K_STAR_MAP");
    //int nLevCapture = GetGlobalNumber("K_CAPTURE_LEV");

    // This where it is makes both leaving manaan and leaving dantooin play then get gapture by the leviathan?

    /*if(nStarmap == 40 && nLevCapture == 5)
    {
        ST_PlayLevCaptureStunt();
        SetGlobalNumber("K_CURRENT_PLANET", 40);
    }*/
    //else
    //{
        //StartNewModule("ebo_m12aa", ST_GetTakeOffRender(), "8", ST_GetLandingRender());
        //SetGlobalNumber("K_CURRENT_PLANET", EBO_GetPlanetFrom2DA(nSelected));
    //}
//}
    if(nSelected == -1)
    {
      nSelected=PLANET_DANTOOINE;
    }
    // queue up leaving movie                 //
    switch(GetGlobalNumber("003EBO_BACKGROUND"))
    {
        case 0://106PER
        {
            // if and else case statements within a switch statement don't work.
            /*if(nStarmap == 40 && nLevCapture == 5)
            {
                QueueMovie("KorMov02");
                ST_PlayLevCaptureStunt();
                SetGlobalNumber("K_CURRENT_PLANET", 40);
            }*/
            //else
            //{
            // I don't think we have a movie to play here
            QueueMovie("KorMov02");
            QueueMovie("08");
            //}
            //Add a case and condition here that once met for all star map planets triggers the leviathan properly?
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
            /*if(nStarmap == 40 && nLevCapture == 5)
            {
                QueueMovie("05_4c");
                ST_PlayLevCaptureStunt();
                SetGlobalNumber("K_CURRENT_PLANET", 40);
            }*/
            //else
            //{
            QueueMovie("05_4c");
            QueueMovie("08");
            //}
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
            /*if(nStarmap == 40 && nLevCapture == 5)
            {
                QueueMovie("05_3c");
                ST_PlayLevCaptureStunt();
                SetGlobalNumber("K_CURRENT_PLANET", 40);
            }*/
            //else
            //{
            QueueMovie("05_3c");
            QueueMovie("08");
            //}
        }break;
        case 15: //MANAAN
        {
            /*if(nStarmap == 40 && nLevCapture == 5)
            {
                QueueMovie("05_5c");
                ST_PlayLevCaptureStunt();
                SetGlobalNumber("K_CURRENT_PLANET", 40);
            }*/
            //else//if/else doesnt work in switch statemens
            //{
            QueueMovie("05_5c");
            QueueMovie("08");//HypMov01
            //}
        }break;
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
                //if/else doesnt work in switch statement
                //{// can a switch statement be inside an if/else statement?
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
            }
            else
                AurPostString("ERROR!!! GALAXY MAP!",5,15,10.0);*/
        }break;
        case PLANET_DANTOOINE://7//Dantooine
        {
            SetGlobalNumber("003EBO_RETURN_DEST",5);
            SetGlobalNumber("003EBO_BACKGROUND",5);

            QueueMovie("05_2a");
        }break;
        case PLANET_KORRIBAN://8//Korriban
        {
            SetGlobalNumber("003EBO_RETURN_DEST",6);
            SetGlobalNumber("003EBO_BACKGROUND",6);

            QueueMovie("05_7a");//K1 Movie? 05_7a?KorMov01
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
        }break;
        case PLANET_LIVE_05://15//Manaan
        {
            SetGlobalNumber("003EBO_RETURN_DEST",15);
            SetGlobalNumber("003EBO_BACKGROUND",15);
            QueueMovie("05_5a");
        }break;
        case PLANET_EBON_HAWK://16//Malachor V?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",8);
            SetGlobalNumber("003EBO_BACKGROUND",10);

            QueueMovie("MalMov07");
            //PlayMovie("MalMov07", 0);
            //SetGlobalNumber("907MAL_CUTSCENE", 2);
            //SetGlobalNumber("852NIH_Nihilus_Dead", 2);
            //StartNewModule("907MAL", "", "", "", "", "", "", "");
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