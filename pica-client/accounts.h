#ifndef ACCOUNTS_H
#define ACCOUNTS_H

#include <QString>
#include <QtSql>
#include <QSqlDatabase>
#include <QStringList>

class Accounts
{
public:
    struct AccountRecord
    {
        quint32 id;
        QString name;
        QString cert_file;
        QString pkey_file;
        QString CA_file;
    };

    Accounts(QString storage);
    void Add(AccountRecord& acc);
    void Delete(quint32 id);
    QList<AccountRecord> GetAccounts();
    bool isOK();
    QString GetLastError();

    static bool CheckFiles(AccountRecord& acc, QString &error_string);

private:
    QSqlDatabase dbconn;
    QSqlError lasterr;
};

#endif // ACCOUNTS_H
