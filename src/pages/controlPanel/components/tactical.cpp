#include "include/pages/controlPanel/components/tactical.h"

#include <QDebug>


TacticalComponent::TacticalComponent(QObject *parent): QObject(parent)
{
    qDebug() << "TacticalComponent: Constructor being called";
}

void TacticalComponent::onFireButtonPressed()
{
    qDebug() << "TacticalComponent::onFireButtonPressed: called";
}
