.class final La2dp/Vol/service$11;
.super Ljava/lang/Object;
.source "service.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1238
    const/4 v5, 0x1

    sput-boolean v5, La2dp/Vol/service;->mIsBound:Z

    .line 1239
    invoke-static {p2}, Landroid/bluetooth/IBluetoothA2dp$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothA2dp;

    move-result-object v5

    sput-object v5, La2dp/Vol/service;->ibta2:Landroid/bluetooth/IBluetoothA2dp;

    .line 1240
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 1244
    .local v3, "mBTA":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v4

    .line 1245
    .local v4, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .line 1246
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 1247
    .local v0, "dev":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    sget-object v7, La2dp/Vol/service;->DeviceToConnect:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1248
    move-object v1, v0

    goto :goto_0

    .line 1250
    .end local v0    # "dev":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    if-eqz v1, :cond_2

    .line 1252
    :try_start_0
    sget-object v5, La2dp/Vol/service;->ibta2:Landroid/bluetooth/IBluetoothA2dp;

    invoke-interface {v5, v1}, Landroid/bluetooth/IBluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    :cond_2
    :goto_1
    return-void

    .line 1253
    :catch_0
    move-exception v2

    .line 1255
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 1263
    const/4 v0, 0x0

    sput-boolean v0, La2dp/Vol/service;->mIsBound:Z

    .line 1264
    invoke-static {}, La2dp/Vol/service;->access$600()La2dp/Vol/MyApplication;

    move-result-object v0

    invoke-static {v0}, La2dp/Vol/service;->doUnbind(Landroid/content/Context;)V

    .line 1265
    return-void
.end method
