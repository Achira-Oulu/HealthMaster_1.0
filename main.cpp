#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "bmiclass.h"
#include "timerclass.h"


int main(int argc, char *argv[])
{
#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QGuiApplication app(argc, argv);

    // Declaring packaes to be intergrated with QML

    qmlRegisterType <TimerClass> ("Achira",1,0, "TimerClass");
    qmlRegisterType <BmiClass> ("BMIClass",1,0, "BmiClass");

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
