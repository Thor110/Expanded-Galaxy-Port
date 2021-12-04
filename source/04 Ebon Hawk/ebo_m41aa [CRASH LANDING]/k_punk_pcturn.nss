void main() {
	AssignCommand(GetPCSpeaker(), ActionPlayAnimation(100, 1.0, 0.0));
	DelayCommand(1.5, AssignCommand(GetPCSpeaker(), ActionPlayAnimation(101, 1.0, 0.0)));
}

