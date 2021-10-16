#pragma once

#include <QObject>


class TacticalComponent: public QObject
{
    Q_OBJECT

    public:
        explicit TacticalComponent(QObject *parent = nullptr);

    signals:
        public slots:
            void onFireButtonPressed();
};
