.class final Lcom/directtap/f;
.super Lcom/directtap/b;


# static fields
.field protected static final a:Z = false

.field protected static final b:Z = false

.field protected static final c:Z = false

.field protected static final d:Z = false

.field protected static final e:Z = false

.field protected static final f:J = 0x7d0L

.field protected static final g:I = 0x3a98

.field protected static final h:I = 0x3a98

.field protected static final i:I = 0x3a98

.field protected static final j:Ljava/lang/String; = "test"

.field private static final k:Ljava/lang/String; = "sdkv"

.field private static final l:Ljava/lang/String; = "env"

.field private static final m:Ljava/lang/String; = "media_code"

.field private static final n:Ljava/lang/String; = "package_name"

.field private static final o:Ljava/lang/String; = "locale"

.field private static final p:Ljava/lang/String; = "time"

.field private static final q:Ljava/lang/String; = "orientation"

.field private static final r:Ljava/lang/String; = "build_model"

.field private static final s:Ljava/lang/String; = "android_id"

.field private static final t:Ljava/lang/String; = "advertising_id"

.field private static final u:Ljava/lang/String; = "limit_tracking"

.field private static final v:Ljava/lang/String; = "os"

.field private static final w:Ljava/lang/String; = "screen_dpi"

.field private static final x:Ljava/lang/String; = "screen_layout"

.field private static final y:Ljava/lang/String; = "screen_size"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:I

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:Landroid/app/Activity;

.field private J:Z

.field private K:Z

.field private L:Landroid/content/res/AssetManager;

.field private M:Z

.field private N:Z

.field private z:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/directtap/b;-><init>()V

    iput-object v0, p0, Lcom/directtap/f;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/directtap/f;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/directtap/f;->B:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/directtap/f;->C:Z

    iput-object v0, p0, Lcom/directtap/f;->D:Ljava/lang/String;

    iput v1, p0, Lcom/directtap/f;->E:I

    iput v1, p0, Lcom/directtap/f;->F:I

    iput-object v0, p0, Lcom/directtap/f;->G:Ljava/lang/String;

    iput-object v0, p0, Lcom/directtap/f;->H:Ljava/lang/String;

    iput-object v0, p0, Lcom/directtap/f;->I:Landroid/app/Activity;

    iput-boolean v1, p0, Lcom/directtap/f;->J:Z

    iput-boolean v1, p0, Lcom/directtap/f;->K:Z

    iput-object v0, p0, Lcom/directtap/f;->L:Landroid/content/res/AssetManager;

    iput-boolean v1, p0, Lcom/directtap/f;->M:Z

    iput-boolean v1, p0, Lcom/directtap/f;->N:Z

    iput-object p1, p0, Lcom/directtap/f;->I:Landroid/app/Activity;

    iput-object p2, p0, Lcom/directtap/f;->z:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/f;->A:Ljava/lang/String;

    invoke-static {p1}, Lcom/directtap/AdvertisingIdHandler;->getInstance(Landroid/app/Activity;)Lcom/directtap/AdvertisingIdHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/AdvertisingIdHandler;->getAdvertisingId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/f;->B:Ljava/lang/String;

    invoke-static {p1}, Lcom/directtap/AdvertisingIdHandler;->getInstance(Landroid/app/Activity;)Lcom/directtap/AdvertisingIdHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/directtap/AdvertisingIdHandler;->isLimitAdTracking()Z

    move-result v0

    iput-boolean v0, p0, Lcom/directtap/f;->C:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/f;->D:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p0, Lcom/directtap/f;->E:I

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iput v1, p0, Lcom/directtap/f;->F:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/f;->G:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/directtap/f;->H:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/directtap/f;->a()V

    invoke-static {}, Lcom/directtap/n;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/directtap/f;->M:Z

    iput-boolean v3, p0, Lcom/directtap/f;->N:Z

    :cond_1
    return-void
.end method

.method private a(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/16 v1, 0x4b

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{    \"code\" : \"200\",    \"message\" : \"OK\",    \"data\" : {    \"htmls\" : [ {       \"ad_num\" : \"4\",       \"ad_size\" : \"65\",        \"html\" : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/directtap/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     }, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "       \"ad_num\" : \"4\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "       \"ad_size\" : \"65\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        \"html\" : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/directtap/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     }, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   \"ad_num\" : \"5\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "       \"ad_size\" : \"65\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        \"html\" : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/directtap/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     }, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   \"ad_num\" : \"1\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "       \"ad_size\" : \"65\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        \"html\" : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/directtap/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     }, {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "       \"ad_num\" : \"3\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "       \"ad_size\" : \"65\","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "        \"html\" : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, v0}, Lcom/directtap/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "     }],"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    \"impression_id\" : \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \"impression\" : {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \"view_id\" :\"2\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \"apps\" : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            {\"position\" : \"1\", \"type\" : \"1\", \"campaign_id\" : \"123\"},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  {\"position\" : \"2\", \"type\" : \"1\", \"campaign_id\" : \"456\"},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  {\"position\" : \"3\", \"type\" : \"2\", \"campaign_id\" : \"789\"},"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            {\"position\" : \"4\", \"type\" : \"2\", \"campaign_id\" : \"444\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    },"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \"close_button_url\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://i40.tinypic.com/2wdym1z_th.png"

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \"back_button_url\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://i39.tinypic.com/307nbex_th.png"

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \"finish_button_url\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://i44.tinypic.com/dr5obs_th.png"

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \"back_landscape_button_url\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://i43.tinypic.com/w4651_th.png"

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \"finish_landscape_button_url\" : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "http://i40.tinypic.com/2nrh9jl_th.png"

    invoke-static {v1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    \"width\" : {}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v0, "dummyFullScreen.html"

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/directtap/f;->K:Z

    if-nez v3, :cond_1

    :goto_0
    iput-boolean v1, p0, Lcom/directtap/f;->K:Z

    :cond_0
    :goto_1
    const-class v1, Lcom/directtap/f;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "We displayed the dummy file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/directtap/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/directtap/f;->L:Landroid/content/res/AssetManager;

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_4

    const-string v0, "newDummyIcon.html"

    iget-boolean v3, p0, Lcom/directtap/f;->J:Z

    if-nez v3, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/directtap/f;->J:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-class v0, Lcom/directtap/f;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "You need to put the dummy html file in the assets folder of your test app"

    invoke-static {v0, v1}, Lcom/directtap/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    :cond_5
    :try_start_1
    const-string v0, "dummyBanner.html"
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private a(Z)Ljava/lang/String;
    .locals 2

    const-string v0, "\t{\t\t\"cpi_campaigns\" : ["

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   \t\t{\"package_name\" : \"com.robert2\", \"campaign_id\" : \"123\"},    \t\t{\"package_name\": \"com.directtap.test\", \"campaign_id\" : \"456\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   \t ],\t\t\"cpc_campaigns\" : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   \t\t{\"package_name\" : \"com.robert2\", \"campaign_id\" : \"123\"},    \t\t{\"package_name\": \"com.directtap.test\", \"campaign_id\" : \"456\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\t]\t}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/directtap/a;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/directtap/f;->M:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/directtap/f;->M:Z

    iget-object v0, p0, Lcom/directtap/f;->I:Landroid/app/Activity;

    invoke-static {}, Lcom/directtap/n;->a()Lcom/directtap/n;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/directtap/x;->a(Landroid/content/Context;Lcom/directtap/y;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/directtap/f;->N:Z

    :cond_0
    iget-boolean v0, p0, Lcom/directtap/f;->N:Z

    if-nez v0, :cond_1

    const-string v0, "This device can only be used in test mode"

    invoke-static {v0}, Lcom/directtap/c;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/directtap/a;

    const-string v1, "This device can only be used in test mode"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/directtap/a;-><init>(Ljava/lang/String;Z)V

    throw v0

    :cond_1
    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 1

    const-string v0, "{    \"code\" : \"200\",    \"message\" : \"OK\",    \"data\" : {\t\t\"expire\":\"3600000\",        \"urls\": {           \"tap\":\"https://tap\",\t\t\t\"install\":\"https://install\",           \"features\":\"https://features\",\t\t\t\"view\":\"https://view\",\t\t\t\"impression\":\"https://impression\"\t\t},\t\t\"settings\": {\t\t\t\"connection_time_out\":\"60000\",\t\t\t\"socket_time_out\":\"60000\",\t\t\t\"features_max_retry\":\"3\",\t\t\t\"version_check_interval\":\"1000000\", \t\t\t\"check_loop_interval\":\"15000\", \t\t\t\"install_check_period\":\"604800000\", \t\t\t\"icon_timing_refresh\":\"15000\",\t\t\t\"animation_time_out\":\"3000\",\n\t\t\t\"fullscreen_radius\":\"10\",\n\t\t\t\"fullscreen_percent\":\"85\", \n\t\t\t\"fullscreen_portrait_percent\":\"90\", \n\t\t\t\"fullscreen_landscape_percent\":\"120\", \n\t\t\t\"fullscreen_outside_alpha\":\"100\",\n\t\t\t\"fullscreen_margin\":\"5\",\n\t\t\t\"fullscreen_timing_refresh\":\"15000\",\n\t\t\t\"banner_timing_refresh\":\"15000\",\n\t\t\t\"close_button_position\": { \t\t\t\t\"x\":\"0\",\t\t\t\t\"y\":\"0\"\t\t\t},\t\t\t\"back_button_position\": { \t\t\t\t\"x\":\"0\",\t\t\t\t\"y\":\"0\"\t\t\t},\t\t\t\"finish_button_position\": { \t\t\t\t\"x\":\"0\",\t\t\t\t\"y\":\"0\"\t\t\t},\t\t\t\"back_landscape_button_position\": { \t\t\t\t\"x\":\"0\",\t\t\t\t\"y\":\"0\"\t\t\t},\t\t\t\"finish_landscape_button_position\": { \t\t\t\t\"x\":\"0\",\t\t\t\t\"y\":\"0\"\t\t\t},\t\t\t\"close_button_ref_density\":\"240\"\t\t},   \t\t\"checklist\": {\t\t\t\"processes\": [\t\t\t\t\"com\\.bluestacks\\.\", \t\t\t\t\"com\\.noshufou\\.android\\.su\", \t\t\t\t\"eu\\.chainfire\\.supersu\", \t\t\t\t\"eu\\.chainfire\\.mobileodin\" \t\t\t],\t\t\t\t\"executables\": [\t\t\t\t\"su\",\t\t\t\t\"sudo\"\t\t\t],\t\t\t\"files\": [\t\t\t\t\"/system/app/Superuser.apk\",\t\t\t\t\"/system/app/SuperSU.apk\"\t\t\t],\t\t\t\"package_names\": [\t\t\t\t\"com.bluestacks.settings\"\t\t\t]\t\t},\t\t\"latest_version\" : \"0.0.1\"   \t}}"

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .locals 1

    const-string v0, "{    \"code\" : \"200\",    \"message\" : \"OK\",    \"data\" : {\t}}"

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .locals 1

    const-string v0, "{    \"code\" : \"200\",    \"message\" : \"OK\",    \"data\" : {\t}}"

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{    \"code\" : \"200\",    \"message\" : \"OK\",    \"data\" : {\t\t\"fullscreen\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/directtap/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\t\"banner\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/directtap/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\t\"large-banner\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/directtap/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\t\"landscape-banner\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/directtap/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t\t\"icon\":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/directtap/f;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .locals 1

    const-string v0, "{    \"code\" : \"200\",    \"message\" : \"OK\",    \"data\" : {\t}}"

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/util/List;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/directtap/a;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/directtap/f;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/directtap/f;->f()V

    const-string v0, "connection_time_out"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    const-string v1, "socket_time_out"

    invoke-static {v1}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/directtap/f;->a(Ljava/lang/String;Ljava/util/List;II)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "sdkv"

    const-string v2, "1.0.7"

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "env"

    invoke-static {}, Lcom/directtap/n;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "media_code"

    iget-object v2, p0, Lcom/directtap/f;->z:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "orientation"

    invoke-static {}, Lcom/directtap/q;->a()Lcom/directtap/DTViewConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/directtap/DTViewConfig;->getFullScreenOrientation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "build_model"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "android_id"

    iget-object v2, p0, Lcom/directtap/f;->A:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "advertising_id"

    iget-object v2, p0, Lcom/directtap/f;->B:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "limit_tracking"

    iget-boolean v0, p0, Lcom/directtap/f;->C:Z

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v2, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "os"

    iget-object v2, p0, Lcom/directtap/f;->D:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/directtap/n;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "test"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "screen_dpi"

    iget v2, p0, Lcom/directtap/f;->E:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "screen_layout"

    iget v2, p0, Lcom/directtap/f;->F:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "screen_size"

    iget-object v2, p0, Lcom/directtap/f;->G:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/directtap/f;->H:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v1, "time"

    invoke-static {}, Lcom/directtap/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/directtap/a;
        }
    .end annotation

    const-string v0, "connection_time_out"

    invoke-static {v0}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v0

    const-string v1, "socket_time_out"

    invoke-static {v1}, Lcom/directtap/n;->c(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/directtap/f;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x2a

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x18s
        0x50s
        0x40s
        0x40s
        0x67s
        0x53s
        0x73s
        0x63s
        0x6es
        0x64s
        0x64s
        0x70s
        0x1fs
        0x18s
        0x5bs
        0x40s
        0x72s
        0x49s
        0x4ds
        0x78s
        0x49s
        0x1ds
        0x4es
        0x13s
        0x43s
        0x7bs
        0x1cs
        0x18s
        0x5ds
        0x7fs
        0x47s
        0x43s
        0x65s
        0x4fs
        0x1cs
        0x6es
        0x4cs
        0x1fs
        0x1cs
        0x12s
    .end array-data
.end method

.method protected b(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;II)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/directtap/a;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lcom/directtap/b;->b(Ljava/lang/String;Ljava/util/List;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x28

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v2, v1, v0

    xor-int/lit8 v2, v2, 0x2a

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :array_0
    .array-data 2
        0x4ds
        0x79s
        0x67s
        0x5fs
        0x65s
        0x53s
        0x1es
        0x4cs
        0x13s
        0x49s
        0x7ds
        0x6fs
        0x44s
        0x60s
        0x6ds
        0x78s
        0x6ds
        0x60s
        0x66s
        0x1bs
        0x78s
        0x63s
        0x4ds
        0x4bs
        0x18s
        0x4cs
        0x65s
        0x5cs
        0x66s
        0x1es
        0x68s
        0x58s
        0x61s
        0x44s
        0x18s
        0x5ds
        0x43s
        0x19s
        0x63s
        0x65s
    .end array-data
.end method

.method protected d()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "DirectTapSDK ver"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "1.0.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/directtap/f;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "Android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/directtap/n;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    const-string v0, "1.0.7"

    return-object v0
.end method
