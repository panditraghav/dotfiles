//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",	30, 0},
	{"", "~/scripts/getbrightness",	0, 1},
	{"", "~/scripts/getvolume",	60 * 60, 2},
	{"", "~/scripts/getwifiessid",	1 * 60, 0},
	{"", "date '+%d %b (%a) %I:%M%p'", 10, 0},
	{"", "~/scripts/getbatterystatus", 30, 0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
