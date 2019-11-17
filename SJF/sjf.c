#include <stdio.h>

struct process{
    int bt, wt, tt, pid;
};

void main(){
    int sumT = 0, sumW = 0, i, n, j;
    printf("Enter the totl number of processes: ");
    scanf("%d", &n);
    struct process p[n];

    for (i = 0; i < n; i++){
        p[i].pid = i + 1;
        printf("Enter the burst time for P[%d]: ", i + 1);
        scanf("%d", &p[i].bt);
    }
    for (i = 0; i < n - 1; i++){
        for (j = 1; j < n; j++){
            if(p[i].bt > p[j].bt){
                int temp = p[i].bt;
                p[i].bt = p[j].bt;
                p[j].bt = temp;
            }
        }
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

    printf("%f %f", (float)sumW / n, (float)sumT / n);
}