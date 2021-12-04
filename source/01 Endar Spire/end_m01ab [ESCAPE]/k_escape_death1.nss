void main() {
	if (GetIsDead(GetObjectByTag("end_sith3"))) {
    object oLocked1 = GetObjectByTag("end_door01");
    DelayCommand(0.5, SetLocked(oLocked1, FALSE));
  }
}

