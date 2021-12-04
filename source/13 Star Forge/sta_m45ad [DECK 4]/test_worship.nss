void main() {
	object oEntering = GetEnteringObject();
	if (GetIsPC(oEntering)) {
		AssignCommand(oEntering, PlayAnimation(4, 1.0, (-1.0)));
	}
}

