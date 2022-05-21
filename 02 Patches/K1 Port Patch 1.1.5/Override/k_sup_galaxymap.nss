//:: k_sup_galaxymap
/*
    Universal Script that fires when
    the galaxy map is used.
*/

#include "k_inc_hawk"
#include "k_inc_stunt"

//turns off all of the core worlds and live planets.
void CUSTOM_TurnOffPlanets();

//void BastilaConversation();

int CUSTOM_PlanetIDTo2DA(int nPlanetID);
int CUSTOM_2DAToPlanetID(int nPlanet2DA);
/*
void BastilaConversation()
{

	int nGlobal = GetGlobalNumber("K_CURRENT_PLANET");
	int int5 = 0;
	if (((((((nGlobal == 15) || (nGlobal == 20)) || (nGlobal == 25)) || (nGlobal == 30)) || (nGlobal == 35)))) {
		object oNearestBastila = GetNearestObjectByTag("Bastila", OBJECT_SELF, 1);
		if (GetIsObjectValid(oNearestBastila)) {
			if (((nGlobal == 15) && (!GetGlobalBoolean("k_vis_dantooine")))) {
				int5 = 1;
				SetGlobalBoolean("k_vis_dantooine", 1);
			}
			else {
				if (((nGlobal == 20) && (!GetGlobalBoolean("k_vis_kashyyyk")))) {
					int5 = 1;
					SetGlobalBoolean("k_vis_kashyyyk", 1);
				}
				else {
					if (((nGlobal == 25) && (!GetGlobalBoolean("k_vis_manaan")))) {
						int5 = 1;
						SetGlobalBoolean("k_vis_manaan", 1);
					}
					else {
						if (((nGlobal == 30) && (!GetGlobalBoolean("k_vis_korriban")))) {
							int5 = 1;
							SetGlobalBoolean("k_vis_korriban", 1);
						}
						else {
							if (((nGlobal == 35) && (!GetGlobalBoolean("k_vis_tatooine")))) {
								int5 = 1;
								SetGlobalBoolean("k_vis_tatooine", 1);
							}
						}
					}
				}
			}
			if ((int5 == 1)) {
				object oPC = GetFirstPC();
				AurPostString("I am going to talk", 5, 6, 4.0);
				AurPostString(("Bastila is Valid = " + IntToString(GetIsObjectValid(oNearestBastila))), 5, 7, 4.0);
				AurPostString(("PC is Valid = " + IntToString(GetIsObjectValid(oPC))), 5, 8, 4.0);
				AssignCommand(oNearestBastila, ActionStartConversation(oPC, "ebo_bast_vision", 0, 0, 1, "", "", "", "", "", "", 0));  
        SendMessageToPC(GetFirstPC(),"bastila conversation happen here");
			}
		}
	}
}
*/
void DoPlanetChange()
{
  SignalEvent(GetArea(GetFirstPC()), EventUserDefined(1));
  PlayMovieQueue();//BastilaConversation();
}

void SetPlanet()
{
            //SetGlobalNumber("K_CURRENT_PLANET", nPlanet);
  switch(GetGlobalNumber("K_CURRENT_PLANET"))//17 cases in this switch statement 0-15 = 16? 17 = LIVE_PLANET_06 ?.! figure out, find and assign the extra slot
    {               //also look into adding more slots if possible via LIVE_PLANET_##, 07 onwards extensions.
        case PLANET_PERAGUS://1//Korriban ?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",0);//
            SetGlobalNumber("003EBO_BACKGROUND",0);//2
            SetGlobalNumber("K_CURRENT_PLANET",10);
        }break;
        case 10://2//Telos : Citadel Station // extra case 0-16 exist and LIVE_PLANET_06 would be further extra
        {
            SetGlobalNumber("003EBO_RETURN_DEST",1);
            SetGlobalNumber("003EBO_BACKGROUND",1);
            SetGlobalNumber("K_CURRENT_PLANET",60);// set accordingly
        }break;
        case PLANET_TELOS://3//Unknown World : Lehon
        {
            SetGlobalNumber("003EBO_RETURN_DEST",2);
            SetGlobalNumber("003EBO_BACKGROUND",2);
            SetGlobalNumber("K_CURRENT_PLANET",45);
        }break;
        case PLANET_NAR_SHADDAA://4//Nar Shaddaa
        {
            SetGlobalNumber("003EBO_RETURN_DEST",3);
            SetGlobalNumber("003EBO_BACKGROUND",3);
            SetGlobalNumber("K_CURRENT_PLANET",65);// set accordingly
        }break;
        case PLANET_DXUN://5//Onderon
        {
            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);
            SetGlobalNumber("K_CURRENT_PLANET",70);// set accordingly
        }break;
        case PLANET_ONDERON://6//Dxun ?.!
        {

            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);
            SetGlobalNumber("K_CURRENT_PLANET",75);// set accordingly
        }break;
        case PLANET_DANTOOINE://7//Dantooine
        {
            SetGlobalNumber("003EBO_RETURN_DEST",5);
            SetGlobalNumber("003EBO_BACKGROUND",5);
            SetGlobalNumber("K_CURRENT_PLANET",15);
        }break;
        case PLANET_KORRIBAN://8//Korriban
        {
            SetGlobalNumber("003EBO_RETURN_DEST",6);
            SetGlobalNumber("003EBO_BACKGROUND",6);
            SetGlobalNumber("K_CURRENT_PLANET",30);
        }break;
        case PLANET_M4_78://9//M478
        {
            SetGlobalNumber("003EBO_RETURN_DEST",7);
            SetGlobalNumber("003EBO_BACKGROUND",7);
            SetGlobalNumber("K_CURRENT_PLANET",80);// set accordingly
        }break;
        case PLANET_MALACHOR_V://10//Yavin Station or Malachor V?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",9);//8 originally - exit destination case
            SetGlobalNumber("003EBO_BACKGROUND",8);//4 is dxun - background and return planet icon case
            SetGlobalNumber("K_CURRENT_PLANET",55);// set accordingly
        }break;
        case PLANET_LIVE_01://11//Kashyyyk
        {
            SetGlobalNumber("003EBO_RETURN_DEST",11);
            SetGlobalNumber("003EBO_BACKGROUND",11);// background check fires different planet exit
            SetGlobalNumber("K_CURRENT_PLANET",20);
        }break;
        case PLANET_LIVE_02://12//Coruscant
        {
            SetGlobalNumber("003EBO_RETURN_DEST",12);
            SetGlobalNumber("003EBO_BACKGROUND",12);
            SetGlobalNumber("K_CURRENT_PLANET",85);// set accordingly
        }break;
        case PLANET_LIVE_03://13//Yavin Station?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",13);
            SetGlobalNumber("003EBO_BACKGROUND",13);
            SetGlobalNumber("K_CURRENT_PLANET",55);// set accordingly
        }break;
        case PLANET_LIVE_04://14//Tatooine
        {
            SetGlobalNumber("003EBO_RETURN_DEST",14);
            SetGlobalNumber("003EBO_BACKGROUND",14);
            SetGlobalNumber("K_CURRENT_PLANET",35);
        }break;
        case PLANET_LIVE_05://15//Manaan
        {
            SetGlobalNumber("003EBO_RETURN_DEST",15);
            SetGlobalNumber("003EBO_BACKGROUND",15);
            SetGlobalNumber("K_CURRENT_PLANET",25);
        }break;
        case PLANET_EBON_HAWK://16//Malachor V?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",8);
            SetGlobalNumber("003EBO_BACKGROUND",10);
            SetGlobalNumber("K_CURRENT_PLANET",90);// set accordingly
        }break;
        case PLANET_HARBINGER://17//Harbinger?.!
        {
            
        }break;
    }
SetGlobalNumber("K_FUTURE_PLANET",GetGlobalNumber("K_CURRENT_PLANET"));
}
void LoadVision()
{
  if(GetGlobalNumber("K_FUTURE_PLANET") == 3)
  {
    if(GetGlobalBoolean("k_vis_korriban") == FALSE)
    {
      /*if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_korriban",TRUE);
      }*/
      StartNewModule("stunt_00","","08");//,"","0d"
    }
    else
    {
      QueueMovie("08");//,"","0c"
    }
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 11)
  {
    if(GetGlobalBoolean("k_vis_kashyyyk") == FALSE)
    {
      /*if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_kashyyyk",TRUE);
      }*/
      StartNewModule("stunt_00","","08");//,"","0c"
    }
    else
    {
      QueueMovie("08");//,"","0c"
    }
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 14)
  {
    if(GetGlobalBoolean("k_vis_tatooine") == FALSE)
    {
      /*if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_tatooine",TRUE);
      }*/
      StartNewModule("stunt_00","","08");//,"","0a"
    }
    else
    {
      QueueMovie("08");//,"","0c"
    }
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 15)
  {
    if(GetGlobalBoolean("k_vis_manaan") == FALSE)
    {
      /*if(GetGlobalNumber("K_CAPTURED_LEV") == 12)
      {
        SetGlobalBoolean("k_vis_manaan",TRUE);
      }*/
      StartNewModule("stunt_00","","08");
    }
    else
    {
      QueueMovie("08");//,"","0c"
    }
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 1)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 2)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 4)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 5)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 6)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 7)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 8)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 9)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 10)
  {
    //QueueMovie("08");
    int nMain = GetGlobalNumber("K_KOTOR_MASTER");
    if (nMain == 61)
    {
      //SetGlobalNumber("K_KOTOR_MASTER", 50);
      int nChoice = GetGlobalNumber("G_FINALCHOICE");
      if(nChoice == 1 || nChoice == 2)
      {
        SetGlobalNumber("K_KOTOR_MASTER", 61);
      }
      if(nChoice == 1)
      {
        StartNewModule("stunt_44","","05_8c","05_9");
      }
      else if(nChoice == 2)
      {
        StartNewModule("stunt_42","","05_8c","05_9");
      }
    }
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 12)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 13)
  {
    QueueMovie("08");
  }
  else if(GetGlobalNumber("K_FUTURE_PLANET") == 16)
  {
    QueueMovie("08");
  }
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


    int nPlanet = nSelected;
    int nMain = GetGlobalNumber("K_KOTOR_MASTER");
    int nFuture = GetGlobalNumber("K_FUTURE_PLANET");
    int nCalo = GetGlobalNumber("K_KALO_BANDON");
  if(nSelected == -1)
  {
    nSelected=PLANET_DANTOOINE;
  }                //
  if(GetGlobalNumber("K_CAPTURED_LEV") == 10)
  {
    QueueMovie("08");
    SetGlobalNumber("K_CAPTURED_LEV",11);
  }/*
  else if(GetGlobalNumber("K_CAPTURED_LEV") == 11)
  {
    SetGlobalNumber("K_CAPTURED_LEV",12);
    LoadVision();
  }
  else if(GetGlobalNumber("K_CAPTURED_LEV") == 13)
  {
    SetGlobalNumber("K_CAPTURED_LEV",14);
    LoadVision();
  }*/
          //if (!nMain == 60 || !nMain == 50)
         // {
            //LoadVision();
//}
  else
  {
    switch(GetGlobalNumber("003EBO_BACKGROUND"))
    {
        case 0://106PER
        {
            PlayMovie("KorMov02");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 1://201TEL
        {
            //QueueMovie("05_8c");
            PlayMovie("05_8c");//990
            LoadVision();
        }break;
        case 2://Unknown World
        {
    if (nMain == 50 || nMain == 60)
    {
      SetGlobalNumber("K_KOTOR_MASTER", 61);
      //SetGlobalNumber("K_CURRENT_PLANET",45);// set accordingly
      //QueueMovie("05_8c");
      LoadVision();
    }
    else
    {

      //SetGlobalNumber("K_KOTOR_MASTER", 63);
      //      SetGlobalNumber("K_CURRENT_PLANET",45);// set accordingly
            PlayMovie("05_8c");
    }
            //PlayMovie("05_8c");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 3://301NAR
        {
            PlayMovie("NarMov02");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 4://401DXN
        {
            PlayMovie("OndMov04");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 5://601DAN
        {
            PlayMovie("05_2c");//
            //QueueMovie("08");
            LoadVision();
        }break;
        case 6://701KOR
        {
            PlayMovie("05_7c");//K1 Movie?05_7c/KorMov02
            //QueueMovie("08");
            LoadVision();
        }break;
        case 7://801DRO
        {
            PlayMovie("DroMov04");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 8://
        {
            //QueueMovie("Live_1c");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 9://901MAL // new planet 02?
        {
            PlayMovie("Live_1c");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 10://Hyperspace // new planet 03?
        {
            //QueueMovie("KasMov02");
            //QueueMovie("HypMov01");
        }break;
        case 11: //KASHYYK
        {
            PlayMovie("05_4c");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 12: //954COR
        {
            PlayMovie("NarMov02");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 13: //YAVIN
        {
            PlayMovie("Live_1c");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 14: //TATOOINE
        {
            PlayMovie("05_3c");
            //QueueMovie("08");
            LoadVision();
        }break;
        case 15: //MANAAN
        {
            PlayMovie("05_5c");
            //QueueMovie("08");//HypMov01
            LoadVision();
            //Add Previous Planet K_PREVIOUS_PLANET here
        }break;
      }
    }


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
                    //SetGlobalNumber("K_CURRENT_PLANET", 40);
                    StartNewModule("stunt_16");
            SetGlobalNumber("K_CURRENT_PLANET", nPlanet);
                //}
                //StartNewModule("stunt_16", "",  "", "08");
            }
            else if (nMain == 30 && nFuture == 10)//if player has all four star maps and is travelling to the star forge system
            {
                StartNewModule("stunt_18","","08");
          }
        else if(nMain == 15 && nCalo == 0)
        {
            SetGlobalNumber("K_KALO_BANDON", 10);
            SetGlobalNumber("K_CURRENT_PLANET", nPlanet);
            SetPlanet();
            StartNewModule("stunt_12");
        }
        else if(nStarmap == 30 && nCalo == 20)
        {
            SetGlobalNumber("K_KALO_BANDON", 30);
            //StartNewModule("stunt_14","",  ST_GetTakeOffRender());
            SetGlobalNumber("K_CURRENT_PLANET", nPlanet);
            SetPlanet();
            StartNewModule("stunt_14");
        }
    //QueueMovie("08");
    //int nMain = GetGlobalNumber("K_KOTOR_MASTER");
    else if (nMain == 61)
    {
            //SetGlobalNumber("K_FUTURE_PLANET", 10);
            //SetGlobalNumber("K_CURRENT_PLANET", 10);
      SetGlobalNumber("K_KOTOR_MASTER", 62);
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

            SetGlobalNumber("K_CURRENT_PLANET",10);// set accordingly
            // need to check where we are landing
            QueueMovie("KorMov01");
        }break;
        case 10://2//Telos : Citadel Station // extra case 0-16 exist and LIVE_PLANET_06 would be further extra
        {
            SetGlobalNumber("003EBO_RETURN_DEST",2);//990
            SetGlobalNumber("003EBO_BACKGROUND",2);

            // need to check where we are landing
            
    if (nMain == 63)
    {
      //SetGlobalNumber("K_KOTOR_MASTER", 63);
            SetGlobalNumber("K_CURRENT_PLANET",45);// set accordingly
            QueueMovie("05_8a");
    }
    //else
    //{

      //SetGlobalNumber("K_KOTOR_MASTER", 63);
      //      SetGlobalNumber("K_CURRENT_PLANET",45);// set accordingly
      //      PlayMovie("05_8a");
    //}
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

            SetGlobalNumber("K_CURRENT_PLANET",65);// set accordingly
            //if(GetGlobalBoolean("301_FIRST_ENTER"))//only que this movie if we have been here before
            QueueMovie("NarMov01");
        }break;
        case PLANET_DXUN://5//Onderon
        {

            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);

            SetGlobalNumber("K_CURRENT_PLANET",70);// set accordingly
            QueueMovie("OndMov03");
        }break;
        case PLANET_ONDERON://6//Dxun ?.!
        {

            SetGlobalNumber("003EBO_RETURN_DEST",4);
            SetGlobalNumber("003EBO_BACKGROUND",4);

            SetGlobalNumber("K_CURRENT_PLANET",75);// set accordingly
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

            SetGlobalNumber("K_CURRENT_PLANET",30);
            if(GetGlobalBoolean("k_vis_korriban") == FALSE)
            {
                //QueueMovie("0d");
                //StartNewModule("stunt_00");//,"","0d"
            }
            else
            {
              QueueMovie("05_7a");//K1 Movie? 05_7a?KorMov01
            }
        }break;
        case PLANET_M4_78://9//M478
        {
            SetGlobalNumber("003EBO_RETURN_DEST",7);
            SetGlobalNumber("003EBO_BACKGROUND",7);

            SetGlobalNumber("K_CURRENT_PLANET",80);// set accordingly
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
            SetGlobalNumber("K_CURRENT_PLANET",55);// set accordingly
            QueueMovie("LIVE_1a");//
        }break;
        case PLANET_LIVE_01://11//Kashyyyk
        {
            SetGlobalNumber("003EBO_RETURN_DEST",11);
            SetGlobalNumber("003EBO_BACKGROUND",11);// background check fires different planet exit

            SetGlobalNumber("K_CURRENT_PLANET",20);
            if(GetGlobalBoolean("k_vis_kashyyyk") == FALSE)
            {
                //QueueMovie("0c");
                //StartNewModule("stunt_00");//,"","0c"
            }
            else
            {
              QueueMovie("05_4a");
            }
        }break;
        case PLANET_LIVE_02://12//Coruscant
        {
            SetGlobalNumber("003EBO_RETURN_DEST",12);
            SetGlobalNumber("003EBO_BACKGROUND",12);
          
            SetGlobalNumber("K_CURRENT_PLANET",85);// set accordingly
            //Coruscant No Movie
            QueueMovie("NarMov01");
        }break;
        case PLANET_LIVE_03://13//Yavin Station?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",13);
            SetGlobalNumber("003EBO_BACKGROUND",13);

            SetGlobalNumber("K_CURRENT_PLANET",55);// set accordingly
            QueueMovie("LIVE_1a");
        }break;
        case PLANET_LIVE_04://14//Tatooine
        {
            SetGlobalNumber("003EBO_RETURN_DEST",14);
            SetGlobalNumber("003EBO_BACKGROUND",14);

            SetGlobalNumber("K_CURRENT_PLANET",35);
            if(GetGlobalBoolean("k_vis_tatooine") == FALSE)
            {
              //QueueMovie("0a");
              //StartNewModule("stunt_00");//,"","0a"
            }
            else
            {
              QueueMovie("05_3a");
            }
        }break;
        case PLANET_LIVE_05://15//Manaan
        {
            SetGlobalNumber("003EBO_RETURN_DEST",15);
            SetGlobalNumber("003EBO_BACKGROUND",15);
            SetGlobalNumber("K_CURRENT_PLANET",25);
            if(GetGlobalBoolean("k_vis_manaan") == FALSE)
            {
                //QueueMovie("0b");
                //StartNewModule("stunt_00");//,"","0b"
            }
            else
            {
              QueueMovie("05_5a");
            }
        }break;
        case PLANET_EBON_HAWK://16//Malachor V?.!
        {
            SetGlobalNumber("003EBO_RETURN_DEST",8);
            SetGlobalNumber("003EBO_BACKGROUND",10);
            SetGlobalNumber("K_CURRENT_PLANET",90);// set accordingly
        }break;
        case PLANET_HARBINGER://17//Harbinger?.!
        {
            //SetGlobalNumber("003EBO_RETURN_DEST",15);
            //SetGlobalNumber("003EBO_BACKGROUND",15);

            //SetGlobalNumber("K_CURRENT_PLANET",95);// set accordingly
            //QueueMovie("KasMov01");//
            // case 15 is used for PLANET_LIVE_05
        }break;
    }
}//extra for if
    //fade out
//SetGlobalNumber("K_FUTURE_PLANET",GetGlobalNumber("K_CURRENT_PLANET"));
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