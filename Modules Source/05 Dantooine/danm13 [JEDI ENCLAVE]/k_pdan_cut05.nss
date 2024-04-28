// Prototypes
void sub1(string stringParam1, string stringParam2);

void sub1(string stringParam1, string stringParam2) {
	if ((!GetIsObjectValid(GetObjectByTag(stringParam1, 0)))) {
		CreateObject(1, stringParam1, GetLocation(GetObjectByTag((("POST_" + stringParam1) + stringParam2), 0)), 0);
	}
}

void main() {
	sub1("dan13_garrum", "");
	sub1("dan13_tareelok", "");
}

