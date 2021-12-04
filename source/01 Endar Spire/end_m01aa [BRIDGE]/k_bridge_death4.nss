void main() {
	if (GetIsDead(GetObjectByTag("end_reinforce2"))
    &&GetIsDead(GetObjectByTag("end_reinforce1"))) {
    object oLocked1 = GetObjectByTag("end_door08");
    DelayCommand(0.5, SetLocked(oLocked1, FALSE));
  }
}

