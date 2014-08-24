#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef struct Card {
	int suit;
	int rank;
	char name[3];
} Card;

#define NUM_CARDS 52
#define K 4
#define V5 ((K + 1) * (K + 1) * (K + 1) * (K + 1) * (K + 1))
#define V4 ((K + 1) * (K + 1) * (K + 1) * (K + 1))
#define V3 ((K + 1) * (K + 1) * (K + 1))
#define V2 ((K + 1) * (K + 1))
#define V1 ((K + 1))

Card cards[NUM_CARDS];

char suits[4] = "CDHS";
char ranks[13] = "23456789TJQKA";

void makeCards() {
	for (int i = 0; i < 4; i++) {
		for (int j = 0; j < 13; j++) {
			Card c;
			c.suit = i;
			c.rank = j;
			c.name[0] = ranks[j];
			c.name[1] = suits[i];
			c.name[2] = 0;
			cards[i * 13 + j] = c;
		}
	}
}

typedef struct List {
	Card cardMember;
	struct List * next;
	union {
		long int flag;
		double score;
	};
} List;

List * prependC(List * list, Card cardMember) {
	List *l = (List *) calloc(1, sizeof(List));
	l->cardMember = cardMember;
	l->next = list;
	return l;
}

void destoyList(List * list) {
	List * l;
	while (list != NULL) {
		l = list;
		list = list->next;
		free(l);
	}
}

int choose(int n, int k) {
	if (k == 1) {
		return n;
	}
	return (choose(n - 1, k - 1) * n) / k;
}

int check(List * cards) {
	Card c = cards->cardMember;
	cards = cards->next;
	if (c.suit != 0) {
		return 0;
	}

	while (cards != NULL) {
		Card d = cards->cardMember;
		if (d.suit != c.suit && d.suit != c.suit + 1) {
			return 0;
		}
		if (d.rank < c.rank) {
			return 0;
		}
		c = d;
		cards = cards->next;
	}
	return 1;
}

List ** subsets(int n, Card * cards, int size) {
	List **out = (List**) calloc(size, sizeof(List*));
	int z = 0;
	for (int i = 0; i < n; i++) {
#if K >= 2
		for (int j = i + 1; j < n; j++) {
#endif
#if K >= 3
			for (int k = j + 1; k < n; k++) {
#endif
#if K >= 4
				for (int l = k + 1; l < n; l++) {
#endif
					List *list = NULL;
#if K >= 4
					list = prependC(list, cards[l]);
#endif
#if K >= 3
					list = prependC(list, cards[k]);
#endif
#if K >= 2
					list = prependC(list, cards[j]);
#endif
					list = prependC(list, cards[i]);
					list->flag = check(list);
					out[z] = list;
					z++;
#if K >= 4
				}
#endif
#if K >= 3
			}
#endif
#if K >= 2
		}
#endif
	}
	return out;
}

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

void feedback(List* my, List* ans, long long values[], int print) {
	int a = feedbackCorrect(my, ans);
	int b = feedbackLower(my, ans);
	int c = feedbackSameRank(my, ans);
	int d = feedbackHigher(my, ans);
	int e = feedbackSameSuit(my, ans);
	int val = a * V4 + b * V3 + c * V2 + d * V1 + e;
	if (print) {
		// printf("%d %d %d %d %d = %d\n", a, b, c, d, e, val);
	}
	values[val]++;
}

double reduce(long long values[], int print) {
	long count = 0;
	long sum = 0;
	long long sum2 = 0;
	for (int i = 0; i < V5; i++) {
		if (values[i] > 0) {
			if (print) {
				printf("(%d %d %d %d %d) %d\n", i / V4, (i % V4) / V3,
						(i % V3) / V2, (i % V2) / V1, i % V1, values[i]);
			}
			count++;
			sum += values[i];
			sum2 += values[i] * values[i];
		}
	}
	if (print) {
		printf("1: %d, s: %d, s2: %d\n", count, sum, sum2);
	}
	return sum2 / (double) sum;
}

void findBestFor(List *my, List **answers, int size, int print) {
	long long values[V5] = { 0 };
	for (int i = 0; i < size; i++) {
		feedback(my, answers[i], values, print);
	}
	my->score = reduce(values, print);
}

void printListOfCards(List * l) {
	while (l != NULL) {
		Card c = l->cardMember;
		printf("%s ", c.name);
		l = l->next;
	}
	printf("\n");
}

int main(int argc, char **argv) {
	makeCards();
	int size = choose(NUM_CARDS, K);
	List **sets = subsets(NUM_CARDS, cards, size);

	List * best = NULL;
	double bestScore = INFINITY;

	for (int i = 0; i < size; i++) {
		List *l = sets[i];
		//printf("%d / %d: %f \n", i, size, l->result);
		if (l->flag) {
			findBestFor(l, sets, size, 0);
			double score = l->score;
			printf("%d / %d: %f \n", i, size, score);
			if (score < bestScore) {
				bestScore = score;
			}
		} else {
			l->score = 0.0;
		}
	}

	for (int i = 0; i < size; i++) {
		List *l = sets[i];
		if (l->score == bestScore) {
			printf("%d (%f): ", i, l->score);
			printListOfCards(l);
			findBestFor(l, sets, size, 1);
		}
	}
}
