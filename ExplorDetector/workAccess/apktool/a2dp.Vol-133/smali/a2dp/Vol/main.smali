.class public La2dp/Vol/main;
.super Landroid/app/Activity;
.source "main.java"


# static fields
.field static final CHECK_TTS:I = 0x3

.field static final EDITED_DATA:I = 0x4

.field static final ENABLE_BLUETOOTH:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "A2DP_Volume"

.field public static final PREFS_NAME:Ljava/lang/String; = "btVol"

.field static final RELOAD:I = 0x2

.field static am:Landroid/media/AudioManager;

.field private static resourceID:I

.field static serv:Landroid/widget/Button;


# instance fields
.field TTSignore:Z

.field private a2dpDir:Ljava/lang/String;

.field activebt:Ljava/lang/String;

.field private application:La2dp/Vol/MyApplication;

.field carMode:Z

.field connects:I

.field enableTTS:Z

.field headsetPlug:Z

.field homeDock:Z

.field ladapt:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lstring:[Ljava/lang/String;

.field lvl:Landroid/widget/ListView;

.field private final mReceiver5:Landroid/content/BroadcastReceiver;

.field private final mReceiver6:Landroid/content/BroadcastReceiver;

.field private myDB:La2dp/Vol/DeviceDB;

.field power:Z

.field preferences:Landroid/content/SharedPreferences;

.field res:Landroid/content/res/Resources;

.field private final sRunning:Landroid/content/BroadcastReceiver;

.field servrun:Z

.field toasts:Z

.field vec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "La2dp/Vol/btDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, La2dp/Vol/main;->am:Landroid/media/AudioManager;

    .line 80
    const v0, 0x1090003

    sput v0, La2dp/Vol/main;->resourceID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-boolean v1, p0, La2dp/Vol/main;->servrun:Z

    .line 56
    iput-object v2, p0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    .line 60
    iput-object v2, p0, La2dp/Vol/main;->activebt:Ljava/lang/String;

    .line 64
    iput-object v2, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    .line 71
    iput-boolean v1, p0, La2dp/Vol/main;->carMode:Z

    .line 72
    iput-boolean v1, p0, La2dp/Vol/main;->homeDock:Z

    .line 73
    iput-boolean v1, p0, La2dp/Vol/main;->headsetPlug:Z

    .line 74
    iput-boolean v1, p0, La2dp/Vol/main;->power:Z

    .line 75
    iput-boolean v1, p0, La2dp/Vol/main;->enableTTS:Z

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/main;->toasts:Z

    .line 77
    iput-boolean v1, p0, La2dp/Vol/main;->TTSignore:Z

    .line 78
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/main;->a2dpDir:Ljava/lang/String;

    .line 963
    new-instance v0, La2dp/Vol/main$11;

    invoke-direct {v0, p0}, La2dp/Vol/main$11;-><init>(La2dp/Vol/main;)V

    iput-object v0, p0, La2dp/Vol/main;->mReceiver5:Landroid/content/BroadcastReceiver;

    .line 975
    new-instance v0, La2dp/Vol/main$12;

    invoke-direct {v0, p0}, La2dp/Vol/main$12;-><init>(La2dp/Vol/main;)V

    iput-object v0, p0, La2dp/Vol/main;->mReceiver6:Landroid/content/BroadcastReceiver;

    .line 1037
    new-instance v0, La2dp/Vol/main$13;

    invoke-direct {v0, p0}, La2dp/Vol/main$13;-><init>(La2dp/Vol/main;)V

    iput-object v0, p0, La2dp/Vol/main;->sRunning:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(La2dp/Vol/main;)La2dp/Vol/DeviceDB;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;

    .prologue
    .line 51
    iget-object v0, p0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    return-object v0
.end method

.method static synthetic access$100(La2dp/Vol/main;)I
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;

    .prologue
    .line 51
    invoke-direct {p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(La2dp/Vol/main;I)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/main;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, La2dp/Vol/main;->refreshList(I)V

    return-void
.end method

.method static synthetic access$300(La2dp/Vol/main;I)I
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, La2dp/Vol/main;->getBtDevices(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(La2dp/Vol/main;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 51
    invoke-direct {p0, p1}, La2dp/Vol/main;->getBTClassDev(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(La2dp/Vol/main;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 51
    invoke-direct {p0, p1}, La2dp/Vol/main;->getBTClassDevMaj(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(La2dp/Vol/main;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 51
    invoke-direct {p0, p1}, La2dp/Vol/main;->getBTClassServ(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(La2dp/Vol/main;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;

    .prologue
    .line 51
    iget-object v0, p0, La2dp/Vol/main;->a2dpDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(La2dp/Vol/main;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/main;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, La2dp/Vol/main;->a2dpDir:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(La2dp/Vol/main;)La2dp/Vol/MyApplication;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/main;

    .prologue
    .line 51
    iget-object v0, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    return-object v0
.end method

.method static synthetic access$900(La2dp/Vol/main;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/main;

    .prologue
    .line 51
    invoke-direct {p0}, La2dp/Vol/main;->getConnects()V

    return-void
.end method

.method private getBTClassDev(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 5
    .param p1, "btd"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/16 v4, 0x200

    .line 1108
    const-string v0, ""

    .line 1109
    .local v0, "temp":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1175
    .end local v0    # "temp":Ljava/lang/String;
    .local v1, "temp":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1111
    .end local v1    # "temp":Ljava/lang/String;
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x420

    if-ne v2, v3, :cond_1

    .line 1112
    const-string v0, "Car Audio, "

    .line 1113
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x408

    if-ne v2, v3, :cond_2

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Handsfree, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1115
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x418

    if-ne v2, v3, :cond_3

    .line 1116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Headphones, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1117
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x428

    if-ne v2, v3, :cond_4

    .line 1118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "HiFi Audio, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1119
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x414

    if-ne v2, v3, :cond_5

    .line 1120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Loudspeaker, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1121
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x41c

    if-ne v2, v3, :cond_6

    .line 1122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Portable Audio, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1123
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x434

    if-ne v2, v3, :cond_7

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Camcorder, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1125
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x424

    if-ne v2, v3, :cond_8

    .line 1126
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Set Top Box, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1127
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x43c

    if-ne v2, v3, :cond_9

    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "A/V Display/Speaker, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1129
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x438

    if-ne v2, v3, :cond_a

    .line 1130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Video Monitor, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1131
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x42c

    if-ne v2, v3, :cond_b

    .line 1132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "VCR, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1133
    :cond_b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x204

    if-ne v2, v3, :cond_c

    .line 1134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cellular Phone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    :cond_c
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x20c

    if-ne v2, v3, :cond_d

    .line 1136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Smart Phone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1137
    :cond_d
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x208

    if-ne v2, v3, :cond_e

    .line 1138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Cordless Phone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1139
    :cond_e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x214

    if-ne v2, v3, :cond_f

    .line 1140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ISDN Phone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1141
    :cond_f
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x210

    if-ne v2, v3, :cond_10

    .line 1142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Phone Modem/Gateway, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1143
    :cond_10
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    if-ne v2, v4, :cond_11

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Other Phone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1145
    :cond_11
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x404

    if-ne v2, v3, :cond_12

    .line 1146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Wearable Headset, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1147
    :cond_12
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x400

    if-ne v2, v3, :cond_13

    .line 1148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Uncategorized A/V, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1149
    :cond_13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    if-ne v2, v4, :cond_14

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Uncategorized Phone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1151
    :cond_14
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_15

    .line 1152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Incategorized Toy, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1153
    :cond_15
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x104

    if-ne v2, v3, :cond_16

    .line 1154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Desktop PC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    :cond_16
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x110

    if-ne v2, v3, :cond_17

    .line 1156
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Handheld PC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1157
    :cond_17
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x10c

    if-ne v2, v3, :cond_18

    .line 1158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Laptop PC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1159
    :cond_18
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x114

    if-ne v2, v3, :cond_19

    .line 1160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Palm Sized PC/PDA, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1161
    :cond_19
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x118

    if-ne v2, v3, :cond_1a

    .line 1162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Wearable PC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1163
    :cond_1a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x108

    if-ne v2, v3, :cond_1b

    .line 1164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Server PC, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1165
    :cond_1b
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_1c

    .line 1166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Computer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1169
    :cond_1c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1d

    .line 1170
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1175
    .end local v0    # "temp":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/lang/String;
    goto/16 :goto_0

    .line 1172
    .end local v1    # "temp":Ljava/lang/String;
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_1d
    const-string v0, "other"

    goto :goto_1
.end method

.method private getBTClassDevMaj(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "btd"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1186
    const-string v0, ""

    .line 1187
    .local v0, "temp":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1220
    .end local v0    # "temp":Ljava/lang/String;
    .local v1, "temp":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1189
    .end local v1    # "temp":Ljava/lang/String;
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x400

    if-ne v2, v3, :cond_1

    .line 1190
    const-string v0, "Audio Video, "

    .line 1191
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x100

    if-ne v2, v3, :cond_2

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Computer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1193
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x900

    if-ne v2, v3, :cond_3

    .line 1194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Health, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1195
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    if-nez v2, :cond_4

    .line 1196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Misc, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1197
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x300

    if-ne v2, v3, :cond_5

    .line 1198
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Networking, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1199
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x500

    if-ne v2, v3, :cond_6

    .line 1200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Peripheral, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1201
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x200

    if-ne v2, v3, :cond_7

    .line 1202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Phone, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1203
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x1f00

    if-ne v2, v3, :cond_8

    .line 1204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Uncategorized, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1205
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x700

    if-ne v2, v3, :cond_9

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Wearable, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1207
    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x800

    if-ne v2, v3, :cond_a

    .line 1208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Toy, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1209
    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v2

    const/16 v3, 0x600

    if-ne v2, v3, :cond_b

    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Imaging, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1214
    :cond_b
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_c

    .line 1215
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 1220
    .end local v0    # "temp":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/lang/String;
    goto/16 :goto_0

    .line 1217
    .end local v1    # "temp":Ljava/lang/String;
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_c
    const-string v0, "other"

    goto :goto_1
.end method

.method private getBTClassServ(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 4
    .param p1, "btd"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 1066
    const-string v0, ""

    .line 1067
    .local v0, "temp":Ljava/lang/String;
    if-nez p1, :cond_0

    move-object v1, v0

    .line 1097
    .end local v0    # "temp":Ljava/lang/String;
    .local v1, "temp":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 1069
    .end local v1    # "temp":Ljava/lang/String;
    .restart local v0    # "temp":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1070
    const-string v0, "Audio, "

    .line 1071
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x400000

    .line 1072
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Telophony, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1074
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x800000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1076
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Information, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1077
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1079
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Limited Discoverability, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1080
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x20000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Networking, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1083
    :cond_5
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x100000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1085
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Object Transfer, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1086
    :cond_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1088
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Positioning, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x40000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1090
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Render, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1091
    :cond_8
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1092
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Capture, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    :cond_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_a

    .line 1095
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_a
    move-object v1, v0

    .line 1097
    .end local v0    # "temp":Ljava/lang/String;
    .restart local v1    # "temp":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private getBtDevices(I)I
    .locals 17
    .param p1, "mode"    # I

    .prologue
    .line 622
    const/4 v8, 0x0

    .line 623
    .local v8, "i":I
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->clear()V

    .line 647
    move-object/from16 v0, p0

    iget-boolean v14, v0, La2dp/Vol/main;->carMode:Z

    if-eqz v14, :cond_0

    .line 649
    new-instance v6, La2dp/Vol/btDevice;

    invoke-direct {v6}, La2dp/Vol/btDevice;-><init>()V

    .line 650
    .local v6, "fbt":La2dp/Vol/btDevice;
    const v14, 0x7f070063

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, La2dp/Vol/main;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 651
    .local v13, "str":Ljava/lang/String;
    const-string v14, "1"

    sget-object v15, La2dp/Vol/main;->am:Landroid/media/AudioManager;

    const/16 v16, 0x3

    .line 652
    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v15

    .line 651
    invoke-virtual {v6, v13, v13, v14, v15}, La2dp/Vol/btDevice;->setBluetoothDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 653
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    iget-object v15, v6, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v14, v15}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v7

    .line 654
    .local v7, "fbt2":La2dp/Vol/btDevice;
    iget-object v14, v7, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 655
    const/high16 v14, 0x7f020000

    invoke-virtual {v6, v14}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 656
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v14, v6}, La2dp/Vol/DeviceDB;->insert(La2dp/Vol/btDevice;)J

    .line 657
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 661
    :goto_0
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, La2dp/Vol/main;->refreshList(I)V

    .line 664
    .end local v6    # "fbt":La2dp/Vol/btDevice;
    .end local v7    # "fbt2":La2dp/Vol/btDevice;
    .end local v13    # "str":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, La2dp/Vol/main;->homeDock:Z

    if-eqz v14, :cond_1

    .line 666
    new-instance v6, La2dp/Vol/btDevice;

    invoke-direct {v6}, La2dp/Vol/btDevice;-><init>()V

    .line 667
    .restart local v6    # "fbt":La2dp/Vol/btDevice;
    const v14, 0x7f07006a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, La2dp/Vol/main;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 668
    .restart local v13    # "str":Ljava/lang/String;
    const-string v14, "2"

    sget-object v15, La2dp/Vol/main;->am:Landroid/media/AudioManager;

    const/16 v16, 0x3

    .line 669
    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v15

    .line 668
    invoke-virtual {v6, v13, v13, v14, v15}, La2dp/Vol/btDevice;->setBluetoothDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 670
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    iget-object v15, v6, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v14, v15}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v7

    .line 671
    .restart local v7    # "fbt2":La2dp/Vol/btDevice;
    iget-object v14, v7, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    if-nez v14, :cond_5

    .line 672
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, La2dp/Vol/btDevice;->setGetLoc(Z)V

    .line 673
    const v14, 0x7f020005

    invoke-virtual {v6, v14}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 674
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v14, v6}, La2dp/Vol/DeviceDB;->insert(La2dp/Vol/btDevice;)J

    .line 675
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 679
    :goto_1
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, La2dp/Vol/main;->refreshList(I)V

    .line 681
    .end local v6    # "fbt":La2dp/Vol/btDevice;
    .end local v7    # "fbt2":La2dp/Vol/btDevice;
    .end local v13    # "str":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, La2dp/Vol/main;->headsetPlug:Z

    if-eqz v14, :cond_2

    .line 684
    new-instance v6, La2dp/Vol/btDevice;

    invoke-direct {v6}, La2dp/Vol/btDevice;-><init>()V

    .line 685
    .restart local v6    # "fbt":La2dp/Vol/btDevice;
    const v14, 0x7f070060

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, La2dp/Vol/main;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 686
    .restart local v13    # "str":Ljava/lang/String;
    const-string v14, "3"

    sget-object v15, La2dp/Vol/main;->am:Landroid/media/AudioManager;

    const/16 v16, 0x3

    .line 687
    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v15

    .line 686
    invoke-virtual {v6, v13, v13, v14, v15}, La2dp/Vol/btDevice;->setBluetoothDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 688
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    iget-object v15, v6, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v14, v15}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v7

    .line 689
    .restart local v7    # "fbt2":La2dp/Vol/btDevice;
    iget-object v14, v7, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    if-nez v14, :cond_6

    .line 690
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, La2dp/Vol/btDevice;->setGetLoc(Z)V

    .line 691
    const v14, 0x7f020004

    invoke-virtual {v6, v14}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 692
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v14, v6}, La2dp/Vol/DeviceDB;->insert(La2dp/Vol/btDevice;)J

    .line 693
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 697
    :goto_2
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, La2dp/Vol/main;->refreshList(I)V

    .line 700
    .end local v6    # "fbt":La2dp/Vol/btDevice;
    .end local v7    # "fbt2":La2dp/Vol/btDevice;
    .end local v13    # "str":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, La2dp/Vol/main;->power:Z

    if-eqz v14, :cond_3

    .line 703
    new-instance v6, La2dp/Vol/btDevice;

    invoke-direct {v6}, La2dp/Vol/btDevice;-><init>()V

    .line 704
    .restart local v6    # "fbt":La2dp/Vol/btDevice;
    const v14, 0x7f07006f

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, La2dp/Vol/main;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 705
    .restart local v13    # "str":Ljava/lang/String;
    const-string v14, "4"

    sget-object v15, La2dp/Vol/main;->am:Landroid/media/AudioManager;

    const/16 v16, 0x3

    .line 706
    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v15

    .line 705
    invoke-virtual {v6, v13, v13, v14, v15}, La2dp/Vol/btDevice;->setBluetoothDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 707
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    iget-object v15, v6, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v14, v15}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v7

    .line 708
    .restart local v7    # "fbt2":La2dp/Vol/btDevice;
    iget-object v14, v7, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    if-nez v14, :cond_7

    .line 709
    const/4 v14, 0x0

    invoke-virtual {v6, v14}, La2dp/Vol/btDevice;->setGetLoc(Z)V

    .line 710
    const v14, 0x7f020005

    invoke-virtual {v6, v14}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 711
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v14, v6}, La2dp/Vol/DeviceDB;->insert(La2dp/Vol/btDevice;)J

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 716
    :goto_3
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, La2dp/Vol/main;->refreshList(I)V

    .line 719
    .end local v6    # "fbt":La2dp/Vol/btDevice;
    .end local v7    # "fbt2":La2dp/Vol/btDevice;
    .end local v13    # "str":Ljava/lang/String;
    :cond_3
    const/4 v14, 0x1

    move/from16 v0, p1

    if-lt v0, v14, :cond_10

    .line 720
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v10

    .line 721
    .local v10, "mBTA":Landroid/bluetooth/BluetoothAdapter;
    if-nez v10, :cond_8

    .line 722
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    const v15, 0x7f07001a

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    .line 723
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 724
    const/4 v14, 0x0

    .line 790
    .end local v10    # "mBTA":Landroid/bluetooth/BluetoothAdapter;
    :goto_4
    return v14

    .line 659
    .restart local v6    # "fbt":La2dp/Vol/btDevice;
    .restart local v7    # "fbt2":La2dp/Vol/btDevice;
    .restart local v13    # "str":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 677
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 695
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 714
    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v14, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 727
    .end local v6    # "fbt":La2dp/Vol/btDevice;
    .end local v7    # "fbt2":La2dp/Vol/btDevice;
    .end local v13    # "str":Ljava/lang/String;
    .restart local v10    # "mBTA":Landroid/bluetooth/BluetoothAdapter;
    :cond_8
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v14

    if-nez v14, :cond_9

    .line 728
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    .local v5, "enableBluetooth":Landroid/content/Intent;
    const/4 v14, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, La2dp/Vol/main;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 738
    :goto_5
    const/4 v14, 0x0

    goto :goto_4

    .line 732
    :catch_0
    move-exception v4

    .line 733
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 740
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "enableBluetooth":Landroid/content/Intent;
    :cond_9
    if-eqz v10, :cond_f

    .line 741
    invoke-virtual {v10}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v12

    .line 744
    .local v12, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v14

    if-lez v14, :cond_f

    .line 745
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->getIBluetooth()Landroid/bluetooth/IBluetooth;

    move-result-object v9

    .line 747
    .local v9, "ibta":Landroid/bluetooth/IBluetooth;
    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_a
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 750
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_a

    .line 751
    new-instance v1, La2dp/Vol/btDevice;

    invoke-direct {v1}, La2dp/Vol/btDevice;-><init>()V

    .line 752
    .local v1, "bt":La2dp/Vol/btDevice;
    add-int/lit8 v8, v8, 0x1

    .line 754
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xe

    move/from16 v0, v16

    if-lt v15, v0, :cond_d

    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x10

    move/from16 v0, v16

    if-gt v15, v0, :cond_d

    .line 756
    :try_start_1
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v15}, Landroid/bluetooth/IBluetooth;->getRemoteAlias(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 763
    .local v11, "name":Ljava/lang/String;
    :goto_7
    if-nez v11, :cond_b

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    .line 766
    :cond_b
    :goto_8
    sget-object v15, La2dp/Vol/main;->am:Landroid/media/AudioManager;

    const/16 v16, 0x3

    .line 769
    invoke-virtual/range {v15 .. v16}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v15

    .line 766
    invoke-virtual {v1, v3, v11, v15}, La2dp/Vol/btDevice;->setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V

    .line 771
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0xf

    move/from16 v0, v16

    if-le v15, v0, :cond_c

    .line 772
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, La2dp/Vol/btDevice;->setSetV(Z)V

    .line 774
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    iget-object v0, v1, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v2

    .line 776
    .local v2, "bt2":La2dp/Vol/btDevice;
    iget-object v15, v2, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    if-nez v15, :cond_e

    .line 777
    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v15, v1}, La2dp/Vol/DeviceDB;->insert(La2dp/Vol/btDevice;)J

    .line 778
    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v15, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 758
    .end local v2    # "bt2":La2dp/Vol/btDevice;
    .end local v11    # "name":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 759
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    .line 761
    .restart local v11    # "name":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 765
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v11    # "name":Ljava/lang/String;
    :cond_d
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "name":Ljava/lang/String;
    goto :goto_8

    .line 780
    .restart local v2    # "bt2":La2dp/Vol/btDevice;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v15, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 786
    .end local v1    # "bt":La2dp/Vol/btDevice;
    .end local v2    # "bt2":La2dp/Vol/btDevice;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v9    # "ibta":Landroid/bluetooth/IBluetooth;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_f
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, La2dp/Vol/main;->refreshList(I)V

    .line 787
    move-object/from16 v0, p0

    iget-object v14, v0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " Bluetooth Devices"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    .line 788
    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .end local v10    # "mBTA":Landroid/bluetooth/BluetoothAdapter;
    :cond_10
    move v14, v8

    .line 790
    goto/16 :goto_4
.end method

.method private getConnects()V
    .locals 1

    .prologue
    .line 523
    iget-boolean v0, p0, La2dp/Vol/main;->servrun:Z

    if-eqz v0, :cond_0

    .line 524
    sget-object v0, La2dp/Vol/service;->connects:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, La2dp/Vol/main;->connects:I

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, La2dp/Vol/main;->connects:I

    goto :goto_0
.end method

.method private getIBluetooth()Landroid/bluetooth/IBluetooth;
    .locals 14

    .prologue
    .line 1225
    const/4 v6, 0x0

    .line 1229
    .local v6, "ibta":Landroid/bluetooth/IBluetooth;
    :try_start_0
    const-string v10, "android.os.ServiceManager"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 1231
    .local v3, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getService"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1232
    .local v8, "m2":Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "bluetooth"

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 1234
    .local v1, "b":Landroid/os/IBinder;
    const-string v10, "A2DP_Volume"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Test2: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v1}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    const-string v10, "android.bluetooth.IBluetooth"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 1238
    .local v4, "c3":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v9

    .line 1240
    .local v9, "s2":[Ljava/lang/Class;
    const/4 v10, 0x0

    aget-object v2, v9, v10

    .line 1242
    .local v2, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "asInterface"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/os/IBinder;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 1244
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1245
    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v7, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Landroid/bluetooth/IBluetooth;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "c3":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "m2":Ljava/lang/reflect/Method;
    .end local v9    # "s2":[Ljava/lang/Class;
    :goto_0
    return-object v6

    .line 1247
    :catch_0
    move-exception v5

    .line 1248
    .local v5, "e":Ljava/lang/Exception;
    const-string v10, "A2DP_Volume"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadFromDB()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 939
    iget-object v2, p0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v2}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 940
    iget-object v2, p0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v2}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-nez v2, :cond_0

    .line 942
    :try_start_0
    new-instance v2, La2dp/Vol/DeviceDB;

    iget-object v3, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    invoke-direct {v2, v3}, La2dp/Vol/DeviceDB;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    :cond_0
    :try_start_1
    iget-object v2, p0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v2}, La2dp/Vol/DeviceDB;->selectAlldb()Ljava/util/Vector;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 954
    iget-object v2, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    if-nez v2, :cond_2

    .line 957
    :cond_1
    :goto_0
    return v1

    .line 943
    :catch_0
    move-exception v0

    .line 944
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 950
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 951
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 957
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v1, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0
.end method

.method private refreshList(I)V
    .locals 6
    .param p1, "test"    # I

    .prologue
    .line 908
    if-lez p1, :cond_2

    .line 909
    new-array v2, p1, [Ljava/lang/String;

    iput-object v2, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    .line 910
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 911
    iget-object v3, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    iget-object v2, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 912
    iget v2, p0, La2dp/Vol/main;->connects:I

    if-lez v2, :cond_1

    iget-boolean v2, p0, La2dp/Vol/main;->servrun:Z

    if-eqz v2, :cond_1

    .line 913
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    sget-object v2, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 914
    sget-object v2, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 915
    iget-object v2, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2dp/Vol/btDevice;

    .line 916
    invoke-virtual {v2}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    sget-object v3, La2dp/Vol/service;->btdConn:[La2dp/Vol/btDevice;

    aget-object v3, v3, v1

    .line 919
    invoke-virtual {v3}, La2dp/Vol/btDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    .line 917
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " **"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v0

    .line 913
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 910
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "no data"

    aput-object v4, v2, v3

    iput-object v2, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    .line 929
    :cond_3
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    sget v4, La2dp/Vol/main;->resourceID:I

    iget-object v5, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v2, p0, La2dp/Vol/main;->ladapt:Landroid/widget/ArrayAdapter;

    .line 931
    iget-object v2, p0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    iget-object v3, p0, La2dp/Vol/main;->ladapt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 932
    iget-object v2, p0, La2dp/Vol/main;->ladapt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 933
    iget-object v2, p0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->invalidateViews()V

    .line 934
    iget-object v2, p0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->forceLayout()V

    .line 935
    return-void
.end method

.method private setIgnore()Landroid/content/DialogInterface$OnClickListener;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 898
    iget-object v1, p0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 899
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iput-boolean v2, p0, La2dp/Vol/main;->TTSignore:Z

    .line 900
    const-string v1, "TTSignore"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 901
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 902
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public Locationbtn()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 594
    const/16 v5, 0xfa

    :try_start_0
    new-array v0, v5, [B

    .line 595
    .local v0, "buff":[B
    const-string v5, "My_Last_Location"

    invoke-virtual {p0, v5}, La2dp/Vol/main;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2

    .line 596
    .local v2, "fs":Ljava/io/FileInputStream;
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 597
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 598
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 601
    .local v4, "st":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 602
    .local v3, "i":Landroid/content/Intent;
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 603
    invoke-virtual {p0, v3}, La2dp/Vol/main;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 613
    .end local v0    # "buff":[B
    .end local v2    # "fs":Ljava/io/FileInputStream;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "st":Ljava/lang/String;
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v1

    .line 605
    .local v1, "e":Ljava/io/FileNotFoundException;
    const v5, 0x7f070019

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    .line 606
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 607
    const-string v5, "A2DP_Volume"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 608
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 609
    .local v1, "e":Ljava/io/IOException;
    const-string v5, "Some IO issue"

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    .line 610
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 611
    const-string v5, "A2DP_Volume"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 797
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 798
    packed-switch p1, :pswitch_data_0

    .line 826
    :cond_0
    :goto_0
    const/4 v6, 0x4

    if-ne p1, v6, :cond_1

    .line 827
    iget-object v6, p0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v7, "enableTTS"

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, La2dp/Vol/main;->enableTTS:Z

    .line 828
    iget-boolean v6, p0, La2dp/Vol/main;->enableTTS:Z

    if-eqz v6, :cond_1

    .line 831
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 832
    .local v1, "checkIntent":Landroid/content/Intent;
    const-string v6, "android.speech.tts.engine.CHECK_TTS_DATA"

    .line 833
    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 834
    const/4 v6, 0x3

    invoke-virtual {p0, v1, v6}, La2dp/Vol/main;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    .end local v1    # "checkIntent":Landroid/content/Intent;
    :cond_1
    :goto_1
    if-ne p1, v10, :cond_2

    .line 842
    packed-switch p2, :pswitch_data_1

    .line 895
    :cond_2
    :goto_2
    return-void

    .line 802
    :pswitch_0
    if-nez p2, :cond_3

    .line 803
    iget-object v6, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    const v7, 0x7f070061

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 804
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 805
    invoke-direct {p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v6

    invoke-direct {p0, v6}, La2dp/Vol/main;->refreshList(I)V

    goto :goto_0

    .line 808
    :cond_3
    invoke-direct {p0, v9}, La2dp/Vol/main;->getBtDevices(I)I

    move-result v5

    .line 809
    .local v5, "test":I
    if-lez v5, :cond_0

    .line 810
    new-array v6, v5, [Ljava/lang/String;

    iput-object v6, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    .line 811
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v5, :cond_4

    .line 812
    iget-object v7, p0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    iget-object v6, p0, La2dp/Vol/main;->vec:Ljava/util/Vector;

    invoke-virtual {v6, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2dp/Vol/btDevice;

    invoke-virtual {v6}, La2dp/Vol/btDevice;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v3

    .line 811
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 814
    :cond_4
    invoke-direct {p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v6

    invoke-direct {p0, v6}, La2dp/Vol/main;->refreshList(I)V

    goto :goto_0

    .line 819
    .end local v3    # "i":I
    .end local v5    # "test":I
    :pswitch_1
    invoke-direct {p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v6

    invoke-direct {p0, v6}, La2dp/Vol/main;->refreshList(I)V

    goto :goto_0

    .line 835
    :catch_0
    move-exception v2

    .line 836
    .local v2, "e":Ljava/lang/Exception;
    iget-object v6, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    const-string v7, "TTS missing fault"

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 844
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    iget-boolean v6, p0, La2dp/Vol/main;->toasts:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    const v7, 0x7f070056

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    .line 845
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 849
    :pswitch_3
    iget-boolean v6, p0, La2dp/Vol/main;->TTSignore:Z

    if-nez v6, :cond_2

    .line 853
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 855
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v6, 0x7f07005d

    invoke-virtual {p0, v6}, La2dp/Vol/main;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 856
    const v6, 0x7f070057

    new-instance v7, La2dp/Vol/main$10;

    invoke-direct {v7, p0}, La2dp/Vol/main$10;-><init>(La2dp/Vol/main;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 867
    const v6, 0x7f070018

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 868
    invoke-direct {p0}, La2dp/Vol/main;->setIgnore()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v4

    .line 869
    .local v4, "ignoreListener":Landroid/content/DialogInterface$OnClickListener;
    const v6, 0x7f07006b

    invoke-virtual {v0, v6, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 871
    const v6, 0x7f07006e

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 872
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_2

    .line 877
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v4    # "ignoreListener":Landroid/content/DialogInterface$OnClickListener;
    :pswitch_4
    iget-boolean v6, p0, La2dp/Vol/main;->toasts:Z

    if-eqz v6, :cond_2

    .line 878
    iget-object v6, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    const-string v7, "TTS Missing Volume"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 879
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 883
    :pswitch_5
    iget-boolean v6, p0, La2dp/Vol/main;->toasts:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    const-string v7, "TTS Bad Data"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 884
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 888
    :pswitch_6
    iget-boolean v6, p0, La2dp/Vol/main;->toasts:Z

    if-eqz v6, :cond_2

    .line 889
    iget-object v6, p0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    const-string v7, "TTS Voice data fail"

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    .line 890
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 842
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 158
    invoke-virtual/range {p0 .. p0}, La2dp/Vol/main;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->res:Landroid/content/res/Resources;

    .line 159
    const v2, 0x7f040005

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->setContentView(I)V

    .line 160
    new-instance v10, Landroid/content/ComponentName;

    const-string v2, "a2dp.Vol"

    const-string v3, "main"

    invoke-direct {v10, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v10, "comp":Landroid/content/ComponentName;
    const/16 v23, 0x0

    .line 164
    .local v23, "ver":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, La2dp/Vol/main;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 165
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v22

    .line 166
    .local v22, "pinfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    move-object/from16 v23, v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    .end local v22    # "pinfo":Landroid/content/pm/PackageInfo;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/main;->res:Landroid/content/res/Resources;

    const v4, 0x7f07005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    invoke-virtual/range {p0 .. p0}, La2dp/Vol/main;->getApplication()Landroid/app/Application;

    move-result-object v2

    check-cast v2, La2dp/Vol/MyApplication;

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    .line 179
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    .line 182
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "useLocalStorage"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 183
    .local v20, "local":Z
    if-eqz v20, :cond_6

    .line 184
    invoke-virtual/range {p0 .. p0}, La2dp/Vol/main;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->a2dpDir:Ljava/lang/String;

    .line 189
    :goto_1
    new-instance v15, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->a2dpDir:Ljava/lang/String;

    invoke-direct {v15, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v15, "exportDir":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 192
    invoke-virtual {v15}, Ljava/io/File;->mkdirs()Z

    .line 195
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "car_mode"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/main;->carMode:Z

    .line 196
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "home_dock"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/main;->homeDock:Z

    .line 197
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "headset"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/main;->headsetPlug:Z

    .line 198
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "power"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/main;->power:Z

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "enableTTS"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/main;->enableTTS:Z

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "toasts"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/main;->toasts:Z

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->preferences:Landroid/content/SharedPreferences;

    const-string v3, "TTSignore"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, La2dp/Vol/main;->TTSignore:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .end local v15    # "exportDir":Ljava/io/File;
    .end local v20    # "local":Z
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, La2dp/Vol/main;->connects:I

    .line 206
    const-string v2, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, La2dp/Vol/main;->am:Landroid/media/AudioManager;

    .line 207
    const v2, 0x7f0a0040

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    .line 209
    .local v8, "btn":Landroid/widget/Button;
    const v2, 0x7f0a003f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/Button;

    .line 210
    .local v21, "locbtn":Landroid/widget/Button;
    const v2, 0x7f0a0041

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    sput-object v2, La2dp/Vol/main;->serv:Landroid/widget/Button;

    .line 214
    new-instance v16, Landroid/content/IntentFilter;

    const-string v2, "a2dp.vol.service.RUNNING"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 216
    .local v16, "filter3":Landroid/content/IntentFilter;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->sRunning:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, La2dp/Vol/main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 222
    :goto_3
    new-instance v17, Landroid/content/IntentFilter;

    const-string v2, "a2dp.vol.service.STOPPED_RUNNING"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 225
    .local v17, "filter4":Landroid/content/IntentFilter;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->sRunning:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, La2dp/Vol/main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 233
    :goto_4
    new-instance v18, Landroid/content/IntentFilter;

    const-string v2, "a2dp.Vol.main.RELOAD_LIST"

    move-object/from16 v0, v18

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 234
    .local v18, "filter5":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->mReceiver5:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v2, v1}, La2dp/Vol/main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 236
    new-instance v19, Landroid/content/IntentFilter;

    const-string v2, "a2dp.vol.preferences.UPDATED"

    move-object/from16 v0, v19

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 237
    .local v19, "filter6":Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->mReceiver6:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v2, v1}, La2dp/Vol/main;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, La2dp/Vol/main;->res:Landroid/content/res/Resources;

    const v5, 0x7f070019

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    .line 241
    new-instance v2, La2dp/Vol/DeviceDB;

    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    invoke-direct {v2, v3}, La2dp/Vol/DeviceDB;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    .line 244
    if-nez p1, :cond_5

    .line 245
    const/4 v11, 0x1

    .line 246
    .local v11, "devicemin":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, La2dp/Vol/main;->carMode:Z

    if-eqz v2, :cond_1

    .line 247
    add-int/lit8 v11, v11, 0x1

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, La2dp/Vol/main;->homeDock:Z

    if-eqz v2, :cond_2

    .line 249
    add-int/lit8 v11, v11, 0x1

    .line 251
    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v2}, La2dp/Vol/DeviceDB;->getLength()I

    move-result v2

    if-ge v2, v11, :cond_3

    .line 252
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, La2dp/Vol/main;->getBtDevices(I)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 258
    :cond_3
    :goto_5
    sget-object v2, La2dp/Vol/main;->serv:Landroid/widget/Button;

    const v3, 0x7f070053

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 263
    new-instance v2, Landroid/content/Intent;

    const-class v3, La2dp/Vol/service;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 264
    move-object/from16 v0, p0

    iget-boolean v2, v0, La2dp/Vol/main;->enableTTS:Z

    if-eqz v2, :cond_4

    .line 267
    :try_start_5
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v9, "checkIntent":Landroid/content/Intent;
    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    .line 269
    invoke-virtual {v9, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v2}, La2dp/Vol/main;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 276
    .end local v9    # "checkIntent":Landroid/content/Intent;
    :cond_4
    :goto_6
    new-instance v2, Landroid/content/Intent;

    const-class v3, La2dp/Vol/NotificationCatcher;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 281
    .end local v11    # "devicemin":I
    :cond_5
    new-instance v2, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/main;->application:La2dp/Vol/MyApplication;

    sget v4, La2dp/Vol/main;->resourceID:I

    move-object/from16 v0, p0

    iget-object v5, v0, La2dp/Vol/main;->lstring:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->ladapt:Landroid/widget/ArrayAdapter;

    .line 282
    const v2, 0x7f0a0042

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, La2dp/Vol/main;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v3, v0, La2dp/Vol/main;->ladapt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 286
    new-instance v2, La2dp/Vol/main$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, La2dp/Vol/main$3;-><init>(La2dp/Vol/main;)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    new-instance v3, La2dp/Vol/main$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, La2dp/Vol/main$4;-><init>(La2dp/Vol/main;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, La2dp/Vol/main;->lvl:Landroid/widget/ListView;

    new-instance v3, La2dp/Vol/main$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, La2dp/Vol/main$5;-><init>(La2dp/Vol/main;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 431
    new-instance v2, La2dp/Vol/main$6;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, La2dp/Vol/main$6;-><init>(La2dp/Vol/main;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    new-instance v2, La2dp/Vol/main$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, La2dp/Vol/main$7;-><init>(La2dp/Vol/main;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 465
    sget-object v2, La2dp/Vol/main;->serv:Landroid/widget/Button;

    new-instance v3, La2dp/Vol/main$8;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, La2dp/Vol/main$8;-><init>(La2dp/Vol/main;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    new-instance v2, La2dp/Vol/main$9;

    const-wide/16 v4, 0x7d0

    const-wide/16 v6, 0x3e8

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, La2dp/Vol/main$9;-><init>(La2dp/Vol/main;JJ)V

    .line 514
    invoke-virtual {v2}, La2dp/Vol/main$9;->start()Landroid/os/CountDownTimer;

    .line 517
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->getConnects()V

    .line 518
    invoke-direct/range {p0 .. p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, La2dp/Vol/main;->refreshList(I)V

    .line 519
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 520
    return-void

    .line 167
    .end local v8    # "btn":Landroid/widget/Button;
    .end local v16    # "filter3":Landroid/content/IntentFilter;
    .end local v17    # "filter4":Landroid/content/IntentFilter;
    .end local v18    # "filter5":Landroid/content/IntentFilter;
    .end local v19    # "filter6":Landroid/content/IntentFilter;
    .end local v21    # "locbtn":Landroid/widget/Button;
    :catch_0
    move-exception v12

    .line 168
    .local v12, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "A2DP_Volume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v12}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 186
    .end local v12    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v20    # "local":Z
    :cond_6
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/A2DPVol"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, La2dp/Vol/main;->a2dpDir:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 202
    .end local v20    # "local":Z
    :catch_1
    move-exception v14

    .line 203
    .local v14, "e2":Ljava/lang/Exception;
    const-string v2, "A2DP_Volume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 217
    .end local v14    # "e2":Ljava/lang/Exception;
    .restart local v8    # "btn":Landroid/widget/Button;
    .restart local v16    # "filter3":Landroid/content/IntentFilter;
    .restart local v21    # "locbtn":Landroid/widget/Button;
    :catch_2
    move-exception v14

    .line 219
    .restart local v14    # "e2":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 226
    .end local v14    # "e2":Ljava/lang/Exception;
    .restart local v17    # "filter4":Landroid/content/IntentFilter;
    :catch_3
    move-exception v14

    .line 228
    .restart local v14    # "e2":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 254
    .end local v14    # "e2":Ljava/lang/Exception;
    .restart local v11    # "devicemin":I
    .restart local v18    # "filter5":Landroid/content/IntentFilter;
    .restart local v19    # "filter6":Landroid/content/IntentFilter;
    :catch_4
    move-exception v13

    .line 255
    .local v13, "e1":Ljava/lang/Exception;
    const-string v2, "A2DP_Volume"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 271
    .end local v13    # "e1":Ljava/lang/Exception;
    :catch_5
    move-exception v12

    .line 272
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 85
    invoke-virtual {p0}, La2dp/Vol/main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 86
    .local v0, "inflater":Landroid/view/MenuInflater;
    const/high16 v1, 0x7f090000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 87
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 544
    :try_start_0
    iget-object v1, p0, La2dp/Vol/main;->sRunning:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, La2dp/Vol/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 545
    iget-object v1, p0, La2dp/Vol/main;->mReceiver5:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, La2dp/Vol/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 546
    iget-object v1, p0, La2dp/Vol/main;->mReceiver6:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, La2dp/Vol/main;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    iget-object v1, p0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v1}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 552
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 553
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 97
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    move v6, v7

    .line 149
    :goto_0
    return v6

    .line 99
    :pswitch_0
    iget-object v7, p0, La2dp/Vol/main;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v7}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 100
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, La2dp/Vol/main;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    const-class v8, La2dp/Vol/ManageData;

    invoke-direct {v2, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    .local v2, "i":Landroid/content/Intent;
    const/4 v7, 0x2

    invoke-virtual {p0, v2, v7}, La2dp/Vol/main;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 105
    .end local v2    # "i":Landroid/content/Intent;
    :pswitch_1
    new-instance v7, Landroid/content/Intent;

    const-class v8, La2dp/Vol/service;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v7}, La2dp/Vol/main;->stopService(Landroid/content/Intent;)Z

    .line 106
    invoke-virtual {p0}, La2dp/Vol/main;->finish()V

    goto :goto_0

    .line 110
    :pswitch_2
    new-instance v4, Landroid/content/Intent;

    const-class v7, La2dp/Vol/PackagesChooser;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    .local v4, "p":Landroid/content/Intent;
    invoke-virtual {p0, v4}, La2dp/Vol/main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 115
    .end local v4    # "p":Landroid/content/Intent;
    :pswitch_3
    new-instance v3, Landroid/content/Intent;

    const-class v7, La2dp/Vol/Preferences;

    invoke-direct {v3, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .local v3, "j":Landroid/content/Intent;
    invoke-virtual {p0, v3}, La2dp/Vol/main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 120
    .end local v3    # "j":Landroid/content/Intent;
    :pswitch_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v8, 0x7f070004

    invoke-virtual {v1, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 122
    invoke-virtual {v8, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040013

    new-instance v9, La2dp/Vol/main$2;

    invoke-direct {v9, p0}, La2dp/Vol/main$2;-><init>(La2dp/Vol/main;)V

    .line 123
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x1040009

    new-instance v9, La2dp/Vol/main$1;

    invoke-direct {v9, p0}, La2dp/Vol/main$1;-><init>(La2dp/Vol/main;)V

    .line 131
    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 140
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 145
    .end local v0    # "alertDialog":Landroid/app/AlertDialog;
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :pswitch_5
    const-string v5, "https://github.com/jroal/a2dpvolume/wiki"

    .line 146
    .local v5, "st":Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v7}, La2dp/Vol/main;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7f0a004f
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 563
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 564
    return-void
.end method

.method protected onRestart()V
    .locals 0

    .prologue
    .line 586
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 587
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 573
    invoke-direct {p0}, La2dp/Vol/main;->getConnects()V

    .line 574
    invoke-direct {p0}, La2dp/Vol/main;->loadFromDB()I

    move-result v0

    invoke-direct {p0, v0}, La2dp/Vol/main;->refreshList(I)V

    .line 575
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 576
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 532
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 534
    return-void
.end method
