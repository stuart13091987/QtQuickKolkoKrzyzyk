#include "gamemanager.h"

GameManager::GameManager(QObject *parent) : QObject(parent)
{
    //initialize array
    for(int i = 0; i <SIZE; i++)
    {
        for(j = 0; j<SIZE; j++)
        {
            Tab[i][j] = EMPTY;
        }
    }
}
