//:: k_sup_galaxymap
/*
    Universal Script that fires when
    the galaxy map is used.
*/
#include "k_inc_hawk"
#include "k_inc_stunt"

int CUSTOM_PlanetIDTo2DA(int nPlanetID);
int CUSTOM_2DAToPlanetID(int nPlanet2DA);
int nSelected = GetSelectedPlanet();

void DoPlanetChange()
{
  SignalEvent(GetArea(GetFirstPC()), EventUserDefined(1));
  PlayMovieQueue();
}
void LandPlanet()
{
    switch(nSelected)//17 cases in this switch statement 0-15 = 16? 17 = LIVE_PLANET_06 ?.! figure out, find and assign the extra slot
    {               //also look into adding more slots if possible via LIVE_PLANET_##, 07 onwards extensions.
      case PLANET_PERAGUS://1//Korriban ?.!
      {
        SetGlobalNumber("003EBO_RETURN_DEST",0);//
        SetGlobalNumber("003EBO_BACKGROUND",0);//2
        QueueMovie("KorMov01");
      }break;
      case 10://2//Telos : Citadel Station // extra case 0-16 exist and LIVE_PLANET_06 would be further extra
      {
        SetGlobalNumber("003EBO_RETURN_DEST",2);//990
        SetGlobalNumber("003EBO_BACKGROUND",2);
        QueueMovie("05_8a");
      }break;
      case PLANET_TELOS://3//Unknown World : Lehon
      {
        SetGlobalNumber("003EBO_RETURN_DEST",2);
        SetGlobalNumber("003EBO_BACKGROUND",2);
        QueueMovie("05_8a");
      }break;
      case PLANET_NAR_SHADDAA://4//Nar Shaddaa
      {
        SetGlobalNumber("003EBO_RETURN_DEST",3);
        SetGlobalNumber("003EBO_BACKGROUND",3);
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
        SetGlobalNumber("003EBO_BACKGROUND",11);
        QueueMovie("05_4a");
      }break;
      case PLANET_LIVE_02://12//Coruscant
      {
        SetGlobalNumber("003EBO_RETURN_DEST",12);
        SetGlobalNumber("003EBO_BACKGROUND",12);
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
      }break;
      case PLANET_HARBINGER://17//Harbinger?.!
      {

      }break;
    }// switch close
}
void SetPlanet()
{
  switch(GetGlobalNumber("K_CURRENT_PLANET"))//17 cases in this switch statement 0-15 = 16? 17 = LIVE_PLANET_06 ?.! figure out, find and assign the extra slot
  {               //also look into adding more slots if possible via LIVE_PLANET_##, 07 onwards extensions.
    case PLANET_PERAGUS://1//Korriban ?.!
    {
      SetGlobalNumber("003EBO_RETURN_DEST",0);//
      SetGlobalNumber("003EBO_BACKGROUND",0);//2
    }break;
    case 10://2//Telos : Citadel Station // extra case 0-16 exist and LIVE_PLANET_06 would be further extra
    {
      SetGlobalNumber("003EBO_RETURN_DEST",1);
      SetGlobalNumber("003EBO_BACKGROUND",1);
    }break;
    case PLANET_TELOS://3//Unknown World : Lehon
    {
      SetGlobalNumber("003EBO_RETURN_DEST",2);
      SetGlobalNumber("003EBO_BACKGROUND",2);
    }break;
    case PLANET_NAR_SHADDAA://4//Nar Shaddaa
    {
      SetGlobalNumber("003EBO_RETURN_DEST",3);
      SetGlobalNumber("003EBO_BACKGROUND",3);
    }break;
    case PLANET_DXUN://5//Onderon
    {
      SetGlobalNumber("003EBO_RETURN_DEST",4);
      SetGlobalNumber("003EBO_BACKGROUND",4);
    }break;
    case PLANET_ONDERON://6//Dxun ?.!
    {
      SetGlobalNumber("003EBO_RETURN_DEST",4);
      SetGlobalNumber("003EBO_BACKGROUND",4);
    }break;
    case PLANET_DANTOOINE://7//Dantooine
    {
      SetGlobalNumber("003EBO_RETURN_DEST",5);
      SetGlobalNumber("003EBO_BACKGROUND",5);
    }break;
    case PLANET_KORRIBAN://8//Korriban
    {
      SetGlobalNumber("003EBO_RETURN_DEST",6);
      SetGlobalNumber("003EBO_BACKGROUND",6);
    }break;
    case PLANET_M4_78://9//M478
    {
      SetGlobalNumber("003EBO_RETURN_DEST",7);
      SetGlobalNumber("003EBO_BACKGROUND",7);
    }break;
    case PLANET_MALACHOR_V://PLANET_MALACHOR_V = 5//10//Yavin Station or Malachor V?.!//
    {
      SetGlobalNumber("003EBO_RETURN_DEST",9);//8 originally - exit destination case
      SetGlobalNumber("003EBO_BACKGROUND",8);//4 is dxun - background and return planet icon case
    }break;
    case PLANET_LIVE_01://11//Kashyyyk
    {
      SetGlobalNumber("003EBO_RETURN_DEST",11);
      SetGlobalNumber("003EBO_BACKGROUND",11);
    }break;
    case PLANET_LIVE_02://12//Coruscant
    {
      SetGlobalNumber("003EBO_RETURN_DEST",12);
      SetGlobalNumber("003EBO_BACKGROUND",12);
    }break;
    case PLANET_LIVE_03://13//Yavin Station?.!
    {
      SetGlobalNumber("003EBO_RETURN_DEST",13);
      SetGlobalNumber("003EBO_BACKGROUND",13);
    }break;
    case PLANET_LIVE_04://14//Tatooine
    {
      SetGlobalNumber("003EBO_RETURN_DEST",14);
      SetGlobalNumber("003EBO_BACKGROUND",14);
    }break;
    case PLANET_LIVE_05://15//Manaan
    {
      SetGlobalNumber("003EBO_RETURN_DEST",15);
      SetGlobalNumber("003EBO_BACKGROUND",15);
    }break;
    case PLANET_EBON_HAWK://PLANET_EBON_HAWK = 2//16//Malachor V?.!
    {
      SetGlobalNumber("003EBO_RETURN_DEST",8);
      SetGlobalNumber("003EBO_BACKGROUND",10);
    }break;
    case PLANET_HARBINGER://17//Harbinger?.!
    {
      
    }break;
  }
}

void LoadVision()
{
  if(GetGlobalNumber("K_CURRENT_PLANET") == 3 && GetGlobalBoolean("k_vis_korriban") == 0)
  {
    StartNewModule("stunt_00","","08");//,"","0d"
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 11 && GetGlobalBoolean("k_vis_kashyyyk") == 0)
  {
    StartNewModule("stunt_00","","08");//,"","0c"
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 14 && GetGlobalBoolean("k_vis_tatooine") == 0)
  {
    StartNewModule("stunt_00","","08");//,"","0a"
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 15 && GetGlobalBoolean("k_vis_manaan") == 0)
  {
    StartNewModule("stunt_00","","08");
  }
  else if(GetGlobalNumber("K_CURRENT_PLANET") == 10)
  {
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
  else
  {
    QueueMovie("08");
    LandPlanet();
  }
}

void main()
{
  SetGlobalNumber("K_CURRENT_PLANET", nSelected);
  int nStarmap = GetGlobalNumber("K_STAR_MAP");
  int nLevCapture = GetGlobalNumber("K_CAPTURED_LEV");
  int nMain = GetGlobalNumber("K_KOTOR_MASTER");
  int nCalo = GetGlobalNumber("K_KALO_BANDON");
  if(nSelected == -1)//in-case it isn't set, which happens when first loading into the ebon hawk after escaping Taris.
  {
    nSelected=PLANET_DANTOOINE;
  }
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
      }break;
      case 1://201TEL
      {
        QueueMovie("05_8c");
      }break;
      case 2://Unknown World
      {
        if (nMain == 50 || nMain == 60)
        {
          SetGlobalNumber("K_KOTOR_MASTER", 61);
        }
        else
        {
          QueueMovie("05_8c");
        }
      }break;
      case 3://301NAR
      {
        QueueMovie("NarMov02");
      }break;
      case 4://401DXN
      {
        QueueMovie("OndMov04");
      }break;
      case 5://601DAN
      {
        QueueMovie("05_2c");
      }break;
      case 6://701KOR
      {
        QueueMovie("05_7c");
      }break;
      case 7://801DRO
      {
        QueueMovie("DroMov04");
      }break;
      case 8://EMPTY CASE???
      {

      }break;
      case 9://901MAL // new planet 02?
      {
        QueueMovie("Live_1c");
      }break;
      case 10://Hyperspace Case // new planet 03?
      {

      }break;
      case 11: //KASHYYK
      {
        QueueMovie("05_4c");
      }break;
      case 12: //954COR
      {
        QueueMovie("NarMov02");
      }break;
      case 13: //YAVIN
      {
        QueueMovie("Live_1c");
      }break;
      case 14: //TATOOINE
      {
        QueueMovie("05_3c");
      }break;
      case 15: //MANAAN
      {
        QueueMovie("05_5c");
      }break;
    }
    LoadVision();
  }
  if(nStarmap == 40 && nLevCapture == 5/* && nSelected == 11 && nSelected == 3 && nSelected == 14 && nSelected == 15*/)//11,3,14,15//star map planets
  {//figure out how to also check if you are travelling in between any of the four star map planets in order to get trapped by the Leviathan
    if(nSelected == 11 || nSelected == 3 || nSelected == 14 || nSelected == 15)
    {
      StartNewModule("stunt_16");
    }
  }
  else if (nMain == 30 && nSelected == 10)//if player has all four star maps and is travelling to the star forge system
  {
    StartNewModule("stunt_18","","08");
  }
  else if(nMain == 15 && nCalo == 0)
  {
    SetGlobalNumber("K_KALO_BANDON", 10);
    SetPlanet();
    StartNewModule("stunt_12","","08");
  }
  else if(nStarmap == 30 && nCalo == 20)
  {
    SetGlobalNumber("K_KALO_BANDON", 30);
    SetPlanet();
    StartNewModule("stunt_14");
  }
  //int nMain = GetGlobalNumber("K_KOTOR_MASTER");
  //else if (nMain == 61)
  //{
    //SetGlobalNumber("K_CURRENT_PLANET", 10);
    //SetGlobalNumber("K_KOTOR_MASTER", 62);
  //}
  SetBackground();
  ExecuteScript("a_holoworld", GetFirstPC());
  DoPlanetChange();
}