#include <stdio.h>
#include <time.h>

int main() {
	const char* days[] = {"日", "月", "火", "水", "木", "金", "土"};

	time_t now = time(NULL);

	struct tm *tm = localtime(&now);

	int year = tm->tm_year + 1900;
	int month = tm->tm_mon + 1;
	int day = tm->tm_mday;
	int weekday = tm->tm_wday;
	
	printf("%d年%d月%d日 (%s)\n", year, month, day, days[weekday]);
}

