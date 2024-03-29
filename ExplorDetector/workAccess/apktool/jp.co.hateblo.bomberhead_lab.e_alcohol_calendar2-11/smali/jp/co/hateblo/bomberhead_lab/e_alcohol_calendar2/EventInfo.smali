.class public Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;
.super Ljava/lang/Object;
.source "EventInfo.java"


# static fields
.field public static final DB_NAME:Ljava/lang/String; = "events"

.field public static final HOUR_BY_MINUTES:I = 0x3c

.field public static final ID:Ljava/lang/String; = "_id"

.field public static final MINUTE_BY_MILLI:I = 0xea60

.field public static final MINUTE_BY_SECONDS:I = 0x3c

.field public static RFC822MilliDateFormat:Ljava/text/SimpleDateFormat; = null

.field public static final SAKE_ALC:Ljava/lang/String; = "m_drink_alc"

.field public static final SAKE_KINGAKU:Ljava/lang/String; = "m_sake_kingaku"

.field public static final SAKE_SHURUI:Ljava/lang/String; = "m_sake_shurui"

.field public static final SAKE_SIZE:Ljava/lang/String; = "m_drink_size"

.field public static final SAKE_SUU:Ljava/lang/String; = "m_sake_suu"

.field public static final SECOND_BY_MILLI:I = 0x3e8

.field public static final START_TIME:Ljava/lang/String; = "gd_when_startTime"

.field public static final T_SAKE_SHURUI:Ljava/lang/String; = "t_m_sake_shurui"

.field public static final dateFormat:Ljava/text/SimpleDateFormat;

.field public static final timeFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field eki11:Ljava/lang/String;

.field private mId:J

.field private mStart:Ljava/util/GregorianCalendar;

.field private m_drink_alc:Ljava/lang/String;

.field private m_drink_size:Ljava/lang/String;

.field private m_sake_kingaku:Ljava/lang/String;

.field private m_sake_shurui:Ljava/lang/String;

.field private m_sake_suu:Ljava/lang/String;

.field private t_m_sake_shurui:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeFormat:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->RFC822MilliDateFormat:Ljava/text/SimpleDateFormat;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static timeZoneToString(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 8
    .param p0, "tz"    # Ljava/util/TimeZone;

    .prologue
    .line 86
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 87
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x0

    .line 89
    .local v1, "dir":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    .line 91
    .local v2, "offset":I
    if-gez v2, :cond_1

    .line 94
    neg-int v2, v2

    .line 95
    const-string v1, "-"

    .line 104
    :cond_0
    :goto_0
    const v5, 0xea60

    div-int v4, v2, v5

    .line 105
    .local v4, "offsetMin":I
    div-int/lit8 v3, v4, 0x3c

    .line 106
    .local v3, "offsetHour":I
    rem-int/lit8 v4, v4, 0x3c

    .line 107
    const/16 v5, 0xb

    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 108
    const/16 v5, 0xc

    invoke-virtual {v0, v5, v4}, Ljava/util/Calendar;->set(II)V

    .line 110
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v3    # "offsetHour":I
    .end local v4    # "offsetMin":I
    :goto_1
    return-object v5

    .line 96
    :cond_1
    if-lez v2, :cond_2

    .line 98
    const-string v1, "+"

    .line 99
    goto :goto_0

    :cond_2
    if-nez v2, :cond_0

    .line 101
    const-string v5, "Z"

    goto :goto_1
.end method

.method public static toCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;
    .locals 9
    .param p0, "startTime"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 133
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 135
    .local v0, "calendar":Ljava/util/GregorianCalendar;
    const-string v3, "[^0-9]"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "strs":[Ljava/lang/String;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 137
    .local v2, "timeZone":Ljava/util/TimeZone;
    const-string v3, "^[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]$"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 140
    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 141
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 142
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 143
    const/16 v3, 0xc

    invoke-virtual {v0, v3, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 144
    const/16 v3, 0xd

    invoke-virtual {v0, v3, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 145
    const/16 v3, 0xe

    invoke-virtual {v0, v3, v5}, Ljava/util/GregorianCalendar;->set(II)V

    .line 146
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 170
    :goto_0
    return-object v0

    .line 149
    :cond_0
    aget-object v3, v1, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v4, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 150
    aget-object v3, v1, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v6, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 151
    aget-object v3, v1, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v7, v3}, Ljava/util/GregorianCalendar;->set(II)V

    .line 152
    const/16 v3, 0xb

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 153
    const/16 v3, 0xc

    const/4 v4, 0x4

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 154
    const/16 v3, 0xd

    aget-object v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 155
    const/16 v3, 0xe

    const/4 v4, 0x6

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->set(II)V

    .line 157
    const-string v3, ".+Z$"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v2, v5}, Ljava/util/TimeZone;->setRawOffset(I)V

    .line 168
    :cond_1
    :goto_1
    invoke-virtual {v0, v2}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 160
    :cond_2
    const-string v3, ".+\\+[0-9][0-9]:[0-9][0-9]$"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 162
    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/16 v4, 0x8

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0xea60

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->setRawOffset(I)V

    goto :goto_1

    .line 163
    :cond_3
    const-string v3, ".+-[0-9][0-9]:[0-9][0-9]$"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    aget-object v3, v1, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v3, v3, 0x3c

    const/16 v4, 0x8

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    neg-int v3, v3

    const v4, 0xea60

    mul-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->setRawOffset(I)V

    goto :goto_1
.end method

.method public static toDBDateString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v1, ":00.000"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeZoneToString(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static toDBDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    .line 120
    sget-object v1, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->RFC822MilliDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "dateStr":Ljava/lang/String;
    const-string v1, ".+[+-][0-9]{4}$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string v1, "([+-][0-9]{2})([0-9]{2})"

    const-string v2, "$1:$2"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mId:J

    return-wide v0
.end method

.method public getStart()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public getStartDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->dateFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    invoke-static {v0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toDBDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStartTimeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    sget-object v0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->timeFormat:Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get_drink_alc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_drink_alc:Ljava/lang/String;

    return-object v0
.end method

.method public get_drink_size()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_drink_size:Ljava/lang/String;

    return-object v0
.end method

.method public get_sake_kingaku()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_sake_kingaku:Ljava/lang/String;

    return-object v0
.end method

.method public get_sake_shurui()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_sake_shurui:Ljava/lang/String;

    return-object v0
.end method

.method public get_sake_suu()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_sake_suu:Ljava/lang/String;

    return-object v0
.end method

.method public get_t_sake_shurui()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->t_m_sake_shurui:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 0
    .param p1, "mId"    # J

    .prologue
    .line 209
    iput-wide p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mId:J

    .line 210
    return-void
.end method

.method public setStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateString"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-static {p1}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->toCalendar(Ljava/lang/String;)Ljava/util/GregorianCalendar;

    move-result-object v0

    iput-object v0, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    .line 237
    return-void
.end method

.method public setStart(Ljava/util/GregorianCalendar;)V
    .locals 0
    .param p1, "mStart"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 232
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    .line 233
    return-void
.end method

.method public set_drink_alc(Ljava/lang/String;)V
    .locals 0
    .param p1, "m_drink_alc"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_drink_alc:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public set_drink_size(Ljava/lang/String;)V
    .locals 0
    .param p1, "m_drink_size"    # Ljava/lang/String;

    .prologue
    .line 304
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_drink_size:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public set_sake_kingaku(Ljava/lang/String;)V
    .locals 0
    .param p1, "m_sake_kingaku"    # Ljava/lang/String;

    .prologue
    .line 316
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_sake_kingaku:Ljava/lang/String;

    .line 317
    return-void
.end method

.method public set_sake_shurui(Ljava/lang/String;)V
    .locals 0
    .param p1, "m_sake_shurui"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_sake_shurui:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public set_sake_suu(Ljava/lang/String;)V
    .locals 0
    .param p1, "m_sake_suu"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->m_sake_suu:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public set_t_sake_shurui(Ljava/lang/String;)V
    .locals 0
    .param p1, "t_m_sake_shurui"    # Ljava/lang/String;

    .prologue
    .line 286
    iput-object p1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->t_m_sake_shurui:Ljava/lang/String;

    .line 287
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 179
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->mStart:Ljava/util/GregorianCalendar;

    invoke-virtual {v1}, Ljava/util/GregorianCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/GregorianCalendar;

    .line 181
    .local v0, "startCal":Ljava/util/GregorianCalendar;
    const/4 v1, 0x5

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/GregorianCalendar;->add(II)V

    .line 199
    .end local v0    # "startCal":Ljava/util/GregorianCalendar;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->get_t_sake_shurui()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 203
    const-string v2, "      \u00d7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 204
    invoke-virtual {p0}, Ljp/co/hateblo/bomberhead_lab/e_alcohol_calendar2/EventInfo;->get_sake_suu()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 199
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 193
    return-object v1
.end method
