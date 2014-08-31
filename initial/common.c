#include <stdlib.h>

#include "common.h"

void makeCards(Card cards[]) {
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

int properSubset(List * cards) {
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
					list->flag = properSubset(list);
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
