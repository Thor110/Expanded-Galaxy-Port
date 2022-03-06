// Prototypes
void sub1();

void sub1() {
	//StartCreditSequence(0);
	SetGlobalBoolean("CREDITPLAY", 1);
  SetGlobalNumber("LIGHT_OR_DARK", 2);

  
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
  //EndGame();
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	QueueMovie("55", 1);
	PlayMovieQueue(1);
	AssignCommand(GetFirstPC(), DelayCommand(0.049999997, sub1()));
}

