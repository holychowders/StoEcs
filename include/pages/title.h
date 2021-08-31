#ifndef TITLEPAGE_H
#define TITLEPAGE_H

#include <QObject>


class TitlePage: public QObject
{
    Q_OBJECT

    //Q_PROPERTY(QString startButtonColor)
    //Q_PROPERTY(READ startButtonColor)
    //Q_PROPERTY(NOTIFY startButtonColorChanged)
    //Q_PROPERTY(WRITE setStartButtonColor)

    public:
        explicit TitlePage(QObject *parent = nullptr);

    signals:
        public slots:
            void onStartButtonPressed();
};

#endif  // TITLEPAGE_H
