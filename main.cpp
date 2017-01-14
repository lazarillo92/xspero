#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include "serieprueba.h"
#include "reloj.h"
//#include <QtDeclarative>



#include <QtSerialPort/QSerialPort>
#include <QDebug>

int main(int argc, char *argv[])
{
    QGuiApplication::setAttribute(Qt::AA_EnableHighDpiScaling); // <--
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    Reloj elReloj;
    engine.rootContext()->setContextProperty("obj", &elReloj);
    Reloj miSerial;
    engine.rootContext()->setContextProperty("serialito", &miSerial);


    //connect(view->engine(), SIGNAL(quit()), QCoreApplication::instance(), SLOT(quit()));
    //QObject::connect(obj, SIGNAL(signal_chiudiClicked()), this, SLOT(close()));


    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();





}
