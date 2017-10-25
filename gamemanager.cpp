#include "gamemanager.h"
#include <QDebug>

GameManager::GameManager(QObject *parent) : QObject(parent)
{
    //initialize array
    for(int i = 0; i <SIZE*SIZE; i++)
    {
            Tab[i] = EMPTY;
    }

    //Nought starts
    player = NOUGHT;

    winner = EMPTY;

    //image name for NOUGHT
    playerStr = "o.png";
}

int GameManager::checkGameStatus(int count)
{

    if((Tab[0]==NOUGHT && Tab[1]==NOUGHT && Tab[2]==NOUGHT) ||
       (Tab[3]==NOUGHT && Tab[4]==NOUGHT && Tab[5]==NOUGHT) ||
       (Tab[6]==NOUGHT && Tab[7]==NOUGHT && Tab[8]==NOUGHT) ||
       (Tab[0]==NOUGHT && Tab[3]==NOUGHT && Tab[6]==NOUGHT) ||
       (Tab[1]==NOUGHT && Tab[4]==NOUGHT && Tab[7]==NOUGHT) ||
       (Tab[2]==NOUGHT && Tab[5]==NOUGHT && Tab[8]==NOUGHT) ||
       (Tab[0]==NOUGHT && Tab[4]==NOUGHT && Tab[8]==NOUGHT) ||
       (Tab[6]==NOUGHT && Tab[4]==NOUGHT && Tab[2]==NOUGHT))
    {
        winner = NOUGHT;
    }

    if((Tab[0]==CROSS && Tab[1]==CROSS && Tab[2]==CROSS) ||
       (Tab[3]==CROSS && Tab[4]==CROSS && Tab[5]==CROSS) ||
       (Tab[6]==CROSS && Tab[7]==CROSS && Tab[8]==CROSS) ||
       (Tab[0]==CROSS && Tab[3]==CROSS && Tab[6]==CROSS) ||
       (Tab[1]==CROSS && Tab[4]==CROSS && Tab[7]==CROSS) ||
       (Tab[2]==CROSS && Tab[5]==CROSS && Tab[8]==CROSS) ||
       (Tab[0]==CROSS && Tab[4]==CROSS && Tab[8]==CROSS) ||
       (Tab[6]==CROSS && Tab[4]==CROSS && Tab[2]==CROSS))
    {
        winner = CROSS;
    }

    return winner;
}

QString GameManager::getPlayerStr()
{
    return playerStr;
}

int GameManager::getWinner()
{
    return winner;
}

int GameManager::getPlayer()
{
    return player;
}

void GameManager::newGame()
{
    //initialize array
    for(int i = 0; i <SIZE*SIZE; i++)
    {
            Tab[i] = EMPTY;
    }

    //Nought starts
    player = NOUGHT;

    winner = EMPTY;

    //image name for NOUGHT
    playerStr = "o.png";

    emit newGameSignal(NEWGAME);
}

int GameManager::getNewGame()
{
    return newGamex;
}

void GameManager::setNewGame()
{
    newGamex=1;
}

void GameManager::receiveFromQml(int count)
{
    if(count == NEWGAME)
    {
        //initialize array
        for(int i = 0; i <SIZE*SIZE; i++)
        {
                Tab[i] = EMPTY;
        }

        //Nought starts
        player = NOUGHT;

        winner = EMPTY;

        //image name for NOUGHT
        playerStr = "o.png";

    }
    else
    {
        if(Tab[count] == 0)
        {
            Tab[count] = player;
            qDebug() << "Received in C++ from QML:" << count << "Player" << player;

            sendToQml(playerStr);

            if(checkGameStatus(count) == NOUGHT)
            {
                qDebug() << "Player" + QString::number(winner) + " WON !!!! ";
            }

            if(checkGameStatus(count) == CROSS)
            {
                qDebug() << "Player" + QString::number(winner) + " WON !!!! ";
            }

            if(winner != 0)
            {
                emit sendWinner(winner);
                newGame();
                return;
            }

            //switch players
            if(player == CROSS)
            {
                player = NOUGHT;
                playerStr = "o.png";
            }
            else
            {
                player = CROSS;
                playerStr = "x.png";
            }

            emit sendPlayer(player);

        }
        else
        {
            qDebug() << "This is selected already";
        }
    }

}
