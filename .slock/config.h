/* user and group to drop privileges to */
static const char *user  = "raghav";
static const char *group = "raghav";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#2f1d0f",     /* after initialization */
	[INPUT] =  "#b27649",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;
