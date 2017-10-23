#include "gamemanager.h"
#include <QDebug>

GameManager::GameManager(QObject *parent) : QObject(parent)
{
    //initialize array
    for(int i = 0; i <SIZE*SIZE; i++)
    {
            Tab[i] = EMPTY;
    }
}

void GameManager::receiveFromQml(int count)
{
    qDebug() << "Received in C++ from QML:" << count;
}
