//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    /*{"♫ ", "~/mitosys/bin/spotstatus", 5, 9},*/
    {"Disk used (/) ", "~/mitosys/bin/statusbar/diskusage", 5, 9},
    {"(关系) ", "~/mitosys/bin/statusbar/network", 5, 9},
    {" Δt ","date", 5, 9},
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
