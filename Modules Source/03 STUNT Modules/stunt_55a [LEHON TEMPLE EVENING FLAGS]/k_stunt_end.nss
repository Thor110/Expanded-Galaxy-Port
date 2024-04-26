// Prototypes
void sub1();

void sub1() {
  SetGlobalNumber("GBL_MAIN_SITH_LORD",4);
  SetGlobalNumber("003EBO_RETURN_DEST",8);
  SetGlobalNumber("003EBO_BACKGROUND",8);
  SetGlobalNumber("K_KOTOR_MASTER",63);//DS END
  CreateItemOnObject("ebon_armband",GetFirstPC(),1,0);
	StartNewModule("ebo_m12aa");
}

void main() {
	SetGlobalFadeOut(0.0, 0.0, 0.0, 0.0, 0.0);
	QueueMovie("55", 1);
	PlayMovieQueue(1);
	AssignCommand(GetFirstPC(), DelayCommand(0.049999997, sub1()));
}

