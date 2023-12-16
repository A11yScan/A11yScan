.class public La2dp/Vol/service;
.super Landroid/app/Service;
.source "service.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# static fields
.field private static final A2DP_Vol:Ljava/lang/String; = "A2DP_Vol"

.field private static final ALARM_STREAM:I = 0x2

.field static DeviceToConnect:Ljava/lang/String; = null

.field private static final FIX_STREAM:Ljava/lang/String; = "fix_stream"

.field private static final IN_CALL_STREAM:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "A2DP_Volume"

.field private static final MUSIC_STREAM:I = 0x0

.field private static final OLD_PH_VOL:Ljava/lang/String; = "old_phone_vol"

.field private static final OLD_VOLUME:Ljava/lang/String; = "old_vol"

.field private static OldVol:Ljava/lang/Integer; = null

.field private static OldVol2:Ljava/lang/Integer; = null

.field private static Oldsilent:Ljava/lang/Integer; = null

.field public static final PREFS_NAME:Ljava/lang/String; = "btVol"

.field static am2:Landroid/media/AudioManager;

.field private static application:La2dp/Vol/MyApplication;

.field public static btdConn:[La2dp/Vol/btDevice;

.field public static connects:Ljava/lang/Integer;

.field private static hideVolUi:Z

.field static ibta2:Landroid/bluetooth/IBluetoothA2dp;

.field public static mConnection:Landroid/content/ServiceConnection;

.field static mIsBound:Z

.field public static mTtsReady:Z

.field private static mvolsLeft:Z

.field private static notify_pref:Ljava/lang/String;

.field private static pvolsLeft:Z

.field private static ramp_vol:Z

.field public static run:Z

.field public static talk:Z


# instance fields
.field private DB:La2dp/Vol/DeviceDB;

.field MAX_ACC:F

.field private MAX_MESSAGE_LENGTH:I

.field MAX_TIME:J

.field private SMS_delay:J

.field private final SMScatcher:Landroid/content/BroadcastReceiver;

.field private SMSstream:I

.field a2dpDir:Ljava/lang/String;

.field private bluetoothWasOff:Z

.field private final btOFFReciever:Landroid/content/BroadcastReceiver;

.field private carMode:Z

.field private clearedTts:Z

.field private connectedIcon:I

.field private volatile connecting:Z

.field private volatile disconnecting:Z

.field private enableGTalk:Z

.field private enableSMS:Z

.field private final headSetReceiver:Landroid/content/BroadcastReceiver;

.field private headsetPlug:Z

.field private homeDock:Z

.field public listenerStarted:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field local:Z

.field locmanager:Landroid/location/LocationManager;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiver2:Landroid/content/BroadcastReceiver;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final messageClear:Landroid/content/BroadcastReceiver;

.field private musicWasPlaying:Z

.field myHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notify:Z

.field oldgpsstate:Z

.field oldwifistate:Z

.field permLocation:Ljava/lang/Boolean;

.field permPhone:Ljava/lang/Boolean;

.field permReadContacts:Ljava/lang/Boolean;

.field permSMS:Ljava/lang/Boolean;

.field permStorage:Ljava/lang/Boolean;

.field private power:Z

.field preferences:Landroid/content/SharedPreferences;

.field public sco_change:Landroid/content/BroadcastReceiver;

.field private speakerPhoneWasOn:Z

.field private tm:Landroid/telephony/TelephonyManager;

.field private final tmessage:Landroid/content/BroadcastReceiver;

.field tmessageRegistered:Z

.field private toasts:Z

.field public ul:Landroid/speech/tts/UtteranceProgressListener;

.field private vol_delay:J

.field wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 68
    sput-boolean v2, La2dp/Vol/service;->mTtsReady:Z

    move-object v0, v1

    .line 69
    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    .line 70
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, La2dp/Vol/service;->OldVol:Ljava/lang/Integer;

    .line 71
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, La2dp/Vol/service;->OldVol2:Ljava/lang/Integer;

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    .line 74
    sput-boolean v2, La2dp/Vol/service;->run:Z

    .line 75
    sput-boolean v2, La2dp/Vol/service;->talk:Z

    .line 76
    sput-boolean v2, La2dp/Vol/service;->mvolsLeft:Z

    .line 77
    sput-boolean v2, La2dp/Vol/service;->pvolsLeft:Z

    .line 78
    const-string v0, "always"

    sput-object v0, La2dp/Vol/service;->notify_pref:Ljava/lang/String;

    .line 79
    new-array v0, v3, [La2dp/Vol/btDevice;

    sput-object v0, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    .line 83
    sput-boolean v2, La2dp/Vol/service;->mIsBound:Z

    .line 85
    sput-object v1, La2dp/Vol/service;->DeviceToConnect:Ljava/lang/String;

    .line 92
    sput-boolean v2, La2dp/Vol/service;->ramp_vol:Z

    .line 96
    sput-boolean v2, La2dp/Vol/service;->hideVolUi:Z

    .line 1233
    new-instance v0, La2dp/Vol/service$11;

    invoke-direct {v0}, La2dp/Vol/service$11;-><init>()V

    sput-object v0, La2dp/Vol/service;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 86
    iput-boolean v2, p0, La2dp/Vol/service;->carMode:Z

    .line 87
    iput-boolean v3, p0, La2dp/Vol/service;->homeDock:Z

    .line 88
    iput-boolean v3, p0, La2dp/Vol/service;->headsetPlug:Z

    .line 89
    iput-boolean v3, p0, La2dp/Vol/service;->power:Z

    .line 90
    iput-boolean v3, p0, La2dp/Vol/service;->enableGTalk:Z

    .line 91
    iput-boolean v3, p0, La2dp/Vol/service;->enableSMS:Z

    .line 94
    iput-boolean v2, p0, La2dp/Vol/service;->toasts:Z

    .line 95
    iput-boolean v2, p0, La2dp/Vol/service;->notify:Z

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, La2dp/Vol/service;->mNotificationManager:Landroid/app/NotificationManager;

    .line 98
    iput-boolean v2, p0, La2dp/Vol/service;->speakerPhoneWasOn:Z

    .line 99
    iput-boolean v3, p0, La2dp/Vol/service;->musicWasPlaying:Z

    .line 100
    iput-boolean v3, p0, La2dp/Vol/service;->bluetoothWasOff:Z

    .line 101
    iput-boolean v2, p0, La2dp/Vol/service;->clearedTts:Z

    .line 104
    iput-boolean v2, p0, La2dp/Vol/service;->oldwifistate:Z

    .line 105
    iput-boolean v2, p0, La2dp/Vol/service;->oldgpsstate:Z

    .line 106
    iput-boolean v3, p0, La2dp/Vol/service;->tmessageRegistered:Z

    .line 109
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/service;->a2dpDir:Ljava/lang/String;

    .line 123
    const/16 v0, 0x15e

    iput v0, p0, La2dp/Vol/service;->MAX_MESSAGE_LENGTH:I

    .line 124
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, La2dp/Vol/service;->MAX_ACC:F

    .line 125
    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, La2dp/Vol/service;->MAX_TIME:J

    .line 126
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, La2dp/Vol/service;->SMS_delay:J

    .line 127
    iput v3, p0, La2dp/Vol/service;->SMSstream:I

    .line 128
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, La2dp/Vol/service;->vol_delay:J

    .line 134
    iput-boolean v3, p0, La2dp/Vol/service;->connecting:Z

    .line 135
    iput-boolean v3, p0, La2dp/Vol/service;->disconnecting:Z

    .line 140
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/service;->permReadContacts:Ljava/lang/Boolean;

    .line 141
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/service;->permLocation:Ljava/lang/Boolean;

    .line 142
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/service;->permPhone:Ljava/lang/Boolean;

    .line 143
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/service;->permSMS:Ljava/lang/Boolean;

    .line 144
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/service;->permStorage:Ljava/lang/Boolean;

    .line 402
    new-instance v0, La2dp/Vol/service$1;

    invoke-direct {v0, p0}, La2dp/Vol/service$1;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->tmessage:Landroid/content/BroadcastReceiver;

    .line 412
    new-instance v0, La2dp/Vol/service$2;

    invoke-direct {v0, p0}, La2dp/Vol/service$2;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->messageClear:Landroid/content/BroadcastReceiver;

    .line 424
    new-instance v0, La2dp/Vol/service$3;

    invoke-direct {v0, p0}, La2dp/Vol/service$3;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->btOFFReciever:Landroid/content/BroadcastReceiver;

    .line 472
    new-instance v0, La2dp/Vol/service$4;

    invoke-direct {v0, p0}, La2dp/Vol/service$4;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->headSetReceiver:Landroid/content/BroadcastReceiver;

    .line 498
    new-instance v0, La2dp/Vol/service$5;

    invoke-direct {v0, p0}, La2dp/Vol/service$5;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 709
    new-instance v0, La2dp/Vol/service$8;

    invoke-direct {v0, p0}, La2dp/Vol/service$8;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->mReceiver2:Landroid/content/BroadcastReceiver;

    .line 1305
    new-instance v0, La2dp/Vol/service$12;

    invoke-direct {v0, p0}, La2dp/Vol/service$12;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->SMScatcher:Landroid/content/BroadcastReceiver;

    .line 1446
    new-instance v0, La2dp/Vol/service$14;

    invoke-direct {v0, p0}, La2dp/Vol/service$14;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->listenerStarted:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 1457
    new-instance v0, La2dp/Vol/service$15;

    invoke-direct {v0, p0}, La2dp/Vol/service$15;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->ul:Landroid/speech/tts/UtteranceProgressListener;

    .line 1621
    new-instance v0, La2dp/Vol/service$16;

    invoke-direct {v0, p0}, La2dp/Vol/service$16;-><init>(La2dp/Vol/service;)V

    iput-object v0, p0, La2dp/Vol/service;->sco_change:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private GetName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 1597
    sget-object v2, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    const-string v4, "android.permission.READ_CONTACTS"

    invoke-static {v2, v4}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    .line 1599
    .local v8, "permissionCheck":I
    if-nez v8, :cond_0

    .line 1600
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/service;->permReadContacts:Ljava/lang/Boolean;

    .line 1604
    :goto_0
    iget-object v2, p0, La2dp/Vol/service;->permReadContacts:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1605
    invoke-virtual {p0}, La2dp/Vol/service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1607
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1608
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1607
    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1609
    .local v1, "uri":Landroid/net/Uri;
    new-array v2, v9, [Ljava/lang/String;

    const-string v4, "display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1612
    .local v6, "c":Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1613
    const-string v2, "display_name"

    .line 1614
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 1613
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1618
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v6    # "c":Landroid/database/Cursor;
    :goto_1
    return-object v7

    .line 1602
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/service;->permReadContacts:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    move-object v7, p1

    .line 1618
    goto :goto_1
.end method

.method static synthetic access$000(La2dp/Vol/service;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    invoke-direct {p0}, La2dp/Vol/service;->clearTts()V

    return-void
.end method

.method static synthetic access$100(La2dp/Vol/service;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    invoke-direct {p0}, La2dp/Vol/service;->getConnects()V

    return-void
.end method

.method static synthetic access$1000(La2dp/Vol/service;)Z
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-boolean v0, p0, La2dp/Vol/service;->clearedTts:Z

    return v0
.end method

.method static synthetic access$1002(La2dp/Vol/service;Z)Z
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, La2dp/Vol/service;->clearedTts:Z

    return p1
.end method

.method static synthetic access$1100(La2dp/Vol/service;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-object v0, p0, La2dp/Vol/service;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$1102(La2dp/Vol/service;Landroid/speech/tts/TextToSpeech;)Landroid/speech/tts/TextToSpeech;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;
    .param p1, "x1"    # Landroid/speech/tts/TextToSpeech;

    .prologue
    .line 54
    iput-object p1, p0, La2dp/Vol/service;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object p1
.end method

.method static synthetic access$1200(La2dp/Vol/service;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-object v0, p0, La2dp/Vol/service;->SMScatcher:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1300(La2dp/Vol/service;)La2dp/Vol/DeviceDB;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-object v0, p0, La2dp/Vol/service;->DB:La2dp/Vol/DeviceDB;

    return-object v0
.end method

.method static synthetic access$1400(La2dp/Vol/service;)Z
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-boolean v0, p0, La2dp/Vol/service;->disconnecting:Z

    return v0
.end method

.method static synthetic access$1402(La2dp/Vol/service;Z)Z
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, La2dp/Vol/service;->disconnecting:Z

    return p1
.end method

.method static synthetic access$1500(La2dp/Vol/service;)Z
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-boolean v0, p0, La2dp/Vol/service;->connecting:Z

    return v0
.end method

.method static synthetic access$1502(La2dp/Vol/service;Z)Z
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, La2dp/Vol/service;->connecting:Z

    return p1
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, La2dp/Vol/service;->hideVolUi:Z

    return v0
.end method

.method static synthetic access$1700(La2dp/Vol/service;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-object v0, p0, La2dp/Vol/service;->tm:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$1800(La2dp/Vol/service;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1}, La2dp/Vol/service;->GetName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(La2dp/Vol/service;)I
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget v0, p0, La2dp/Vol/service;->SMSstream:I

    return v0
.end method

.method static synthetic access$200(La2dp/Vol/service;)Z
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-boolean v0, p0, La2dp/Vol/service;->notify:Z

    return v0
.end method

.method static synthetic access$2000(La2dp/Vol/service;)Z
    .locals 1
    .param p0, "x0"    # La2dp/Vol/service;

    .prologue
    .line 54
    iget-boolean v0, p0, La2dp/Vol/service;->musicWasPlaying:Z

    return v0
.end method

.method static synthetic access$300(La2dp/Vol/service;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, La2dp/Vol/service;->updateNot(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, La2dp/Vol/service;->mvolsLeft:Z

    return v0
.end method

.method static synthetic access$500()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    sget-object v0, La2dp/Vol/service;->OldVol2:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$600()La2dp/Vol/MyApplication;
    .locals 1

    .prologue
    .line 54
    sget-object v0, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, La2dp/Vol/service;->pvolsLeft:Z

    return v0
.end method

.method static synthetic access$800()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 54
    sget-object v0, La2dp/Vol/service;->OldVol:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$900(La2dp/Vol/service;Z)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/service;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    invoke-direct {p0, p1}, La2dp/Vol/service;->dowifi(Z)V

    return-void
.end method

.method private clearTts()V
    .locals 1

    .prologue
    .line 1566
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1567
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 1571
    :cond_0
    return-void
.end method

.method static doUnbind(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1269
    sget-boolean v0, La2dp/Vol/service;->mIsBound:Z

    if-eqz v0, :cond_0

    .line 1270
    sget-object v0, La2dp/Vol/service;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1272
    :cond_0
    return-void
.end method

.method private dowifi(Z)V
    .locals 4
    .param p1, "s"    # Z

    .prologue
    .line 1278
    :try_start_0
    iget-object v1, p0, La2dp/Vol/service;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1285
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to switch wifi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1281
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1280
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 1282
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getConnects()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1290
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    .line 1291
    sput-boolean v2, La2dp/Vol/service;->mvolsLeft:Z

    .line 1292
    sput-boolean v2, La2dp/Vol/service;->pvolsLeft:Z

    .line 1293
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1294
    sget-object v1, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 1295
    sget-object v1, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    sget-object v1, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    .line 1296
    sget-object v1, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La2dp/Vol/btDevice;->isSetV()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1297
    sput-boolean v3, La2dp/Vol/service;->mvolsLeft:Z

    .line 1298
    :cond_0
    sget-object v1, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v1, v1, v0

    invoke-virtual {v1}, La2dp/Vol/btDevice;->isSetpv()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1299
    sput-boolean v3, La2dp/Vol/service;->pvolsLeft:Z

    .line 1293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1303
    :cond_2
    return-void
.end method

.method private getOldPvol()V
    .locals 3

    .prologue
    .line 1040
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, La2dp/Vol/service;->OldVol:Ljava/lang/Integer;

    .line 1041
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, La2dp/Vol/service;->Oldsilent:Ljava/lang/Integer;

    .line 1044
    iget-object v1, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1045
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "old_phone_vol"

    sget-object v2, La2dp/Vol/service;->OldVol:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1046
    const-string v1, "oldsilent"

    sget-object v2, La2dp/Vol/service;->Oldsilent:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1047
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1048
    return-void
.end method

.method private getOldvol()V
    .locals 3

    .prologue
    .line 1030
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, La2dp/Vol/service;->OldVol2:Ljava/lang/Integer;

    .line 1033
    iget-object v1, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1034
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "old_vol"

    sget-object v2, La2dp/Vol/service;->OldVol2:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1035
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1036
    return-void
.end method

.method private registerRecievers()V
    .locals 6

    .prologue
    .line 284
    new-instance v2, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-direct {v2, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 289
    .local v2, "filter":Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "filter2":Landroid/content/IntentFilter;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 294
    .local v0, "btNotEnabled":Landroid/content/IntentFilter;
    iget-object v5, p0, La2dp/Vol/service;->btOFFReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v0}, La2dp/Vol/service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 296
    new-instance v1, Landroid/content/IntentFilter;

    const-string v5, "a2dp.vol.service.CLEAR"

    invoke-direct {v1, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 297
    .local v1, "clearMessage":Landroid/content/IntentFilter;
    iget-object v5, p0, La2dp/Vol/service;->messageClear:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v1}, La2dp/Vol/service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 299
    iget-boolean v5, p0, La2dp/Vol/service;->carMode:Z

    if-eqz v5, :cond_0

    .line 301
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 304
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    :cond_0
    iget-boolean v5, p0, La2dp/Vol/service;->homeDock:Z

    if-eqz v5, :cond_1

    .line 309
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    :cond_1
    iget-boolean v5, p0, La2dp/Vol/service;->power:Z

    if-eqz v5, :cond_2

    .line 317
    const-string v5, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 320
    const-string v5, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 323
    :cond_2
    iget-boolean v5, p0, La2dp/Vol/service;->headsetPlug:Z

    if-eqz v5, :cond_3

    .line 325
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 326
    .local v4, "filter7":Landroid/content/IntentFilter;
    iget-object v5, p0, La2dp/Vol/service;->headSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v4}, La2dp/Vol/service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 328
    .end local v4    # "filter7":Landroid/content/IntentFilter;
    :cond_3
    iget-object v5, p0, La2dp/Vol/service;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v2}, La2dp/Vol/service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 329
    iget-object v5, p0, La2dp/Vol/service;->mReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, La2dp/Vol/service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    return-void
.end method

.method private runApp(La2dp/Vol/btDevice;)Z
    .locals 14
    .param p1, "bt"    # La2dp/Vol/btDevice;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1121
    invoke-virtual {p1}, La2dp/Vol/btDevice;->getPname()Ljava/lang/String;

    move-result-object v7

    .line 1122
    .local v7, "pname":Ljava/lang/String;
    invoke-virtual {p1}, La2dp/Vol/btDevice;->getAppaction()Ljava/lang/String;

    move-result-object v1

    .line 1123
    .local v1, "cAction":Ljava/lang/String;
    invoke-virtual {p1}, La2dp/Vol/btDevice;->getAppdata()Ljava/lang/String;

    move-result-object v2

    .line 1124
    .local v2, "cData":Ljava/lang/String;
    invoke-virtual {p1}, La2dp/Vol/btDevice;->getApptype()Ljava/lang/String;

    move-result-object v3

    .line 1125
    .local v3, "cType":Ljava/lang/String;
    invoke-virtual {p1}, La2dp/Vol/btDevice;->isApprestart()Z

    move-result v8

    .line 1127
    .local v8, "restart":Z
    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-le v12, v13, :cond_0

    .line 1129
    :try_start_0
    const-string v12, "activity"

    .line 1130
    invoke-virtual {p0, v12}, La2dp/Vol/service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1131
    .local v0, "act1":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1136
    .end local v0    # "act1":Landroid/app/ActivityManager;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    const-string v12, ""

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1179
    :cond_1
    :goto_1
    return v10

    .line 1132
    :catch_0
    move-exception v4

    .line 1133
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1138
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-le v12, v11, :cond_4

    .line 1140
    :try_start_1
    invoke-static {v2}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 1163
    .local v6, "i":Landroid/content/Intent;
    :cond_3
    :goto_2
    const/high16 v12, 0x10000000

    :try_start_2
    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 1170
    :goto_3
    :try_start_3
    invoke-virtual {p0, v6}, La2dp/Vol/service;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move v10, v11

    .line 1172
    goto :goto_1

    .line 1141
    .end local v6    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v4

    .line 1142
    .local v4, "e":Ljava/net/URISyntaxException;
    invoke-virtual {v4}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 1145
    .end local v4    # "e":Ljava/net/URISyntaxException;
    :cond_4
    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    .line 1146
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 1147
    .restart local v6    # "i":Landroid/content/Intent;
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string v12, ""

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    .line 1149
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1151
    :cond_5
    const-string v12, ""

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 1152
    invoke-virtual {v6, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 1156
    .end local v6    # "i":Landroid/content/Intent;
    :cond_6
    :try_start_4
    iget-object v12, p0, La2dp/Vol/service;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v12, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v6

    .restart local v6    # "i":Landroid/content/Intent;
    goto :goto_2

    .line 1157
    .end local v6    # "i":Landroid/content/Intent;
    :catch_2
    move-exception v4

    .line 1158
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1165
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "i":Landroid/content/Intent;
    :catch_3
    move-exception v5

    .line 1166
    .local v5, "e1":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1173
    .end local v5    # "e1":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 1174
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {p0}, La2dp/Vol/service;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f07005e

    invoke-static {v11, v12, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    .line 1176
    .local v9, "t":Landroid/widget/Toast;
    iget-boolean v11, p0, La2dp/Vol/service;->notify:Z

    if-eqz v11, :cond_7

    .line 1177
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 1178
    :cond_7
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setPVolume(I)I
    .locals 4
    .param p0, "inputVol"    # I

    .prologue
    const/4 v3, 0x0

    .line 1053
    if-gez p0, :cond_0

    .line 1054
    const/4 p0, 0x0

    .line 1055
    :cond_0
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-le p0, v1, :cond_1

    .line 1056
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    .line 1057
    :cond_1
    sget-boolean v1, La2dp/Vol/service;->hideVolUi:Z

    if-eqz v1, :cond_2

    .line 1058
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, p0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 1063
    :goto_0
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 1064
    .local v0, "outVol":I
    return v0

    .line 1061
    .end local v0    # "outVol":I
    :cond_2
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v3, p0, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0
.end method

.method public static setVolume(ILandroid/content/Context;)V
    .locals 8
    .param p0, "inputVol"    # I
    .param p1, "sender"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x3

    .line 985
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 986
    .local v0, "curvol":I
    if-gez p0, :cond_0

    .line 987
    const/4 p0, 0x0

    .line 988
    :cond_0
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    if-le p0, v1, :cond_1

    .line 989
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p0

    .line 991
    :cond_1
    sget-boolean v1, La2dp/Vol/service;->ramp_vol:Z

    if-eqz v1, :cond_2

    if-le p0, v0, :cond_2

    .line 992
    move v6, p0

    .line 994
    .local v6, "minputVol":I
    new-instance v1, La2dp/Vol/service$10;

    sub-int v2, p0, v0

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    invoke-direct/range {v1 .. v6}, La2dp/Vol/service$10;-><init>(JJI)V

    .line 1018
    invoke-virtual {v1}, La2dp/Vol/service$10;->start()Landroid/os/CountDownTimer;

    .line 1026
    .end local v6    # "minputVol":I
    :goto_0
    return-void

    .line 1020
    :cond_2
    const/4 v7, 0x0

    .line 1021
    .local v7, "ui":I
    sget-boolean v1, La2dp/Vol/service;->hideVolUi:Z

    if-eqz v1, :cond_3

    const/4 v7, 0x0

    .line 1023
    :goto_1
    sget-object v1, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v1, v2, p0, v7}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 1022
    :cond_3
    const/4 v7, 0x1

    goto :goto_1
.end method

.method private set_car_mode(Z)V
    .locals 4
    .param p1, "mode"    # Z

    .prologue
    const/4 v3, 0x1

    .line 1688
    :try_start_0
    const-string v2, "uimode"

    invoke-virtual {p0, v2}, La2dp/Vol/service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    .line 1689
    .local v1, "mm":Landroid/app/UiModeManager;
    if-eqz p1, :cond_0

    .line 1690
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/UiModeManager;->enableCarMode(I)V

    .line 1698
    .end local v1    # "mm":Landroid/app/UiModeManager;
    :goto_0
    return-void

    .line 1692
    .restart local v1    # "mm":Landroid/app/UiModeManager;
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/UiModeManager;->disableCarMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1694
    .end local v1    # "mm":Landroid/app/UiModeManager;
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1696
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateNot(ZLjava/lang/String;)V
    .locals 13
    .param p1, "connect"    # Z
    .param p2, "car"    # Ljava/lang/String;

    .prologue
    const v12, 0x7f070065

    const v11, 0x7f07005d

    const/4 v10, -0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1069
    move-object v4, p2

    .line 1070
    .local v4, "temp":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1071
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La2dp/Vol/service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1085
    :goto_0
    if-eqz p1, :cond_5

    .line 1087
    const/4 v2, 0x0

    .line 1088
    .local v2, "not":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v6, La2dp/Vol/main;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1089
    .local v3, "notificationIntent":Landroid/content/Intent;
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1091
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v7, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-direct {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 1093
    invoke-virtual {p0}, La2dp/Vol/service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 1094
    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    iget v7, p0, La2dp/Vol/service;->connectedIcon:I

    .line 1095
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 1096
    invoke-virtual {v6, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1097
    iget-object v6, p0, La2dp/Vol/service;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1116
    .end local v0    # "contentIntent":Landroid/app/PendingIntent;
    .end local v2    # "not":Landroid/app/Notification;
    .end local v3    # "notificationIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 1073
    :cond_1
    sget-object v6, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-lez v6, :cond_4

    .line 1074
    const/4 v5, 0x0

    .line 1075
    .local v5, "tmp":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    sget-object v6, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 1076
    sget-object v6, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v6, v6, v1

    if-eqz v6, :cond_2

    .line 1077
    sget-object v6, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v6, v6, v1

    invoke-virtual {v6}, La2dp/Vol/btDevice;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1075
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1079
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, La2dp/Vol/service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1081
    const/4 p1, 0x1

    .line 1082
    goto :goto_0

    .line 1083
    .end local v1    # "k":I
    .end local v5    # "tmp":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, La2dp/Vol/service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070050

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1099
    :cond_5
    iget-object v6, p0, La2dp/Vol/service;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v9}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1101
    sget-object v6, La2dp/Vol/service;->notify_pref:Ljava/lang/String;

    const-string v7, "always"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1102
    const/4 v2, 0x0

    .line 1103
    .restart local v2    # "not":Landroid/app/Notification;
    new-instance v3, Landroid/content/Intent;

    const-class v6, La2dp/Vol/main;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1104
    .restart local v3    # "notificationIntent":Landroid/content/Intent;
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1106
    .restart local v0    # "contentIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification$Builder;

    sget-object v7, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1108
    invoke-virtual {p0}, La2dp/Vol/service;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1107
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1109
    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v7, 0x7f020002

    .line 1110
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1111
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 1112
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 1113
    iget-object v6, p0, La2dp/Vol/service;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected DoConnected(La2dp/Vol/btDevice;)V
    .locals 25
    .param p1, "bt2"    # La2dp/Vol/btDevice;

    .prologue
    .line 568
    const/16 v17, 0x0

    .line 569
    .local v17, "done":Z
    const/16 v21, 0x0

    .line 571
    .local v21, "l":I
    const/16 v20, 0x0

    .local v20, "k":I
    :goto_0
    sget-object v2, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    array-length v2, v2

    move/from16 v0, v20

    if-ge v0, v2, :cond_1

    .line 572
    sget-object v2, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v2, v2, v20

    if-eqz v2, :cond_0

    .line 573
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    sget-object v3, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v3, v3, v20

    invoke-virtual {v3}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    move/from16 v21, v20

    .line 575
    const/16 v17, 0x1

    .line 571
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 579
    :cond_1
    if-nez v17, :cond_5

    .line 581
    :cond_2
    sget-object v2, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v2, v2, v21

    if-nez v2, :cond_3

    .line 582
    sget-object v2, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aput-object p1, v2, v21

    .line 583
    const/16 v17, 0x1

    .line 585
    :cond_3
    add-int/lit8 v21, v21, 0x1

    .line 586
    sget-object v2, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    array-length v2, v2

    move/from16 v0, v21

    if-lt v0, v2, :cond_4

    .line 587
    const/16 v17, 0x1

    .line 588
    :cond_4
    if-eqz v17, :cond_2

    .line 590
    :cond_5
    invoke-direct/range {p0 .. p0}, La2dp/Vol/service;->getConnects()V

    .line 591
    sget-object v2, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_6

    .line 592
    invoke-direct/range {p0 .. p0}, La2dp/Vol/service;->getOldvol()V

    .line 593
    invoke-direct/range {p0 .. p0}, La2dp/Vol/service;->getOldPvol()V

    .line 594
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/service;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/service;->oldwifistate:Z

    .line 595
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/service;->locmanager:Landroid/location/LocationManager;

    const-string v3, "gps"

    .line 596
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/service;->oldgpsstate:Z

    .line 599
    :cond_6
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getIcon()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, La2dp/Vol/service;->connectedIcon:I

    .line 600
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getSmsstream()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, La2dp/Vol/service;->SMSstream:I

    .line 601
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getVoldelay()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, La2dp/Vol/service;->vol_delay:J

    .line 602
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getSmsdelay()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    move-object/from16 v0, p0

    iput-wide v2, v0, La2dp/Vol/service;->SMS_delay:J

    .line 603
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isVolramp()Z

    move-result v2

    sput-boolean v2, La2dp/Vol/service;->ramp_vol:Z

    .line 605
    move-object/from16 v0, p1

    iget-boolean v2, v0, La2dp/Vol/btDevice;->wifi:Z

    if-eqz v2, :cond_7

    .line 607
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/service;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/service;->oldwifistate:Z

    .line 608
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, La2dp/Vol/service;->dowifi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_7
    :goto_1
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x11

    if-ne v2, v3, :cond_8

    .line 617
    move-object/from16 v24, p1

    .line 618
    .local v24, "tempBT":La2dp/Vol/btDevice;
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v2

    sput-object v2, La2dp/Vol/service;->DeviceToConnect:Ljava/lang/String;

    .line 619
    sget-object v2, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/service;->getIBluetoothA2dp(Landroid/content/Context;)V

    .line 622
    .end local v24    # "tempBT":La2dp/Vol/btDevice;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, La2dp/Vol/service;->notify:Z

    if-eqz v2, :cond_9

    .line 623
    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, La2dp/Vol/service;->updateNot(ZLjava/lang/String;)V

    .line 624
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, La2dp/Vol/service;->toasts:Z

    if-eqz v2, :cond_a

    .line 625
    sget-object v2, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 632
    :cond_a
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->hasIntent()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 633
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/service;->tm:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_12

    .line 634
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/service;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-nez v2, :cond_b

    .line 635
    invoke-direct/range {p0 .. p1}, La2dp/Vol/service;->runApp(La2dp/Vol/btDevice;)Z

    .line 641
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, La2dp/Vol/service;->enableGTalk:Z

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isEnableTTS()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 642
    new-instance v2, Landroid/speech/tts/TextToSpeech;

    sget-object v3, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, p0

    iget-object v4, v0, La2dp/Vol/service;->listenerStarted:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v2, v3, v4}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/service;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 643
    new-instance v22, Landroid/content/IntentFilter;

    const-string v2, "a2dp.vol.service.MESSAGE"

    move-object/from16 v0, v22

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 645
    .local v22, "messageFilter":Landroid/content/IntentFilter;
    sget-object v2, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/service;->tmessage:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v22

    invoke-virtual {v2, v3, v0}, La2dp/Vol/MyApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 646
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/service;->tmessageRegistered:Z

    .line 647
    new-instance v23, Landroid/content/IntentFilter;

    const-string v2, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 648
    .local v23, "sco_filter":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/service;->sco_change:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, La2dp/Vol/service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 649
    const/4 v2, 0x1

    sput-boolean v2, La2dp/Vol/service;->talk:Z

    .line 651
    .end local v22    # "messageFilter":Landroid/content/IntentFilter;
    .end local v23    # "sco_filter":Landroid/content/IntentFilter;
    :cond_c
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isEnableTTS()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-boolean v2, v0, La2dp/Vol/service;->enableSMS:Z

    if-eqz v2, :cond_d

    .line 652
    sget-object v2, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/service;->SMScatcher:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, La2dp/Vol/MyApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    :cond_d
    const-string v9, "a2dp.Vol.main.RELOAD_LIST"

    .line 657
    .local v9, "Ireload":Ljava/lang/String;
    new-instance v19, Landroid/content/Intent;

    invoke-direct/range {v19 .. v19}, Landroid/content/Intent;-><init>()V

    .line 658
    .local v19, "itent":Landroid/content/Intent;
    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    const-string v2, "connect"

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    sget-object v2, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 661
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/service;->connecting:Z

    .line 663
    sget-object v2, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "a2dp.Vol.Clear"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 665
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isSetpv()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 666
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getPhonev()I

    move-result v8

    .line 667
    .local v8, "vol1":I
    new-instance v2, La2dp/Vol/service$6;

    move-object/from16 v0, p0

    iget-wide v4, v0, La2dp/Vol/service;->vol_delay:J

    const-wide/16 v6, 0x1f4

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, La2dp/Vol/service;->vol_delay:J

    const-wide/16 v10, 0x1f4

    add-long/2addr v6, v10

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, La2dp/Vol/service$6;-><init>(La2dp/Vol/service;JJI)V

    .line 679
    invoke-virtual {v2}, La2dp/Vol/service$6;->start()Landroid/os/CountDownTimer;

    .line 682
    .end local v8    # "vol1":I
    :cond_e
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isSilent()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 683
    sget-object v2, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 685
    :cond_f
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isSetV()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 686
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getDefVol()I

    move-result v16

    .line 687
    .local v16, "vol":I
    new-instance v10, La2dp/Vol/service$7;

    move-object/from16 v0, p0

    iget-wide v12, v0, La2dp/Vol/service;->vol_delay:J

    move-object/from16 v0, p0

    iget-wide v14, v0, La2dp/Vol/service;->vol_delay:J

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, La2dp/Vol/service$7;-><init>(La2dp/Vol/service;JJI)V

    .line 699
    invoke-virtual {v10}, La2dp/Vol/service$7;->start()Landroid/os/CountDownTimer;

    .line 702
    .end local v16    # "vol":I
    :cond_10
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isCarmode()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 703
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, La2dp/Vol/service;->set_car_mode(Z)V

    .line 706
    :cond_11
    return-void

    .line 609
    .end local v9    # "Ireload":Ljava/lang/String;
    .end local v19    # "itent":Landroid/content/Intent;
    :catch_0
    move-exception v18

    .line 610
    .local v18, "e":Ljava/lang/Exception;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    const-string v2, "A2DP_Volume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 637
    .end local v18    # "e":Ljava/lang/Exception;
    :cond_12
    invoke-direct/range {p0 .. p1}, La2dp/Vol/service;->runApp(La2dp/Vol/btDevice;)Z

    goto/16 :goto_2
.end method

.method protected DoDisconnected(La2dp/Vol/btDevice;)V
    .locals 21
    .param p1, "bt2"    # La2dp/Vol/btDevice;

    .prologue
    .line 769
    sget-object v3, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v10

    .line 771
    .local v10, "SavVol":I
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->hasIntent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 773
    sget-object v3, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    new-instance v15, Landroid/content/Intent;

    const-string v3, "com.android.music.musicservicecommand"

    invoke-direct {v15, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v15, "i":Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "pause"

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 777
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, La2dp/Vol/service;->sendBroadcast(Landroid/content/Intent;)V

    .line 780
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 781
    .local v17, "j":Landroid/content/Intent;
    const-string v3, "state"

    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 783
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, La2dp/Vol/service;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    :goto_0
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_BUTTON"

    const/4 v4, 0x0

    invoke-direct {v13, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 791
    .local v13, "downIntent2":Landroid/content/Intent;
    new-instance v12, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    const/16 v4, 0x56

    invoke-direct {v12, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 793
    .local v12, "downEvent2":Landroid/view/KeyEvent;
    const-string v3, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v13, v3, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 794
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, La2dp/Vol/service;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 798
    .end local v12    # "downEvent2":Landroid/view/KeyEvent;
    .end local v13    # "downIntent2":Landroid/content/Intent;
    .end local v15    # "i":Landroid/content/Intent;
    .end local v17    # "j":Landroid/content/Intent;
    :cond_0
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getPname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isAppkill()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 801
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 802
    .local v20, "startMain":Landroid/content/Intent;
    const-string v3, "android.intent.category.HOME"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 803
    const/high16 v3, 0x10000000

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 804
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, La2dp/Vol/service;->startActivity(Landroid/content/Intent;)V

    .line 807
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getPname()Ljava/lang/String;

    move-result-object v8

    .line 808
    .local v8, "kpackage":Ljava/lang/String;
    new-instance v2, La2dp/Vol/service$9;

    const-wide/16 v4, 0xbb8

    const-wide/16 v6, 0xbb8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v8}, La2dp/Vol/service$9;-><init>(La2dp/Vol/service;JJLjava/lang/String;)V

    .line 878
    .local v2, "killTimer":Landroid/os/CountDownTimer;
    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 884
    .end local v2    # "killTimer":Landroid/os/CountDownTimer;
    .end local v8    # "kpackage":Ljava/lang/String;
    .end local v20    # "startMain":Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isGetLoc()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 885
    new-instance v11, Landroid/content/Intent;

    const-class v3, La2dp/Vol/StoreLoc;

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 886
    .local v11, "dolock":Landroid/content/Intent;
    const-string v3, "device"

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 888
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, La2dp/Vol/service;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 895
    .end local v11    # "dolock":Landroid/content/Intent;
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget-boolean v3, v0, La2dp/Vol/btDevice;->wifi:Z

    if-eqz v3, :cond_3

    .line 896
    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->oldwifistate:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, La2dp/Vol/service;->dowifi(Z)V

    .line 900
    :cond_3
    const/16 v18, 0x0

    .local v18, "k":I
    :goto_2
    sget-object v3, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    array-length v3, v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_5

    .line 901
    sget-object v3, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v3, v3, v18

    if-eqz v3, :cond_4

    .line 902
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    sget-object v4, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v4, v4, v18

    invoke-virtual {v4}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 903
    sget-object v3, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    const/4 v4, 0x0

    aput-object v4, v3, v18

    .line 900
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 784
    .end local v18    # "k":I
    .restart local v15    # "i":Landroid/content/Intent;
    .restart local v17    # "j":Landroid/content/Intent;
    :catch_0
    move-exception v14

    .line 786
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 889
    .end local v14    # "e":Ljava/lang/Exception;
    .end local v15    # "i":Landroid/content/Intent;
    .end local v17    # "j":Landroid/content/Intent;
    .restart local v11    # "dolock":Landroid/content/Intent;
    :catch_1
    move-exception v14

    .line 891
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 905
    .end local v11    # "dolock":Landroid/content/Intent;
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v18    # "k":I
    :cond_5
    invoke-direct/range {p0 .. p0}, La2dp/Vol/service;->getConnects()V

    .line 906
    if-eqz p1, :cond_6

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isSetV()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    if-nez p1, :cond_8

    .line 907
    :cond_7
    sget-boolean v3, La2dp/Vol/service;->mvolsLeft:Z

    if-nez v3, :cond_8

    .line 908
    sget-object v3, La2dp/Vol/service;->OldVol2:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-static {v3, v4}, La2dp/Vol/service;->setVolume(ILandroid/content/Context;)V

    .line 909
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isSetpv()Z

    move-result v3

    if-nez v3, :cond_a

    :cond_9
    if-nez p1, :cond_b

    .line 910
    :cond_a
    sget-boolean v3, La2dp/Vol/service;->pvolsLeft:Z

    if-nez v3, :cond_b

    .line 911
    sget-object v3, La2dp/Vol/service;->OldVol:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, La2dp/Vol/service;->setPVolume(I)I

    .line 912
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->notify:Z

    if-eqz v3, :cond_c

    move-object/from16 v0, p1

    iget-object v3, v0, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 913
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, La2dp/Vol/service;->updateNot(ZLjava/lang/String;)V

    .line 914
    :cond_c
    sget-boolean v3, La2dp/Vol/service;->mTtsReady:Z

    if-eqz v3, :cond_10

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isEnableTTS()Z

    move-result v3

    if-nez v3, :cond_d

    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->enableGTalk:Z

    if-nez v3, :cond_d

    sget-object v3, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_10

    .line 916
    :cond_d
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->clearedTts:Z

    if-nez v3, :cond_e

    .line 917
    invoke-direct/range {p0 .. p0}, La2dp/Vol/service;->clearTts()V

    .line 919
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/service;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 920
    const/4 v3, 0x0

    sput-boolean v3, La2dp/Vol/service;->mTtsReady:Z

    .line 921
    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->enableGTalk:Z

    if-eqz v3, :cond_f

    .line 922
    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/service;->sco_change:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 923
    const/4 v3, 0x0

    sput-boolean v3, La2dp/Vol/service;->talk:Z

    .line 925
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->enableSMS:Z

    if-eqz v3, :cond_10

    sget-object v3, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, p0

    iget-object v4, v0, La2dp/Vol/service;->SMScatcher:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, La2dp/Vol/MyApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 938
    :cond_10
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->tmessageRegistered:Z

    if-eqz v3, :cond_11

    .line 940
    :try_start_3
    sget-object v3, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, p0

    iget-object v4, v0, La2dp/Vol/service;->tmessage:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, La2dp/Vol/MyApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 941
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, La2dp/Vol/service;->tmessageRegistered:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 948
    :cond_11
    :goto_4
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isSilent()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 949
    sget-object v3, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    const/4 v4, 0x5

    sget-object v5, La2dp/Vol/service;->Oldsilent:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 951
    :cond_12
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x11

    if-ne v3, v4, :cond_14

    .line 952
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v19

    .line 953
    .local v19, "mBTA":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v19, :cond_14

    .line 954
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-boolean v3, v0, La2dp/Vol/service;->bluetoothWasOff:Z

    if-eqz v3, :cond_13

    .line 956
    invoke-virtual/range {v19 .. v19}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 959
    :cond_13
    sget-object v3, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-static {v3}, La2dp/Vol/service;->doUnbind(Landroid/content/Context;)V

    .line 963
    .end local v19    # "mBTA":Landroid/bluetooth/BluetoothAdapter;
    :cond_14
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isAutovol()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 964
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, La2dp/Vol/btDevice;->setDefVol(I)V

    .line 965
    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/service;->DB:La2dp/Vol/DeviceDB;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, La2dp/Vol/DeviceDB;->update(La2dp/Vol/btDevice;)V

    .line 967
    :cond_15
    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->isCarmode()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 968
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, La2dp/Vol/service;->set_car_mode(Z)V

    .line 971
    :cond_16
    const-string v9, "a2dp.Vol.main.RELOAD_LIST"

    .line 972
    .local v9, "Ireload":Ljava/lang/String;
    new-instance v16, Landroid/content/Intent;

    invoke-direct/range {v16 .. v16}, Landroid/content/Intent;-><init>()V

    .line 973
    .local v16, "itent":Landroid/content/Intent;
    const-string v3, "a2dp.Vol.main.RELOAD_LIST"

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    const-string v3, "disconnect"

    invoke-virtual/range {p1 .. p1}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    sget-object v3, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 978
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, La2dp/Vol/service;->disconnecting:Z

    .line 979
    return-void

    .line 930
    .end local v9    # "Ireload":Ljava/lang/String;
    .end local v16    # "itent":Landroid/content/Intent;
    :catch_2
    move-exception v14

    .line 933
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 942
    .end local v14    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v14

    .line 944
    .restart local v14    # "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4
.end method

.method public TextReader(Ljava/lang/String;)V
    .locals 12
    .param p1, "rawinput"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1355
    sget-boolean v0, La2dp/Vol/service;->mTtsReady:Z

    if-eqz v0, :cond_0

    .line 1356
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, La2dp/Vol/service;->myHash:Ljava/util/HashMap;

    .line 1358
    if-nez p1, :cond_1

    .line 1359
    sget-object v0, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    const-string v1, "No input"

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1444
    :cond_0
    :goto_0
    return-void

    .line 1363
    :cond_1
    const-string v0, "http.*? "

    const-string v1, ", URL, "

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1365
    .local v8, "input":Ljava/lang/String;
    iget-object v0, p0, La2dp/Vol/service;->myHash:Ljava/util/HashMap;

    const-string v1, "utteranceId"

    const-string v2, "A2DP_Vol"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, La2dp/Vol/service;->MAX_MESSAGE_LENGTH:I

    if-le v0, v1, :cond_2

    .line 1369
    iget v0, p0, La2dp/Vol/service;->MAX_MESSAGE_LENGTH:I

    invoke-virtual {v8, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , , , message truncated"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1373
    :cond_2
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    iput-boolean v0, p0, La2dp/Vol/service;->musicWasPlaying:Z

    .line 1375
    iget v0, p0, La2dp/Vol/service;->SMSstream:I

    packed-switch v0, :pswitch_data_0

    .line 1415
    :goto_1
    move-object v6, v8

    .line 1416
    .local v6, "str":Ljava/lang/String;
    iget-boolean v0, p0, La2dp/Vol/service;->toasts:Z

    if-eqz v0, :cond_3

    .line 1417
    sget-object v0, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-static {v0, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1419
    :cond_3
    iget-object v0, p0, La2dp/Vol/service;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_0

    .line 1421
    new-instance v0, La2dp/Vol/service$13;

    iget-wide v2, p0, La2dp/Vol/service;->SMS_delay:J

    iget-wide v4, p0, La2dp/Vol/service;->SMS_delay:J

    const-wide/16 v10, 0x2

    div-long/2addr v4, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, La2dp/Vol/service$13;-><init>(La2dp/Vol/service;JJLjava/lang/String;)V

    .line 1440
    invoke-virtual {v0}, La2dp/Vol/service$13;->start()Landroid/os/CountDownTimer;

    goto :goto_0

    .line 1377
    .end local v6    # "str":Ljava/lang/String;
    :pswitch_0
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1378
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 1381
    :cond_4
    iget-boolean v0, p0, La2dp/Vol/service;->musicWasPlaying:Z

    if-eqz v0, :cond_5

    .line 1383
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.android.music.musicservicecommand"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1385
    .local v7, "i":Landroid/content/Intent;
    const-string v0, "command"

    const-string v1, "pause"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1386
    invoke-virtual {p0, v7}, La2dp/Vol/service;->sendBroadcast(Landroid/content/Intent;)V

    .line 1389
    .end local v7    # "i":Landroid/content/Intent;
    :cond_5
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1392
    iget-object v0, p0, La2dp/Vol/service;->myHash:Ljava/util/HashMap;

    const-string v1, "streamType"

    .line 1393
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1392
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    iput-boolean v3, p0, La2dp/Vol/service;->clearedTts:Z

    goto :goto_1

    .line 1398
    :pswitch_1
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v9, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1401
    iget-object v0, p0, La2dp/Vol/service;->myHash:Ljava/util/HashMap;

    const-string v1, "streamType"

    .line 1402
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1401
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    iput-boolean v3, p0, La2dp/Vol/service;->clearedTts:Z

    goto :goto_1

    .line 1406
    :pswitch_2
    sget-object v0, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    invoke-virtual {v0, p0, v10, v5}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1409
    iget-object v0, p0, La2dp/Vol/service;->myHash:Ljava/util/HashMap;

    const-string v1, "streamType"

    .line 1410
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1409
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iput-boolean v3, p0, La2dp/Vol/service;->clearedTts:Z

    goto/16 :goto_1

    .line 1375
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getIBluetoothA2dp(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1217
    new-instance v1, Landroid/content/Intent;

    const-class v2, Landroid/bluetooth/IBluetoothA2dp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1221
    .local v1, "i":Landroid/content/Intent;
    invoke-virtual {p0}, La2dp/Vol/service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 1222
    .local v0, "filter":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1224
    sget-object v2, La2dp/Vol/service;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1227
    :cond_0
    const-string v2, "start service connection failed"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 0
    .param p1, "focusChange"    # I

    .prologue
    .line 1574
    packed-switch p1, :pswitch_data_0

    .line 1592
    :pswitch_0
    return-void

    .line 1574
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 160
    invoke-virtual {p0}, La2dp/Vol/service;->getApplication()Landroid/app/Application;

    move-result-object v7

    check-cast v7, La2dp/Vol/MyApplication;

    sput-object v7, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    .line 165
    :try_start_0
    sget-object v7, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    .line 166
    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    .line 168
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "car_mode"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->carMode:Z

    .line 169
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "home_dock"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->homeDock:Z

    .line 170
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "headset"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->headsetPlug:Z

    .line 171
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "power"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->power:Z

    .line 172
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "toasts"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->toasts:Z

    .line 174
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "enableTTS"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->enableSMS:Z

    .line 175
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "enableGTalk"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->enableGTalk:Z

    .line 176
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "notify_pref"

    const-string v9, "always"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, La2dp/Vol/service;->notify_pref:Ljava/lang/String;

    .line 177
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "hideVolUi"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    sput-boolean v7, La2dp/Vol/service;->hideVolUi:Z

    .line 179
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "gpsTime"

    const-string v9, "15000"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, La2dp/Vol/service;->MAX_TIME:J

    .line 183
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "gpsDistance"

    const-string v9, "10"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iput v7, p0, La2dp/Vol/service;->MAX_ACC:F

    .line 185
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "useLocalStorage"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, La2dp/Vol/service;->local:Z

    .line 186
    iget-boolean v7, p0, La2dp/Vol/service;->local:Z

    if-eqz v7, :cond_3

    .line 187
    invoke-virtual {p0}, La2dp/Vol/service;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, La2dp/Vol/service;->a2dpDir:Ljava/lang/String;

    .line 192
    :goto_0
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "old_vol"

    const/16 v9, 0xa

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, La2dp/Vol/service;->OldVol2:Ljava/lang/Integer;

    .line 193
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "old_phone_vol"

    const/4 v9, 0x5

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, La2dp/Vol/service;->OldVol:Ljava/lang/Integer;

    .line 194
    iget-object v7, p0, La2dp/Vol/service;->preferences:Landroid/content/SharedPreferences;

    const-string v8, "oldsilent"

    const/16 v9, 0xa

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, La2dp/Vol/service;->Oldsilent:Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_1
    invoke-direct {p0}, La2dp/Vol/service;->registerRecievers()V

    .line 208
    const-string v7, "audio"

    invoke-virtual {p0, v7}, La2dp/Vol/service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    sput-object v7, La2dp/Vol/service;->am2:Landroid/media/AudioManager;

    .line 211
    new-instance v7, La2dp/Vol/DeviceDB;

    sget-object v8, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-direct {v7, v8}, La2dp/Vol/DeviceDB;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, La2dp/Vol/service;->DB:La2dp/Vol/DeviceDB;

    .line 213
    invoke-virtual {p0}, La2dp/Vol/service;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, La2dp/Vol/service;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 216
    invoke-virtual {p0}, La2dp/Vol/service;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "location"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationManager;

    iput-object v7, p0, La2dp/Vol/service;->locmanager:Landroid/location/LocationManager;

    .line 218
    sget-object v7, La2dp/Vol/service;->notify_pref:Ljava/lang/String;

    const-string v8, "always"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, La2dp/Vol/service;->notify_pref:Ljava/lang/String;

    const-string v8, "connected_only"

    .line 219
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 220
    :cond_0
    iput-boolean v11, p0, La2dp/Vol/service;->notify:Z

    .line 224
    :goto_2
    iget-boolean v7, p0, La2dp/Vol/service;->notify:Z

    if-eqz v7, :cond_1

    .line 226
    const-string v6, "notification"

    .line 227
    .local v6, "ns":Ljava/lang/String;
    invoke-virtual {p0, v6}, La2dp/Vol/service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    iput-object v7, p0, La2dp/Vol/service;->mNotificationManager:Landroid/app/NotificationManager;

    .line 229
    new-instance v5, Landroid/content/Intent;

    const-class v7, La2dp/Vol/main;

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v5, "notificationIntent":Landroid/content/Intent;
    invoke-static {p0, v10, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 234
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v7, Landroid/app/Notification$Builder;

    sget-object v8, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-direct {v7, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    invoke-virtual {p0}, La2dp/Vol/service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f07005d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 235
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 237
    invoke-virtual {v7, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v7

    const v8, 0x7f020002

    .line 238
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v7

    .line 240
    invoke-virtual {p0}, La2dp/Vol/service;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070050

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 239
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v7

    const/4 v8, -0x2

    .line 241
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    .line 244
    .local v4, "not":Landroid/app/Notification;
    sget-object v7, La2dp/Vol/service;->notify_pref:Ljava/lang/String;

    const-string v8, "always"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 245
    iget-object v7, p0, La2dp/Vol/service;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v7, v11, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 246
    invoke-virtual {p0, v11, v4}, La2dp/Vol/service;->startForeground(ILandroid/app/Notification;)V

    .line 250
    .end local v1    # "contentIntent":Landroid/app/PendingIntent;
    .end local v4    # "not":Landroid/app/Notification;
    .end local v5    # "notificationIntent":Landroid/content/Intent;
    .end local v6    # "ns":Ljava/lang/String;
    :cond_1
    sput-boolean v11, La2dp/Vol/service;->run:Z

    .line 252
    iget-boolean v7, p0, La2dp/Vol/service;->toasts:Z

    if-eqz v7, :cond_2

    .line 253
    const v7, 0x7f070051

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    .line 254
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 256
    :cond_2
    const-string v0, "a2dp.vol.service.RUNNING"

    .line 257
    .local v0, "IRun":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 258
    .local v3, "i":Landroid/content/Intent;
    const-string v7, "a2dp.vol.service.RUNNING"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    sget-object v7, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-virtual {v7, v3}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 261
    const-string v7, "phone"

    invoke-virtual {p0, v7}, La2dp/Vol/service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    iput-object v7, p0, La2dp/Vol/service;->tm:Landroid/telephony/TelephonyManager;

    .line 263
    invoke-virtual {p0}, La2dp/Vol/service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, p0, La2dp/Vol/service;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 280
    return-void

    .line 189
    .end local v0    # "IRun":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_3
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/A2DPVol"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, La2dp/Vol/service;->a2dpDir:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/NumberFormatException;
    const/high16 v7, 0x41200000    # 10.0f

    iput v7, p0, La2dp/Vol/service;->MAX_ACC:F

    .line 198
    const-wide/16 v8, 0x3a98

    iput-wide v8, p0, La2dp/Vol/service;->MAX_TIME:J

    .line 199
    const-string v7, "prefs failed to load "

    invoke-static {p0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 200
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    .line 201
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 202
    const-string v7, "A2DP_Volume"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "prefs failed to load "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 222
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    iput-boolean v10, p0, La2dp/Vol/service;->notify:Z

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 336
    sput-boolean v3, La2dp/Vol/service;->run:Z

    .line 338
    new-instance v3, Landroid/content/Intent;

    sget-object v4, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    const-class v5, La2dp/Vol/StoreLoc;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v3}, La2dp/Vol/service;->stopService(Landroid/content/Intent;)Z

    .line 341
    :try_start_0
    iget-object v3, p0, La2dp/Vol/service;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 342
    iget-object v3, p0, La2dp/Vol/service;->mReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 343
    iget-object v3, p0, La2dp/Vol/service;->btOFFReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 344
    iget-boolean v3, p0, La2dp/Vol/service;->headsetPlug:Z

    if-eqz v3, :cond_0

    .line 345
    iget-object v3, p0, La2dp/Vol/service;->headSetReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 347
    :cond_0
    sget-boolean v3, La2dp/Vol/service;->mTtsReady:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    .line 349
    :try_start_1
    iget-boolean v3, p0, La2dp/Vol/service;->clearedTts:Z

    if-nez v3, :cond_1

    .line 350
    invoke-direct {p0}, La2dp/Vol/service;->clearTts()V

    .line 352
    :cond_1
    iget-object v3, p0, La2dp/Vol/service;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v3}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 353
    const/4 v3, 0x0

    sput-boolean v3, La2dp/Vol/service;->mTtsReady:Z

    .line 354
    iget-object v3, p0, La2dp/Vol/service;->SMScatcher:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    iget-object v3, p0, La2dp/Vol/service;->sco_change:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 356
    iget-object v3, p0, La2dp/Vol/service;->tmessage:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 363
    :cond_2
    :goto_0
    :try_start_2
    iget-object v3, p0, La2dp/Vol/service;->DB:La2dp/Vol/DeviceDB;

    invoke-virtual {v3}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 364
    iget-object v3, p0, La2dp/Vol/service;->messageClear:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, La2dp/Vol/service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 371
    :goto_1
    const-string v0, "a2dp.vol.service.STOPPED_RUNNING"

    .line 372
    .local v0, "IStop":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 373
    .local v2, "i":Landroid/content/Intent;
    const-string v3, "a2dp.vol.service.STOPPED_RUNNING"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    sget-object v3, La2dp/Vol/service;->application:La2dp/Vol/MyApplication;

    invoke-virtual {v3, v2}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V

    .line 378
    iget-boolean v3, p0, La2dp/Vol/service;->toasts:Z

    if-eqz v3, :cond_3

    .line 379
    const v3, 0x7f070052

    invoke-static {p0, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    .line 380
    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 381
    :cond_3
    sget-boolean v3, La2dp/Vol/service;->mIsBound:Z

    if-eqz v3, :cond_4

    .line 389
    :cond_4
    invoke-virtual {p0, v6}, La2dp/Vol/service;->stopForeground(Z)V

    .line 390
    return-void

    .line 359
    .end local v0    # "IStop":Ljava/lang/String;
    .end local v2    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 360
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 366
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 367
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    const/4 v0, 0x1

    sput-boolean v0, La2dp/Vol/service;->run:Z

    .line 395
    iput-boolean v1, p0, La2dp/Vol/service;->connecting:Z

    .line 396
    iput-boolean v1, p0, La2dp/Vol/service;->disconnecting:Z

    .line 397
    iget-boolean v0, p0, La2dp/Vol/service;->notify:Z

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, La2dp/Vol/service;->updateNot(ZLjava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 63
    const-string v0, "phone"

    invoke-virtual {p0, v0}, La2dp/Vol/service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, La2dp/Vol/service;->tm:Landroid/telephony/TelephonyManager;

    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method protected stopApp(Ljava/lang/String;)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1185
    invoke-virtual {p0}, La2dp/Vol/service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1187
    .local v4, "mIntent":Landroid/content/Intent;
    if-eqz v4, :cond_2

    .line 1190
    :try_start_0
    const-string v7, "activity"

    .line 1191
    invoke-virtual {p0, v7}, La2dp/Vol/service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1192
    .local v0, "act1":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 1194
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 1195
    .local v5, "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1196
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_0

    .line 1197
    iget-object v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1198
    iget v8, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1196
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1202
    .end local v0    # "act1":Landroid/app/ActivityManager;
    .end local v2    # "i":I
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "processes":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v1

    .line 1203
    .local v1, "err":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 1204
    invoke-virtual {p0}, La2dp/Vol/service;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f07005e

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 1206
    .local v6, "t":Landroid/widget/Toast;
    iget-boolean v7, p0, La2dp/Vol/service;->notify:Z

    if-eqz v7, :cond_2

    .line 1207
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1211
    .end local v1    # "err":Landroid/content/ActivityNotFoundException;
    .end local v6    # "t":Landroid/widget/Toast;
    :cond_2
    return-void
.end method
