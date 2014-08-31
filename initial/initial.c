#include <stdlib.h>
#include <stdio.h>
#include <math.h>

#include "common.h"
#include "feedback.h"

Card cards[NUM_CARDS];

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
		int val = feedback(my, answers[i]);
		values[val]++;
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
	makeCards(cards);
	int size = choose(NUM_CARDS, K);
	List **sets = subsets(NUM_CARDS, cards, size);

	List * best = NULL;
	double bestScore = INFINITY;

	for (int i = 0; i < size; i++) {
		List *l = sets[i];
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
