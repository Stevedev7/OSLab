#include <stdio.h>

struct process{
    int bt, wt, tt, pid;
};

void main(){
    int sumT = 0, sumW = 0, i, n;
    printf("Enter the totl number of processes: ");
    scanf("%d", &n);
    struct process p[n];

    for (i = 0; i < n; i++){
        p[i].pid = i + 1;
        printf("Enter the burst time for P[%d]: ", i + 1);
        scanf("%d", &p[i].bt);
    }
    p[0].wt = 0;
    p[0].tt = p[0].bt;
    
    for (i = 1; i < n; i++){
        p[i].wt = p[i - 1].bt + p[i - 1].wt;
        p[i].tt = p[i].wt + p[i].bt;
        
        sumW += p[i].wt;
        sumT += p[i].tt;
    }

    sumT += p[0].tt;
    sumW += p[0].wt;

    printf("%d %d", sumW / n, sumT / n);
}