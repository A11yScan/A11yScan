.class public La2dp/Vol/DataXmlExporter;
.super Ljava/lang/Object;
.source "DataXmlExporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2dp/Vol/DataXmlExporter$XmlBuilder;
    }
.end annotation


# static fields
.field private static final DATASUBDIRECTORY:Ljava/lang/String;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/A2DPVol"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La2dp/Vol/DataXmlExporter;->DATASUBDIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, La2dp/Vol/DataXmlExporter;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    return-void
.end method

.method private exportTable(Ljava/lang/String;)V
    .locals 7
    .param p1, "tableName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v4, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-virtual {v4, p1}, La2dp/Vol/DataXmlExporter$XmlBuilder;->openTable(Ljava/lang/String;)V

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "select * from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "sql":Ljava/lang/String;
    iget-object v4, p0, La2dp/Vol/DataXmlExporter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 90
    .local v1, "cols":I
    :cond_0
    iget-object v4, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-virtual {v4}, La2dp/Vol/DataXmlExporter$XmlBuilder;->openRow()V

    .line 91
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 92
    iget-object v4, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v5

    .line 93
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 92
    invoke-virtual {v4, v5, v6}, La2dp/Vol/DataXmlExporter$XmlBuilder;->addColumn(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v4, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-virtual {v4}, La2dp/Vol/DataXmlExporter$XmlBuilder;->closeRow()V

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 98
    .end local v1    # "cols":I
    .end local v2    # "i":I
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 99
    iget-object v4, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-virtual {v4}, La2dp/Vol/DataXmlExporter$XmlBuilder;->closeTable()V

    .line 100
    return-void
.end method

.method private writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "xmlString"    # Ljava/lang/String;
    .param p2, "exportFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v2, Ljava/io/File;

    sget-object v4, La2dp/Vol/DataXmlExporter;->DATASUBDIRECTORY:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "dir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 106
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 108
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 109
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 111
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 112
    .local v0, "buff":Ljava/nio/ByteBuffer;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 114
    .local v1, "channel":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 119
    :cond_1
    return-void

    .line 116
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_2

    .line 117
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    throw v4
.end method


# virtual methods
.method public export(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "dbName"    # Ljava/lang/String;
    .param p2, "exportFileNamePrefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v5, La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-direct {v5, p0}, La2dp/Vol/DataXmlExporter$XmlBuilder;-><init>(La2dp/Vol/DataXmlExporter;)V

    iput-object v5, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    .line 50
    iget-object v5, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-virtual {v5, p1}, La2dp/Vol/DataXmlExporter$XmlBuilder;->start(Ljava/lang/String;)V

    .line 53
    const-string v2, "select * from sqlite_master"

    .line 54
    .local v2, "sql":Ljava/lang/String;
    iget-object v5, p0, La2dp/Vol/DataXmlExporter;->db:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v5, v2, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 57
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 59
    :cond_0
    const-string v5, "name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "tableName":Ljava/lang/String;
    const-string v5, "android_metadata"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "sqlite_sequence"

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "uidx"

    .line 66
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "sqlite"

    .line 67
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 68
    invoke-direct {p0, v3}, La2dp/Vol/DataXmlExporter;->exportTable(Ljava/lang/String;)V

    .line 70
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    .end local v3    # "tableName":Ljava/lang/String;
    :cond_2
    iget-object v5, p0, La2dp/Vol/DataXmlExporter;->xmlBuilder:La2dp/Vol/DataXmlExporter$XmlBuilder;

    invoke-virtual {v5}, La2dp/Vol/DataXmlExporter$XmlBuilder;->end()Ljava/lang/String;

    move-result-object v4

    .line 74
    .local v4, "xmlString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, La2dp/Vol/DataXmlExporter;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
