#ifndef OPENSSLTOOL_H
#define OPENSSLTOOL_H

#include <QString>
#include <QProcess>

class OpenSSLTool
{
public:
    OpenSSLTool();

    static QString NameFromCertFile(QString cert_file);
    static QString NameFromCertString(QString cert_pem);
    static QString CertTextFromString(QString cert_pem);

    bool GenRSAKeySignal(quint32 numbits, QString keyfile, QObject *receiver, const char *finished_slot);
    bool GenCSRSignal(QString csr_file, QString keyfile, QString subject, QObject *receiver, const char *finished_slot);

    QString ReadStdErr();
    QString ReadStdOut();

private:
    QProcess openssl_;
};

#endif // OPENSSLTOOL_H
