#include "bmiclass.h"
#include <QDebug>
#include <cmath>

BmiClass::BmiClass(QObject *parent)
    : QObject{parent}
{

}

// Method to calculate the BMI by taking height and weight as parameters
void BmiClass::calculateBmi(QVariant height, QVariant weight)
{
    float sclae = 0.01;
    float product;
    product = weight.toFloat()/(height.toFloat()*height.toFloat());

    qDebug() << "The product is" << product;

    emit calculatedVal(QVariant ((round(product * 100)/100) ));

}

//void BmiClass::callMe()
//{
//        qDebug() << "I'm being caled";


//}
