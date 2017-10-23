//Task​​2.​​Noughts​​and​​Crosses​​(QtQuick)
//Implementation of "Noughts and Crosses" in QML without AI (only two players mode). User
//interface in QML must be intuitive and friendly. Use of graphical effects is a plus.
//The game should indicate whose turn it is, what is the current player score, and it should show
//who has won the current round (or whether it is a draw).
//Requirements:
//● Game engine should be written in C++
//● When a player wins, his winning line should be crossed (xxx or ooo)

#ifndef GAMEMANAGER_H
#define GAMEMANAGER_H

#define EMPTY 0
#define NOUGHT 1
#define CROSS 2
#define SIZE 3

#include <QObject>

class GameManager : public QObject
{
    Q_OBJECT
public:
    explicit GameManager(QObject *parent = 0);

    void setTab(int x, int y, int player);

private:
    int Tab[SIZE*SIZE];


signals:
  void sendToQml(int count);
public slots:
  void receiveFromQml(int count);

};

#endif // GAMEMANAGER_H
