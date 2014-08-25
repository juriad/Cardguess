#ifndef FEEDBACK_H_
#define FEEDBACK_H_

#include "common.h"

int feedbackCorrect(List* my, List* ans);

int feedbackLower(List* my, List* ans);

int feedbackHigher(List* my, List* ans);

int feedbackSameRank(List* my, List* ans);

int feedbackSameSuit(List* my, List* ans);

int feedback(List* my, List* ans);

#endif
