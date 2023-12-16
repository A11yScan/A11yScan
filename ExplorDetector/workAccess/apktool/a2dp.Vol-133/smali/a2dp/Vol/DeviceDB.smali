.class public La2dp/Vol/DeviceDB;
.super Ljava/lang/Object;
.source "DeviceDB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2dp/Vol/DeviceDB$OpenHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "btdevices.db"

.field private static final DATABASE_VERSION:I = 0xd

.field private static final INSERT:Ljava/lang/String; = "insert into devices(desc1, desc2, mac, maxv, setv, getl, pname, bdevice, wifi, appaction, appdata, apptype, apprestart, tts, setpv, phonev, appkill, enablegps, icon, smsdelay, smsstream, voldelay, volramp, autovol, silent, sleep, carmode) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

.field private static final TABLE_NAME:Ljava/lang/String; = "devices"

.field private static context:Landroid/content/Context;


# instance fields
.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private insertStmt:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sput-object p1, La2dp/Vol/DeviceDB;->context:Landroid/content/Context;

    .line 37
    new-instance v0, La2dp/Vol/DeviceDB$OpenHelper;

    sget-object v1, La2dp/Vol/DeviceDB;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, La2dp/Vol/DeviceDB$OpenHelper;-><init>(Landroid/content/Context;)V

    .line 39
    .local v0, "openHelper":La2dp/Vol/DeviceDB$OpenHelper;
    invoke-virtual {v0}, La2dp/Vol/DeviceDB$OpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 41
    iget-object v1, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "insert into devices(desc1, desc2, mac, maxv, setv, getl, pname, bdevice, wifi, appaction, appdata, apptype, apprestart, tts, setpv, phonev, appkill, enablegps, icon, smsdelay, smsstream, voldelay, volramp, autovol, silent, sleep, carmode) values (?, ?, ?, ?, ?, ?, ?, ?, ?, ? ,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    .line 43
    return-void
.end method

.method static synthetic access$000()Landroid/content/Context;
    .locals 1

    .prologue
    .line 22
    sget-object v0, La2dp/Vol/DeviceDB;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public delete(La2dp/Vol/btDevice;)V
    .locals 4
    .param p1, "bt"    # La2dp/Vol/btDevice;

    .prologue
    .line 85
    iget-object v0, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "devices"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mac=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method public deleteAll()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 192
    iget-object v0, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "devices"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 193
    return-void
.end method

.method public getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;
    .locals 12
    .param p1, "imac"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 145
    new-instance v9, La2dp/Vol/btDevice;

    invoke-direct {v9}, La2dp/Vol/btDevice;-><init>()V

    .line 146
    .local v9, "bt":La2dp/Vol/btDevice;
    iget-object v0, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "devices"

    const-string v3, "mac = ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v8, v2

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 150
    .local v10, "cs":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setDesc1(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setDesc2(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x2

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setMac(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x3

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setDefVol(I)V

    .line 155
    const/4 v0, 0x4

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setSetV(I)V

    .line 156
    const/4 v0, 0x5

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setGetLoc(I)V

    .line 157
    const/4 v0, 0x6

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setPname(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x7

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setBdevice(Ljava/lang/String;)V

    .line 159
    const/16 v0, 0x8

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setWifi(I)V

    .line 160
    const/16 v0, 0x9

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setAppaction(Ljava/lang/String;)V

    .line 161
    const/16 v0, 0xa

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setAppdata(Ljava/lang/String;)V

    .line 162
    const/16 v0, 0xb

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setApptype(Ljava/lang/String;)V

    .line 163
    const/16 v0, 0xc

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setApprestart(I)V

    .line 164
    const/16 v0, 0xd

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setEnableTTS(I)V

    .line 165
    const/16 v0, 0xe

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setSetpv(I)V

    .line 166
    const/16 v0, 0xf

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setPhonev(I)V

    .line 167
    const/16 v0, 0x10

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setAppkill(I)V

    .line 168
    const/16 v0, 0x11

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setEnablegps(I)V

    .line 169
    const/16 v0, 0x12

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 170
    const/16 v0, 0x13

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setSmsdelay(I)V

    .line 171
    const/16 v0, 0x14

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setSmsstream(I)V

    .line 172
    const/16 v0, 0x15

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setVoldelay(I)V

    .line 173
    const/16 v0, 0x16

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setVolramp(I)V

    .line 174
    const/16 v0, 0x17

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setAutovol(I)V

    .line 175
    const/16 v0, 0x18

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setSilent(I)V

    .line 176
    const/16 v0, 0x19

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setSleep(I)V

    .line 177
    const/16 v0, 0x1a

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v9, v0}, La2dp/Vol/btDevice;->setCarmode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 185
    :cond_1
    return-object v9

    .line 179
    :catch_0
    move-exception v11

    .line 180
    .local v11, "e":Ljava/lang/Exception;
    iput-object v2, v9, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    goto :goto_0
.end method

.method public getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, La2dp/Vol/DeviceDB;->selectAll()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public insert(La2dp/Vol/btDevice;)J
    .locals 10
    .param p1, "btd"    # La2dp/Vol/btDevice;

    .prologue
    .line 95
    iget-object v1, p1, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    .line 97
    .local v1, "temp1":Ljava/lang/String;
    if-nez v1, :cond_0

    const-string v1, "Unknown Device"

    .line 98
    :cond_0
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 99
    iget-object v4, p1, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    .line 100
    .local v4, "temp2":Ljava/lang/String;
    if-nez v4, :cond_1

    move-object v4, v1

    .line 101
    :cond_1
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 102
    iget-object v5, p1, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    if-nez v5, :cond_2

    const-wide/16 v2, -0x1

    .line 135
    :goto_0
    return-wide v2

    .line 103
    :cond_2
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x3

    iget-object v7, p1, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 104
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x4

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getDefVol()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x5

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islSetV()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 106
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x6

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islGetLoc()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 107
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/4 v6, 0x7

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getPname()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 108
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x8

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 109
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x9

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islWifi()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 110
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xa

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getAppaction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 111
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xb

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getAppdata()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 112
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xc

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getApptype()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 113
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xd

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lApprestart()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 114
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xe

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islEnableTTS()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 115
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0xf

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islSetpv()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 116
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x10

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getPhonev()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 117
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x11

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lAppkill()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 118
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x12

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lenablegps()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 119
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x13

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getIcon()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 120
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x14

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getSmsdelay()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 121
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x15

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getSmsstream()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 122
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x16

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getVoldelay()I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x17

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lVolramp()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 124
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x18

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lautovol()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 125
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x19

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lsilent()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 126
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x1a

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lsleep()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 127
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    const/16 v6, 0x1b

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lcarmode()J

    move-result-wide v8

    invoke-virtual {v5, v6, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 129
    :try_start_0
    iget-object v5, p0, La2dp/Vol/DeviceDB;->insertStmt:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .local v2, "rtn":J
    goto/16 :goto_0

    .line 130
    .end local v2    # "rtn":J
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v2, 0x0

    .line 132
    .restart local v2    # "rtn":J
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public selectAll()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v13, 0x2

    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 212
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 213
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :goto_0
    return-object v3

    .line 214
    :cond_0
    iget-object v0, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "devices"

    new-array v2, v13, [Ljava/lang/String;

    const-string v4, "desc1"

    aput-object v4, v2, v5

    const-string v4, "desc2"

    aput-object v4, v2, v12

    const-string v7, "desc2"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 219
    :cond_1
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 220
    .local v11, "t":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v13, :cond_4

    .line 221
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_1

    .line 230
    .end local v11    # "t":Ljava/lang/String;
    :cond_2
    :goto_2
    if-eqz v8, :cond_3

    invoke-interface {v8}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 231
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v3, v10

    .line 233
    goto :goto_0

    .line 223
    .restart local v11    # "t":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 226
    .end local v11    # "t":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 227
    .local v9, "e":Ljava/lang/Exception;
    sget-object v0, La2dp/Vol/DeviceDB;->context:Landroid/content/Context;

    const-string v1, "Database corrupt, delete and recreate database"

    invoke-static {v0, v1, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public selectAlldb()Ljava/util/Vector;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "La2dp/Vol/btDevice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x3

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    .line 240
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 241
    .local v10, "list":Ljava/util/Vector;, "Ljava/util/Vector<La2dp/Vol/btDevice;>;"
    iget-object v0, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "devices"

    const/16 v2, 0x1b

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "desc1"

    aput-object v4, v2, v11

    const-string v4, "desc2"

    aput-object v4, v2, v12

    const-string v4, "mac"

    aput-object v4, v2, v13

    const-string v4, "maxv"

    aput-object v4, v2, v14

    const/4 v4, 0x4

    const-string v5, "setv"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "getl"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "pname"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "bdevice"

    aput-object v5, v2, v4

    const/16 v4, 0x8

    const-string v5, "wifi"

    aput-object v5, v2, v4

    const/16 v4, 0x9

    const-string v5, "appaction"

    aput-object v5, v2, v4

    const/16 v4, 0xa

    const-string v5, "appdata"

    aput-object v5, v2, v4

    const/16 v4, 0xb

    const-string v5, "apptype"

    aput-object v5, v2, v4

    const/16 v4, 0xc

    const-string v5, "apprestart"

    aput-object v5, v2, v4

    const/16 v4, 0xd

    const-string v5, "tts"

    aput-object v5, v2, v4

    const/16 v4, 0xe

    const-string v5, "setpv"

    aput-object v5, v2, v4

    const/16 v4, 0xf

    const-string v5, "phonev"

    aput-object v5, v2, v4

    const/16 v4, 0x10

    const-string v5, "appkill"

    aput-object v5, v2, v4

    const/16 v4, 0x11

    const-string v5, "enablegps"

    aput-object v5, v2, v4

    const/16 v4, 0x12

    const-string v5, "icon"

    aput-object v5, v2, v4

    const/16 v4, 0x13

    const-string v5, "smsdelay"

    aput-object v5, v2, v4

    const/16 v4, 0x14

    const-string v5, "smsstream"

    aput-object v5, v2, v4

    const/16 v4, 0x15

    const-string v5, "voldelay"

    aput-object v5, v2, v4

    const/16 v4, 0x16

    const-string v5, "volramp"

    aput-object v5, v2, v4

    const/16 v4, 0x17

    const-string v5, "autovol"

    aput-object v5, v2, v4

    const/16 v4, 0x18

    const-string v5, "silent"

    aput-object v5, v2, v4

    const/16 v4, 0x19

    const-string v5, "sleep"

    aput-object v5, v2, v4

    const/16 v4, 0x1a

    const-string v5, "carmode"

    aput-object v5, v2, v4

    const-string v7, "desc2"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 246
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    :cond_0
    new-instance v8, La2dp/Vol/btDevice;

    invoke-direct {v8}, La2dp/Vol/btDevice;-><init>()V

    .line 249
    .local v8, "bt":La2dp/Vol/btDevice;
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setDesc1(Ljava/lang/String;)V

    .line 250
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setDesc2(Ljava/lang/String;)V

    .line 251
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setMac(Ljava/lang/String;)V

    .line 252
    const/4 v0, 0x4

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setSetV(I)V

    .line 253
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setDefVol(I)V

    .line 254
    const/4 v0, 0x5

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setGetLoc(I)V

    .line 255
    const/4 v0, 0x6

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setPname(Ljava/lang/String;)V

    .line 256
    const/4 v0, 0x7

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setBdevice(Ljava/lang/String;)V

    .line 257
    const/16 v0, 0x8

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setWifi(I)V

    .line 258
    const/16 v0, 0x9

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setAppaction(Ljava/lang/String;)V

    .line 259
    const/16 v0, 0xa

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setAppdata(Ljava/lang/String;)V

    .line 260
    const/16 v0, 0xb

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setApptype(Ljava/lang/String;)V

    .line 261
    const/16 v0, 0xc

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setApprestart(I)V

    .line 262
    const/16 v0, 0xd

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setEnableTTS(I)V

    .line 263
    const/16 v0, 0xe

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setSetpv(I)V

    .line 264
    const/16 v0, 0xf

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setPhonev(I)V

    .line 265
    const/16 v0, 0x10

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setAppkill(I)V

    .line 266
    const/16 v0, 0x11

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setEnablegps(I)V

    .line 267
    const/16 v0, 0x12

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 268
    const/16 v0, 0x13

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setSmsdelay(I)V

    .line 269
    const/16 v0, 0x14

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setSmsstream(I)V

    .line 270
    const/16 v0, 0x15

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setVoldelay(I)V

    .line 271
    const/16 v0, 0x16

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setVolramp(I)V

    .line 272
    const/16 v0, 0x17

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setAutovol(I)V

    .line 273
    const/16 v0, 0x18

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setSilent(I)V

    .line 274
    const/16 v0, 0x19

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setSleep(I)V

    .line 275
    const/16 v0, 0x1a

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v8, v0}, La2dp/Vol/btDevice;->setCarmode(I)V

    .line 276
    invoke-virtual {v10, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    .end local v8    # "bt":La2dp/Vol/btDevice;
    :cond_1
    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 280
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_2
    return-object v10
.end method

.method public update(La2dp/Vol/btDevice;)V
    .locals 5
    .param p1, "bt"    # La2dp/Vol/btDevice;

    .prologue
    .line 50
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 51
    .local v0, "vals":Landroid/content/ContentValues;
    const-string v1, "desc2"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getDesc2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "maxv"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getDefVol()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 53
    const-string v1, "setv"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islSetV()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 54
    const-string v1, "getl"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islGetLoc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 55
    const-string v1, "pname"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getPname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v1, "bdevice"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v1, "wifi"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islWifi()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    const-string v1, "appaction"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getAppaction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v1, "appdata"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getAppdata()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string v1, "apptype"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getApptype()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "apprestart"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lApprestart()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 62
    const-string v1, "tts"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islEnableTTS()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 63
    const-string v1, "setpv"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->islSetpv()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 64
    const-string v1, "phonev"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getPhonev()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 65
    const-string v1, "appkill"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lAppkill()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 66
    const-string v1, "enablegps"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lenablegps()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 67
    const-string v1, "icon"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getIcon()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 68
    const-string v1, "smsdelay"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getSmsdelay()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 69
    const-string v1, "smsstream"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getSmsstream()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 70
    const-string v1, "voldelay"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->getVoldelay()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 71
    const-string v1, "volramp"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lVolramp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 72
    const-string v1, "autovol"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lautovol()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 73
    const-string v1, "silent"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->lsilent()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 74
    const-string v1, "sleep"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->isSleep()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 75
    const-string v1, "carmode"

    invoke-virtual {p1}, La2dp/Vol/btDevice;->isCarmode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 76
    iget-object v1, p0, La2dp/Vol/DeviceDB;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "devices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mac=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 77
    const/4 v0, 0x0

    .line 78
    return-void
.end method
