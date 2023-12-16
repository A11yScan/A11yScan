.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "EventProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventDatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;


# direct methods
.method public constructor <init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;Landroid/content/Context;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;->this$0:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;

    .line 100
    const-string v0, "events.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 101
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 110
    const-string v0, "CREATE TABLE events(_id INTEGER PRIMARY KEY,gd_when_startTime TEXT,t_m_sake_shurui TEXT,m_sake_shurui TEXT,m_drink_alc TEXT,m_drink_size TEXT,m_sake_suu TEXT,m_sake_kingaku TEXT);"

    .line 126
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    .line 138
    const-string v0, "DROP TABLE IF EXISTS events"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0, p1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 141
    return-void
.end method
