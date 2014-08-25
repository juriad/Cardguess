#ifndef COMMON_H_
#define COMMON_H_

typedef struct Card {
	int suit;
	int rank;
	char name[3];
} Card;

#define NUM_CARDS 52
#define V5 ((K + 1) * (K + 1) * (K + 1) * (K + 1) * (K + 1))
#define V4 ((K + 1) * (K + 1) * (K + 1) * (K + 1))
#define V3 ((K + 1) * (K + 1) * (K + 1))
#define V2 ((K + 1) * (K + 1))
#define V1 ((K + 1))

static char suits[4] = "CDHS";
static char ranks[13] = "23456789TJQKA";

void makeCards(Card cards[]);

typedef struct List {
	Card cardMember;
	struct List * next;
	union {
		long int flag;
		double score;
	};
} List;

List * prependC(List * list, Card cardMember);

void destoyList(List * list);

int choose(int n, int k);

int check(List * cards);

List ** subsets(int n, Card * cards, int size);

#endif
