#include <stdlib.h>

#include "feedback.h"

int feedbackCorrect(List* my, List* ans) {
	int c = 0;
	while (my != NULL) {
		Card m = my->cardMember;
		Card a = ans->cardMember;
		if (m.rank == a.rank && m.suit == a.suit) {
			c++;
		}
		my = my->next;
		ans = ans->next;
	}
	return c;
}

int feedbackLower(List* my, List* ans) {
	int c = 4242;
	while (my != NULL) {
		Card m = my->cardMember;
		if (m.rank < c) {
			c = m.rank;
		}
		my = my->next;
	}

	int l = 0;
	while (ans != NULL) {
		Card a = ans->cardMember;
		if (a.rank < c) {
			l++;
		}
		ans = ans->next;
	}
	return l;
}

int feedbackHigher(List* my, List* ans) {
	int c = -4242;
	while (my != NULL) {
		Card m = my->cardMember;
		if (m.rank > c) {
			c = m.rank;
		}
		my = my->next;
	}

	int l = 0;
	while (ans != NULL) {
		Card a = ans->cardMember;
		if (a.rank > c) {
			l++;
		}
		ans = ans->next;
	}
	return l;
}

int feedbackSameRank(List* my, List* ans) {
	int am[13] = { 0 };
	int aa[13] = { 0 };

	while (my != NULL) {
		Card m = my->cardMember;
		am[m.rank]++;
		my = my->next;
	}

	while (ans != NULL) {
		Card a = ans->cardMember;
		aa[a.rank]++;
		ans = ans->next;
	}

	int c = 0;
	for (int i = 0; i < 13; i++) {
		c += (am[i] < aa[i] ? am[i] : aa[i]);
	}
	return c;
}

int feedbackSameSuit(List* my, List* ans) {
	int am[4] = { 0 };
	int aa[4] = { 0 };

	while (my != NULL) {
		Card m = my->cardMember;
		am[m.suit]++;
		my = my->next;
	}

	while (ans != NULL) {
		Card a = ans->cardMember;
		aa[a.suit]++;
		ans = ans->next;
	}

	int c = 0;
	for (int i = 0; i < 4; i++) {
		c += (am[i] < aa[i] ? am[i] : aa[i]);
	}
	return c;
}

int feedback(List* my, List* ans) {
	int a = feedbackCorrect(my, ans);
	int b = feedbackLower(my, ans);
	int c = feedbackSameRank(my, ans);
	int d = feedbackHigher(my, ans);
	int e = feedbackSameSuit(my, ans);
	return a * V4 + b * V3 + c * V2 + d * V1 + e;
}
