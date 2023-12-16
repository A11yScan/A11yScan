.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;
.super Landroid/content/ContentProvider;
.source "EventProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;
    }
.end annotation


# static fields
.field private static final CURRENT_DATABASE_VERSION:I = 0x1


# instance fields
.field private mEventDatabaseHelper:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;->mEventDatabaseHelper:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;

    .line 11
    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 84
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;->mEventDatabaseHelper:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;

    invoke-virtual {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 86
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "events"

    invoke-virtual {v0, v2, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 88
    .local v1, "numDeleted":I
    return v1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 68
    iget-object v4, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;->mEventDatabaseHelper:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;

    invoke-virtual {v4}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 70
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "events"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 72
    .local v1, "newId":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 74
    .local v3, "newUri":Landroid/net/Uri;
    return-object v3
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 20
    new-instance v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;

    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;-><init>(Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;Landroid/content/Context;)V

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;->mEventDatabaseHelper:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;

    .line 21
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 41
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;->mEventDatabaseHelper:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;

    invoke-virtual {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 43
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "events"

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 44
    .local v8, "c":Landroid/database/Cursor;
    return-object v8
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 54
    iget-object v2, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider;->mEventDatabaseHelper:Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;

    invoke-virtual {v2}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventProvider$EventDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 56
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "events"

    invoke-virtual {v0, v2, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 58
    .local v1, "numUpdated":I
    return v1
.end method
