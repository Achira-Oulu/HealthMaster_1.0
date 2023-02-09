#ifndef BMICLASS_H
#define BMICLASS_H

#include <QObject>
#include <QVariant>

class BmiClass : public QObject
{
    Q_OBJECT
public:
    explicit BmiClass(QObject *parent = nullptr);

signals:
    void calculatedVal(QVariant data);

public slots:
    void calculateBmi(QVariant height,QVariant weight);
//    void callMe();

};

#endif // BMICLASS_H
