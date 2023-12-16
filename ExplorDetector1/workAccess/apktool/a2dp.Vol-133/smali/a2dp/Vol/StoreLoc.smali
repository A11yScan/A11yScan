.class public La2dp/Vol/StoreLoc;
.super Landroid/app/Service;
.source "StoreLoc.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "A2DP_Volume"

.field public static final PREFS_NAME:Ljava/lang/String; = "btVol"


# instance fields
.field private DB:La2dp/Vol/DeviceDB;

.field MAX_ACC:F

.field MAX_TIME:J

.field a2dpDir:Ljava/lang/String;

.field private application:La2dp/Vol/MyApplication;

.field btdConn:La2dp/Vol/btDevice;

.field dtime:Ljava/lang/Long;

.field formatFlags:I

.field formatFlags2:I

.field gpsEnabled:Z

.field l:Landroid/location/Location;

.field l3:Landroid/location/Location;

.field l4:Landroid/location/Location;

.field local:Z

.field locationListener:Landroid/location/LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field preferences:Landroid/content/SharedPreferences;

.field private toasts:Z

.field private useNet:Z

.field private usePass:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, La2dp/Vol/StoreLoc;->MAX_ACC:F

    .line 37
    const-wide/16 v0, 0x2710

    iput-wide v0, p0, La2dp/Vol/StoreLoc;->MAX_TIME:J

    .line 42
    iput-boolean v4, p0, La2dp/Vol/StoreLoc;->toasts:Z

    .line 43
    iput-boolean v3, p0, La2dp/Vol/StoreLoc;->usePass:Z

    .line 44
    iput-boolean v4, p0, La2dp/Vol/StoreLoc;->useNet:Z

    .line 45
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/StoreLoc;->a2dpDir:Ljava/lang/String;

    .line 50
    iput-object v2, p0, La2dp/Vol/StoreLoc;->dtime:Ljava/lang/Long;

    .line 51
    iput-object v2, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 52
    iput-object v2, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 53
    iput-object v2, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 54
    iput-boolean v3, p0, La2dp/Vol/StoreLoc;->gpsEnabled:Z

    .line 381
    new-instance v0, La2dp/Vol/StoreLoc$2;

    invoke-direct {v0, p0}, La2dp/Vol/StoreLoc$2;-><init>(La2dp/Vol/StoreLoc;)V

    iput-object v0, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    return-void
.end method

.method static synthetic access$000(La2dp/Vol/StoreLoc;)Z
    .locals 1
    .param p0, "x0"    # La2dp/Vol/StoreLoc;

    .prologue
    .line 32
    iget-boolean v0, p0, La2dp/Vol/StoreLoc;->toasts:Z

    return v0
.end method

.method static synthetic access$100(La2dp/Vol/StoreLoc;)La2dp/Vol/MyApplication;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/StoreLoc;

    .prologue
    .line 32
    iget-object v0, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    return-object v0
.end method

.method static synthetic access$200(La2dp/Vol/StoreLoc;Z)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/StoreLoc;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, La2dp/Vol/StoreLoc;->clearLoc(Z)V

    return-void
.end method

.method private clearLoc(Z)V
    .locals 13
    .param p1, "doGps"    # Z

    .prologue
    .line 402
    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v9}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v9}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    if-eqz v9, :cond_0

    .line 598
    :goto_0
    return-void

    .line 412
    :cond_0
    iget-object v9, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    iget-object v10, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 414
    const-string v0, "My Car"

    .line 415
    .local v0, "car":Ljava/lang/String;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v9, "#.#"

    invoke-direct {v1, v9}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "df":Ljava/text/DecimalFormat;
    iget-object v9, p0, La2dp/Vol/StoreLoc;->btdConn:La2dp/Vol/btDevice;

    if-eqz v9, :cond_1

    .line 418
    iget-object v9, p0, La2dp/Vol/StoreLoc;->btdConn:La2dp/Vol/btDevice;

    invoke-virtual {v9}, La2dp/Vol/btDevice;->getDesc2()Ljava/lang/String;

    move-result-object v0

    .line 420
    :cond_1
    const-string v6, ""

    .line 424
    .local v6, "locTime":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, La2dp/Vol/StoreLoc;->a2dpDir:Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 426
    .local v3, "exportDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 427
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 429
    :cond_2
    new-instance v4, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    const-string v11, "_"

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".html"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 432
    .local v4, "file":Ljava/io/File;
    const/4 v7, 0x0

    .line 434
    .local v7, "temp":Ljava/lang/String;
    iget-object v9, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    if-eqz v9, :cond_4

    .line 435
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 436
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    iget v12, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    .line 435
    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 439
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 440
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " acc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 442
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    .line 439
    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    .line 451
    .local v8, "urlStr":Ljava/lang/String;
    :goto_1
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "<hr /><bold><a href=\"http://maps.google.com/maps?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</a></bold> Best Location<br>Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Location type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 459
    invoke-virtual {v10}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Accuracy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 462
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " meters<br>Elevation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 465
    invoke-virtual {v10}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " meters<br>Lattitude: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 468
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Longitude: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 469
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 476
    .end local v8    # "urlStr":Ljava/lang/String;
    :goto_2
    iget-object v9, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    if-eqz v9, :cond_5

    .line 477
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 478
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    iget v12, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    .line 477
    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 481
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 482
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " acc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 484
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    .line 481
    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v8

    .line 493
    .restart local v8    # "urlStr":Ljava/lang/String;
    :goto_3
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<hr /><bold><a href=\"http://maps.google.com/maps?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</a></bold> Most Accurate Location<br>Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Location type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 501
    invoke-virtual {v10}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Accuracy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 504
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " meters<br>Elevation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 507
    invoke-virtual {v10}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " meters<br>Lattitude: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 510
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Longitude: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 513
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 520
    .end local v8    # "urlStr":Ljava/lang/String;
    :goto_4
    iget-object v9, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    if-eqz v9, :cond_6

    .line 521
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 522
    invoke-virtual {v10}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    iget v12, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    .line 521
    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v6

    .line 525
    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 526
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " acc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 528
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    .line 525
    invoke-static {v9, v10}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v8

    .line 537
    .restart local v8    # "urlStr":Ljava/lang/String;
    :goto_5
    :try_start_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<hr /><bold><a href=\"http://maps.google.com/maps?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\">"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "</a></bold> Most Recent Location<br>Time: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Location type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 545
    invoke-virtual {v10}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Accuracy: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 548
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " meters<br>Elevation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 551
    invoke-virtual {v10}, Landroid/location/Location;->getAltitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " meters<br>Lattitude: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 554
    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>Longitude: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 557
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 565
    .end local v8    # "urlStr":Ljava/lang/String;
    :goto_6
    iget-boolean v9, p0, La2dp/Vol/StoreLoc;->gpsEnabled:Z

    if-nez v9, :cond_3

    .line 566
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>GPS was not enabled"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 568
    :cond_3
    iget-boolean v9, p0, La2dp/Vol/StoreLoc;->local:Z

    if-eqz v9, :cond_7

    .line 569
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {p0, v9, v10}, La2dp/Vol/StoreLoc;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v5

    .line 571
    .local v5, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 572
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 592
    .end local v3    # "exportDir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "temp":Ljava/lang/String;
    :goto_7
    const/4 v9, 0x0

    iput-object v9, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 593
    const/4 v9, 0x0

    iput-object v9, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 594
    const/4 v9, 0x0

    iput-object v9, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 595
    const/4 v9, 0x0

    iput-object v9, p0, La2dp/Vol/StoreLoc;->btdConn:La2dp/Vol/btDevice;

    .line 597
    invoke-virtual {p0}, La2dp/Vol/StoreLoc;->stopSelf()V

    goto/16 :goto_0

    .line 444
    .restart local v3    # "exportDir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 445
    .local v2, "e":Ljava/lang/Exception;
    :try_start_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 446
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " acc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 447
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 445
    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 448
    .restart local v8    # "urlStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_1

    .line 579
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "exportDir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "urlStr":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 580
    .local v2, "e":Ljava/io/FileNotFoundException;
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    const-string v10, "FileNotFound"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 581
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 582
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 583
    const-string v9, "A2DP_Volume"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 472
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "exportDir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_4
    :try_start_8
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    iget-object v10, p0, La2dp/Vol/StoreLoc;->dtime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget v12, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    .line 474
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No Best Location Captured "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 486
    :catch_2
    move-exception v2

    .line 487
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 488
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " acc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 489
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 487
    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 490
    .restart local v8    # "urlStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_3

    .line 584
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "exportDir":Ljava/io/File;
    .end local v4    # "file":Ljava/io/File;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "urlStr":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 585
    .local v2, "e":Ljava/io/IOException;
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    const-string v10, "IOException"

    const/4 v11, 0x1

    invoke-static {v9, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v9

    .line 586
    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 587
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 588
    const-string v9, "A2DP_Volume"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 515
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "exportDir":Ljava/io/File;
    .restart local v4    # "file":Ljava/io/File;
    .restart local v7    # "temp":Ljava/lang/String;
    :cond_5
    :try_start_9
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    iget-object v10, p0, La2dp/Vol/StoreLoc;->dtime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget v12, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    .line 517
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "No Most Accurate Location Captured "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4

    .line 530
    :catch_4
    move-exception v2

    .line 531
    .local v2, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 532
    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " acc="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 533
    invoke-virtual {v10}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 531
    invoke-static {v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 534
    .restart local v8    # "urlStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 559
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v8    # "urlStr":Ljava/lang/String;
    :cond_6
    iget-object v9, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    iget-object v10, p0, La2dp/Vol/StoreLoc;->dtime:Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget v12, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    invoke-static {v9, v10, v11, v12}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v6

    .line 561
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "No Most Recent Location Captured "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_6

    .line 574
    :cond_7
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 575
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 576
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_7
.end method

.method private registerListeners()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    .line 605
    iget-object v0, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 606
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 616
    :cond_1
    iget-object v0, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    iget-object v5, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 618
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/StoreLoc;->gpsEnabled:Z

    .line 621
    :goto_1
    iget-boolean v0, p0, La2dp/Vol/StoreLoc;->useNet:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    .line 623
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 624
    iget-object v0, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    iget-object v5, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 627
    :cond_2
    iget-boolean v0, p0, La2dp/Vol/StoreLoc;->usePass:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    .line 629
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    iget-object v5, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    goto :goto_0

    .line 620
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/StoreLoc;->gpsEnabled:Z

    goto :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 202
    iget-object v1, p0, La2dp/Vol/StoreLoc;->DB:La2dp/Vol/DeviceDB;

    invoke-virtual {v1}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 203
    iget-object v1, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    if-eqz v1, :cond_1

    .line 205
    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 220
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v1, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :cond_1
    :goto_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_0

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method grabGPS()V
    .locals 30

    .prologue
    .line 226
    const-string v6, "My Car"

    .line 227
    .local v6, "car":Ljava/lang/String;
    const-string v24, "location"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, La2dp/Vol/StoreLoc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/location/LocationManager;

    .line 228
    .local v15, "lm":Landroid/location/LocationManager;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v20

    .line 230
    .local v20, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-wide/32 v8, 0x98967f

    .line 231
    .local v8, "deltat":J
    const-wide/32 v18, 0x98967f

    .line 232
    .local v18, "olddt":J
    const v17, 0x4cbebc20    # 1.0E8f

    .line 233
    .local v17, "oldacc":F
    const v5, 0x4cbebc20    # 1.0E8f

    .line 234
    .local v5, "bestacc":F
    const/4 v14, 0x0

    .line 236
    .local v14, "l2":Landroid/location/Location;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->hasAccuracy()Z

    move-result v24

    if-eqz v24, :cond_0

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    .line 239
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->hasAccuracy()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 241
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getAccuracy()F

    move-result v17

    .line 242
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/location/Location;->getTime()J

    move-result-wide v26

    sub-long v18, v24, v26

    .line 247
    :cond_2
    :try_start_0
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_3

    .line 248
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v24

    add-int/lit8 v13, v24, -0x1

    .local v13, "i":I
    :goto_0
    if-ltz v13, :cond_8

    .line 249
    const-string v24, "android.permission.ACCESS_FINE_LOCATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v24

    if-eqz v24, :cond_4

    const-string v24, "android.permission.ACCESS_COARSE_LOCATION"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v24

    if-eqz v24, :cond_4

    .line 378
    .end local v13    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 259
    .restart local v13    # "i":I
    :cond_4
    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v0, v24

    invoke-virtual {v15, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v14

    .line 261
    if-eqz v14, :cond_7

    .line 262
    invoke-virtual {v14}, Landroid/location/Location;->hasAccuracy()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 265
    invoke-virtual {v14}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    .line 266
    .local v4, "acc":F
    cmpg-float v24, v4, v17

    if-gez v24, :cond_5

    .line 267
    move-object/from16 v0, p0

    iput-object v14, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 268
    move/from16 v17, v4

    .line 270
    :cond_5
    cmpg-float v24, v4, v5

    if-gez v24, :cond_6

    .line 271
    invoke-virtual {v14}, Landroid/location/Location;->getTime()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->dtime:Ljava/lang/Long;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Long;->longValue()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, La2dp/Vol/StoreLoc;->MAX_TIME:J

    move-wide/from16 v28, v0

    sub-long v26, v26, v28

    cmp-long v24, v24, v26

    if-lez v24, :cond_6

    .line 272
    move-object/from16 v0, p0

    iput-object v14, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 274
    move v5, v4

    .line 278
    .end local v4    # "acc":F
    :cond_6
    move-wide/from16 v18, v8

    .line 279
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-virtual {v14}, Landroid/location/Location;->getTime()J

    move-result-wide v26

    sub-long v8, v24, v26

    .line 280
    cmp-long v24, v8, v18

    if-gez v24, :cond_7

    .line 282
    move-object/from16 v0, p0

    iput-object v14, v0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 248
    :cond_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_0

    .line 291
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v24, v0

    if-eqz v24, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/location/Location;->getAccuracy()F

    move-result v23

    .line 293
    .local v23, "x":F
    move-object/from16 v0, p0

    iget v0, v0, La2dp/Vol/StoreLoc;->MAX_ACC:F

    move/from16 v24, v0

    cmpg-float v24, v23, v24

    if-gez v24, :cond_9

    const/16 v24, 0x0

    cmpl-float v24, v23, v24

    if-lez v24, :cond_9

    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/location/Location;->getTime()J

    move-result-wide v26

    sub-long v24, v24, v26

    move-object/from16 v0, p0

    iget-wide v0, v0, La2dp/Vol/StoreLoc;->MAX_TIME:J

    move-wide/from16 v26, v0

    cmp-long v24, v24, v26

    if-gez v24, :cond_9

    .line 296
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, La2dp/Vol/StoreLoc;->clearLoc(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 303
    .end local v23    # "x":F
    :cond_9
    new-instance v7, Ljava/text/DecimalFormat;

    const-string v24, "#.#"

    move-object/from16 v0, v24

    invoke-direct {v7, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 305
    .local v7, "df":Ljava/text/DecimalFormat;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->btdConn:La2dp/Vol/btDevice;

    move-object/from16 v24, v0

    if-eqz v24, :cond_a

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->btdConn:La2dp/Vol/btDevice;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, La2dp/Vol/btDevice;->getDesc2()Ljava/lang/String;

    move-result-object v6

    .line 308
    :cond_a
    const-string v16, ""

    .line 310
    .local v16, "locTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v24, v0

    if-eqz v24, :cond_b

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getTime()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, La2dp/Vol/StoreLoc;->formatFlags:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v16

    .line 315
    :try_start_1
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 316
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " acc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 318
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getAccuracy()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "UTF-8"

    .line 315
    invoke-static/range {v24 .. v25}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v22

    .line 326
    .local v22, "urlStr":Ljava/lang/String;
    :goto_2
    :try_start_2
    const-string v24, "My_Last_Location"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, La2dp/Vol/StoreLoc;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    .line 328
    .local v12, "fos":Ljava/io/FileOutputStream;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "http://maps.google.com/maps?q="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 329
    .local v21, "temp":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 330
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 345
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v21    # "temp":Ljava/lang/String;
    .end local v22    # "urlStr":Ljava/lang/String;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v24, v0

    if-eqz v24, :cond_3

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getTime()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget v0, v0, La2dp/Vol/StoreLoc;->formatFlags:I

    move/from16 v25, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v16

    .line 350
    :try_start_3
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 351
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " acc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 353
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getAccuracy()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, "UTF-8"

    .line 350
    invoke-static/range {v24 .. v25}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v22

    .line 361
    .restart local v22    # "urlStr":Ljava/lang/String;
    :goto_4
    :try_start_4
    const-string v24, "My_Last_Location2"

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, La2dp/Vol/StoreLoc;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v12

    .line 363
    .restart local v12    # "fos":Ljava/io/FileOutputStream;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "http://maps.google.com/maps?q="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 364
    .restart local v21    # "temp":Ljava/lang/String;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 365
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto/16 :goto_1

    .line 368
    .end local v12    # "fos":Ljava/io/FileOutputStream;
    .end local v21    # "temp":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 369
    .local v10, "e":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    move-object/from16 v24, v0

    const-string v25, "FileNotFound"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 370
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 371
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    .line 299
    .end local v7    # "df":Ljava/text/DecimalFormat;
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    .end local v13    # "i":I
    .end local v16    # "locTime":Ljava/lang/String;
    .end local v22    # "urlStr":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 300
    .local v11, "e1":Ljava/lang/Exception;
    goto/16 :goto_1

    .line 319
    .end local v11    # "e1":Ljava/lang/Exception;
    .restart local v7    # "df":Ljava/text/DecimalFormat;
    .restart local v13    # "i":I
    .restart local v16    # "locTime":Ljava/lang/String;
    :catch_2
    move-exception v11

    .line 320
    .local v11, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 321
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " acc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 322
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getAccuracy()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 320
    invoke-static/range {v24 .. v24}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 323
    .restart local v22    # "urlStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_2

    .line 333
    .end local v11    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v10

    .line 334
    .restart local v10    # "e":Ljava/io/FileNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    move-object/from16 v24, v0

    const-string v25, "FileNotFound"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 335
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 336
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 337
    .end local v10    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v10

    .line 338
    .local v10, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    move-object/from16 v24, v0

    const-string v25, "IOException"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 339
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 340
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 354
    .end local v10    # "e":Ljava/io/IOException;
    .end local v22    # "urlStr":Ljava/lang/String;
    :catch_5
    move-exception v11

    .line 355
    .restart local v11    # "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLatitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 356
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getLongitude()D

    move-result-wide v26

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "("

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " acc="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    move-object/from16 v25, v0

    .line 357
    invoke-virtual/range {v25 .. v25}, Landroid/location/Location;->getAccuracy()F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ")"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 355
    invoke-static/range {v24 .. v24}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 358
    .restart local v22    # "urlStr":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_4

    .line 372
    .end local v11    # "e1":Ljava/io/UnsupportedEncodingException;
    :catch_6
    move-exception v10

    .line 373
    .restart local v10    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    move-object/from16 v24, v0

    const-string v25, "IOException"

    const/16 v26, 0x1

    invoke-static/range {v24 .. v26}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v24

    .line 374
    invoke-virtual/range {v24 .. v24}, Landroid/widget/Toast;->show()V

    .line 375
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 161
    invoke-virtual {p0}, La2dp/Vol/StoreLoc;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, La2dp/Vol/MyApplication;

    iput-object v0, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    .line 163
    new-instance v0, La2dp/Vol/DeviceDB;

    iget-object v1, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    invoke-direct {v0, v1}, La2dp/Vol/DeviceDB;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, La2dp/Vol/StoreLoc;->DB:La2dp/Vol/DeviceDB;

    .line 164
    const/high16 v0, 0x80000

    iput v0, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    .line 165
    iget v0, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    .line 166
    iget v0, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    .line 167
    iget v0, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, La2dp/Vol/StoreLoc;->formatFlags:I

    .line 168
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, La2dp/Vol/StoreLoc;->DB:La2dp/Vol/DeviceDB;

    invoke-virtual {v1}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 176
    iget-object v1, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    if-eqz v1, :cond_1

    .line 178
    :try_start_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    iget-object v2, p0, La2dp/Vol/StoreLoc;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 82
    :try_start_0
    iget-object v1, p0, La2dp/Vol/StoreLoc;->application:La2dp/Vol/MyApplication;

    .line 83
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/StoreLoc;->preferences:Landroid/content/SharedPreferences;

    .line 84
    iget-object v1, p0, La2dp/Vol/StoreLoc;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "toasts"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, La2dp/Vol/StoreLoc;->toasts:Z

    .line 85
    iget-object v1, p0, La2dp/Vol/StoreLoc;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "usePassive"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, La2dp/Vol/StoreLoc;->usePass:Z

    .line 86
    iget-object v1, p0, La2dp/Vol/StoreLoc;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "useNetwork"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, La2dp/Vol/StoreLoc;->useNet:Z

    .line 88
    new-instance v9, Ljava/lang/Long;

    iget-object v1, p0, La2dp/Vol/StoreLoc;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "gpsTime"

    const-string v3, "15000"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v9, v1}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    .line 89
    .local v9, "yyy":Ljava/lang/Long;
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, La2dp/Vol/StoreLoc;->MAX_TIME:J

    .line 91
    new-instance v8, Ljava/lang/Float;

    iget-object v1, p0, La2dp/Vol/StoreLoc;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "gpsDistance"

    const-string v3, "10"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 92
    .local v8, "xxx":Ljava/lang/Float;
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, La2dp/Vol/StoreLoc;->MAX_ACC:F

    .line 94
    iget-object v1, p0, La2dp/Vol/StoreLoc;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "useLocalStorage"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, La2dp/Vol/StoreLoc;->local:Z

    .line 95
    iget-boolean v1, p0, La2dp/Vol/StoreLoc;->local:Z

    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {p0}, La2dp/Vol/StoreLoc;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/StoreLoc;->a2dpDir:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v8    # "xxx":Ljava/lang/Float;
    .end local v9    # "yyy":Ljava/lang/Long;
    :goto_0
    iput-object v5, p0, La2dp/Vol/StoreLoc;->l:Landroid/location/Location;

    .line 109
    iput-object v5, p0, La2dp/Vol/StoreLoc;->l3:Landroid/location/Location;

    .line 110
    iput-object v5, p0, La2dp/Vol/StoreLoc;->l4:Landroid/location/Location;

    .line 114
    :try_start_1
    const-string v1, "device"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    .local v6, "device":Ljava/lang/String;
    iget-object v1, p0, La2dp/Vol/StoreLoc;->DB:La2dp/Vol/DeviceDB;

    invoke-virtual {v1, v6}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/StoreLoc;->btdConn:La2dp/Vol/btDevice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 125
    .end local v6    # "device":Ljava/lang/String;
    :goto_1
    const-string v1, "location"

    .line 126
    invoke-virtual {p0, v1}, La2dp/Vol/StoreLoc;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, La2dp/Vol/StoreLoc;->locationManager:Landroid/location/LocationManager;

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/StoreLoc;->dtime:Ljava/lang/Long;

    .line 131
    invoke-direct {p0}, La2dp/Vol/StoreLoc;->registerListeners()V

    .line 133
    iget-wide v2, p0, La2dp/Vol/StoreLoc;->MAX_TIME:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 135
    new-instance v0, La2dp/Vol/StoreLoc$1;

    iget-wide v2, p0, La2dp/Vol/StoreLoc;->MAX_TIME:J

    const-wide/16 v4, 0x1388

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, La2dp/Vol/StoreLoc$1;-><init>(La2dp/Vol/StoreLoc;JJ)V

    .line 149
    .local v0, "T":Landroid/os/CountDownTimer;
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 153
    .end local v0    # "T":Landroid/os/CountDownTimer;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 98
    .restart local v8    # "xxx":Ljava/lang/Float;
    .restart local v9    # "yyy":Ljava/lang/Long;
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/A2DPVol"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/StoreLoc;->a2dpDir:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 100
    .end local v8    # "xxx":Ljava/lang/Float;
    .end local v9    # "yyy":Ljava/lang/Long;
    :catch_0
    move-exception v7

    .line 101
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, La2dp/Vol/StoreLoc;->MAX_ACC:F

    .line 102
    const-wide/16 v2, 0x3a98

    iput-wide v2, p0, La2dp/Vol/StoreLoc;->MAX_TIME:J

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prefs failed to load. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 105
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 106
    const-string v1, "A2DP_Volume"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prefs failed to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 116
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v7

    .line 117
    .local v7, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location service failed to start. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 118
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 119
    invoke-virtual {p0}, La2dp/Vol/StoreLoc;->stopSelf()V

    .line 120
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
