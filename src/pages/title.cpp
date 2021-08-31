#include "include/pages/title.h"

#include <QDebug>


TitlePage::TitlePage(QObject *parent): QObject(parent)
{
    qDebug() << "TitlePage: Constructor being called";
}

void TitlePage::onStartButtonPressed()
{
    qDebug() << "TitlePage::onStartButtonPressed: Call me any, anytime -- Start the system!";
}
