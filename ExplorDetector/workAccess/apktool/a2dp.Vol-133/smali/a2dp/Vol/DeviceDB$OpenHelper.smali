.class La2dp/Vol/DeviceDB$OpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DeviceDB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/DeviceDB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OpenHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 287
    const-string v0, "btdevices.db"

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 288
    return-void
.end method

.method public static GetColumns(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 6
    .param p0, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 344
    .local v2, "c":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "select * from devices limit 1"

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 345
    if-eqz v2, :cond_0

    .line 346
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v1

    .line 352
    .end local v1    # "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "ar":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    if-eqz v2, :cond_1

    .line 353
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 355
    :cond_1
    :goto_0
    return-object v0

    .line 348
    :catch_0
    move-exception v3

    .line 349
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v4, "devices"

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 352
    if-eqz v2, :cond_1

    .line 353
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 352
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v2, :cond_2

    .line 353
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v4
.end method

.method public static join(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 361
    .local v2, "num":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 362
    if-eqz v1, :cond_0

    .line 363
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 292
    const-string v0, "CREATE TABLE devices(desc1 TEXT, desc2 TEXT, mac TEXT PRIMARY KEY, maxv INTEGER, setv INTEGER DEFAULT 1, getl INTEGER DEFAULT 1, pname TEXT, bdevice TEXT, wifi INTEGER DEFAULT 0, appaction TEXT, appdata TEXT, apptype TEXT, apprestart INTEGER DEFAULT 0, tts INTEGER DEFAULT 0, setpv INTEGER DEFAULT 0, phonev INTEGER DEFAULT 10, appkill INTEGER DEFAULT 1, enablegps INTEGER DEFAULT 0, icon INTEGER, smsdelay DEFAULT 3, smsstream DEFAULT 1, voldelay DEFAULT 5, volramp DEFAULT 0, autovol DEFAULT 1, silent DEFAULT 0, sleep DEFAULT 0, carmode DEFAULT 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 8
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/16 v6, 0xd

    const/4 v5, 0x4

    const/4 v7, 0x1

    .line 304
    invoke-static {}, La2dp/Vol/DeviceDB;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Upgrading database...."

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 305
    if-ge p3, v5, :cond_0

    if-lt p2, v5, :cond_1

    :cond_0
    if-gt p2, v6, :cond_1

    if-le p3, v6, :cond_3

    .line 306
    :cond_1
    const-string v3, "DROP TABLE IF EXISTS devices"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 307
    invoke-virtual {p0, p1}, La2dp/Vol/DeviceDB$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 308
    invoke-static {}, La2dp/Vol/DeviceDB;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Database replaced"

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 338
    :cond_2
    :goto_0
    return-void

    .line 312
    :cond_3
    const/4 v3, 0x5

    if-lt p3, v3, :cond_2

    .line 317
    :try_start_0
    invoke-static {p1}, La2dp/Vol/DeviceDB$OpenHelper;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v1

    .line 318
    .local v1, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "ALTER table devices RENAME TO \'temp_devices\'"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0, p1}, La2dp/Vol/DeviceDB$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 320
    invoke-static {p1}, La2dp/Vol/DeviceDB$OpenHelper;->GetColumns(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 321
    invoke-static {v1}, La2dp/Vol/DeviceDB$OpenHelper;->join(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "cols":Ljava/lang/String;
    const-string v3, "INSERT INTO %s (%s) SELECT %s from temp_%s"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "devices"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v0, v4, v5

    const/4 v5, 0x2

    aput-object v0, v4, v5

    const/4 v5, 0x3

    const-string v6, "devices"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 323
    const-string v3, "DROP table \'temp_devices\'"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 324
    invoke-static {}, La2dp/Vol/DeviceDB;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Database upgraded succesfully"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    .end local v0    # "cols":Ljava/lang/String;
    .end local v1    # "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 329
    .local v2, "e":Landroid/database/SQLException;
    invoke-virtual {v2}, Landroid/database/SQLException;->printStackTrace()V

    .line 330
    const-string v3, "DROP TABLE IF EXISTS devices"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 331
    invoke-static {}, La2dp/Vol/DeviceDB;->access$000()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Upgrade failed, replaced database"

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 332
    invoke-virtual {p0, p1}, La2dp/Vol/DeviceDB$OpenHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_0
.end method
