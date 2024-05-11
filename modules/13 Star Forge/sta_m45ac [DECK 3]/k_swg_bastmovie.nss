void main() {
	if ((!GetGlobalBoolean("STA_BAST_MOVIE"))) {
		SetGlobalBoolean("STA_BAST_MOVIE", 1);
		DelayCommand(0.5, StartNewModule("STUNT_51a", "", "51", "", "", "", "", ""));
	}
}

