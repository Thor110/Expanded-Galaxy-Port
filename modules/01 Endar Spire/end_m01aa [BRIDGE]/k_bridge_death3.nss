void main() {
	if (GetIsDead(GetObjectByTag("end_cut2_sith2"))
    &&GetIsDead(GetObjectByTag("end_cut2_sith1"))
    &&GetIsDead(GetObjectByTag("end_cut2_sith4"))
    &&GetIsDead(GetObjectByTag("end_reinforce3"))
    &&GetIsDead(GetObjectByTag("end_reinforce4"))) {
    object oLocked1 = GetObjectByTag("end_door16");
    DelayCommand(0.5, SetLocked(oLocked1, FALSE));
  }
}

