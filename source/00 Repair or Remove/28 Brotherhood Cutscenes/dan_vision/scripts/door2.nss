void main() {
	object oMan15_door03 = GetObjectByTag("man15_door03", 0);
	AssignCommand(oMan15_door03, SetLocked(oMan15_door03, 0));
}

