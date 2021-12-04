void main() {
	SetLocalBoolean(GetObjectByTag("Modo", 0), 50, 1);
  if (GetGlobalBoolean("003_swoop")) {
		StartNewModule("372_NAR", "", "", "", "", "", "", "");
	}
	else {
		StartNewModule("371_NAR", "", "", "", "", "", "", "");
	}
}

