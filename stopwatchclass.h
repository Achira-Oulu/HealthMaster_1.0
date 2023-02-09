#ifndef STOPWATCHCLASS_H
#define STOPWATCHCLASS_H

#include <QObject>

class StopwatchClass : public QObject
{
    Q_OBJECT
public:
    explicit StopwatchClass(QObject *parent = nullptr);

signals:

};

#endif // STOPWATCHCLASS_H
