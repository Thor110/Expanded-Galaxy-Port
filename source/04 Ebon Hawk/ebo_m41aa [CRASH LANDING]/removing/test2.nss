void main() {
	//originally runs the galaxy map script
  // DelayCommand(0.1, ExecuteScript("a_galaxymap", OBJECT_SELF, 0xFFFFFFFF));
    /*
        STUNT_44    05_8C   5_9 = DARK SIDE   1
        STUNT_42    05_8C   5_9 = LIGHT SIDE  2
    */

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

