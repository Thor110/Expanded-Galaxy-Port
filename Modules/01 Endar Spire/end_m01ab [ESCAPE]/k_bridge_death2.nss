void main() {
	if (GetIsDead(GetObjectByTag("end_sith01"))
    &&GetIsDead(GetObjectByTag("end_sith06"))
    &&GetIsDead(GetObjectByTag("end_sith05"))
    &&GetIsDead(GetObjectByTag("end_sith07"))
    &&GetIsDead(GetObjectByTag("end_sith04"))) {
    object oLocked1 = GetObjectByTag("end_door04");
    DelayCommand(0.5, SetLocked(oLocked1, FALSE));
  }
}

