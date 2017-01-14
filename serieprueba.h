#ifndef SERIEPRUEBA_H
#define SERIEPRUEBA_H

#include <QObject>
#include <QDebug>
//#include <QQuickView>

class MiSerial : public QObject{
    Q_OBJECT
    //Q_PROPERTY(QString laHora READ leerLaHora)
public:
    //Reloj *miReloj();
    explicit MiSerial (QObject* parent =0) : QObject(parent){}
    //Q_INVOKABLE void colorRGB(){qDebug()<<"Poner color al RGB xD"; }
    //return

};



#endif // SERIEPRUEBA_H
