#include "include/pages/title.h"

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>


#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif


int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    QQmlContext *rootContext = engine.rootContext();

    const QUrl mainWindowUrl(QStringLiteral("qrc:/src/main.qml"));
    TitlePage titlePage;


    // Create main window and connect it to application
    QObject::connect
    (
        &engine,
        &QQmlApplicationEngine::objectCreated,
        &app,
        [mainWindowUrl](QObject *obj, const QUrl &objUrl) {
            if (!obj && mainWindowUrl == objUrl)
                QCoreApplication::exit(-1);
        },
        Qt::QueuedConnection
    );
    engine.load(mainWindowUrl);
    rootContext->setContextProperty("titlePage", &titlePage);

    return app.exec();
}
