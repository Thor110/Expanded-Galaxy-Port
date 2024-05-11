void main() {
	AssignCommand(GetObjectByTag("yavinarea", 0), ActionOpenDoor(GetObjectByTag("yavinarea", 0)));
/* // Idea to have doors open / close
  object oDoor = GetObjectByTag("yavinarea");
  if(GetIsDoorActionPossible(oDoor,ActionOpenDoor(oDoor)) {
    AssignCommand(oDoor, ActionOpenDoor(oDoor));
  }GetIsDoorActionPossible();
/*
  else {
    AssignCommand(oDoor, ActionCloseDoor(oDoor));
  }
*/
}

