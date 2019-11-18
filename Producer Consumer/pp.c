#include<stdio.h>
int main(){
    int bufferSize, in = 0, out = 0, items = 0, produce, consume, choice = 0;
    printf("Enter the buffer size : ");
    scanf("%d", &bufferSize);
    int buffer[bufferSize];
    do {
        printf("\n1.Proceduce\t2.Consume\t3.Exit\n");
        printf("Enter your choice : ");
        scanf("%d", &choice);
        switch(choice){
            case 1:if(items == bufferSize){
                    printf("\nBuffer is full!");
                }else {
                    printf("Enter the item value : ");
                    scanf("%d", &produce);
                    buffer[in] = produce;
                    in = (in + 1) % bufferSize;
                    items ++;
                }
                break;
            case 2:if(items == 0){
                    printf("\nBuffer is empty!");
                } else{
                    consume = buffer[out];
                    printf("\nThe consumed item value is %d.",consume);
                    out = (out + 1) % bufferSize;
                    items --;
                }
                break;
        }
    } while(choice != 3);
        return 0;
}