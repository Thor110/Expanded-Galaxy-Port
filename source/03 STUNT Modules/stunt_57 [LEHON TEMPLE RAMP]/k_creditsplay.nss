void main() {
  int nChoice = GetGlobalNumber("G_FINALCHOICE");
  if(nChoice == 1)
  {
    SetGlobalNumber("GBL_GAME_COMPLETE",1);
  }
  else if(nChoice == 2)
  {
    SetGlobalNumber("GBL_GAME_COMPLETE",2);
  }
  SetGlobalNumber("GBL_MAIN_SITH_LORD",4);
  SetGlobalNumber("003EBO_RETURN_DEST",8);
  SetGlobalNumber("003EBO_BACKGROUND",8);
	StartNewModule("ebo_m12aa");
}

