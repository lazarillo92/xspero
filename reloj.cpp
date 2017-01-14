#include "reloj.h"
#include <QDateTime>
#include <Qdebug>
#include <QtSerialPort/QtSerialPort>
QSerialPort *serial;

Reloj *Reloj::miReloj()
{
    return _miReloj;
}

QString Reloj::leerLaHora(){
    laHora = QDateTime::currentDateTime().toString("hh:mm:ss");
    return laHora;

}


void Reloj::iniciarSerial(){
    //QSerialPort *serial;
    serial = new QSerialPort(this);
    serial->setPortName("/dev/ttyAMA0");
    serial->setBaudRate(QSerialPort::Baud9600);
    serial->setDataBits(QSerialPort::Data8);
    serial->setParity(QSerialPort::NoParity);
    serial->setStopBits(QSerialPort::OneStop);
    serial->setFlowControl(QSerialPort::NoFlowControl);
    serial->open(QIODevice::ReadWrite);
    //connect(serial,SIGNAL(readyRead()),this,SLOT(serialReceived()));

    qDebug()<<"serial iniciado";



}

void Reloj::azulRGB(){
    QByteArray b("7E001610010013A20040CAAE94FFFE000053010000FF0000009D");  //rojo
    QByteArray bytes= QByteArray::fromHex(b);
    serial->write(bytes);
    qDebug()<<"azul ";

}

void Reloj::rojoRGB(){
    QByteArray b("7E001610010013A20040CAAE94FFFE0000530100FF000000009D");  //rojo
    QByteArray bytes= QByteArray::fromHex(b);
    serial->write(bytes);
    qDebug()<<"rojo ";

}
