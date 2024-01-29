// Prototypes
void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4);

void sub1(string stringParam1, int intParam2, int intParam3, float floatParam4) {
	AurPostString(stringParam1, intParam2, intParam3, floatParam4);
}

void main() {
	DelayCommand(0.5, sub1("Roll credits", 10, 10, 5.0));
}

