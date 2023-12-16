.class final enum Lnet/nend/android/NendStatus;
.super Ljava/lang/Enum;
.source "NendStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/nend/android/NendStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lnet/nend/android/NendStatus;

.field public static final enum ERR_FAILED_TO_PARSE:Lnet/nend/android/NendStatus;

.field public static final enum ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_AD_STATUS:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_API_KEY:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_ATTRIBUTE_SET:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_CONTEXT:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_RESPONSE:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_RESPONSE_TYPE:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_SPOT_ID:Lnet/nend/android/NendStatus;

.field public static final enum ERR_INVALID_URL:Lnet/nend/android/NendStatus;

.field public static final enum ERR_OUT_OF_STOCK:Lnet/nend/android/NendStatus;

.field public static final enum ERR_UNEXPECTED:Lnet/nend/android/NendStatus;

.field public static final enum INITIAL:Lnet/nend/android/NendStatus;

.field private static final STATUS_PREFIX:Ljava/lang/String; = "AE"

.field public static final enum SUCCESS:Lnet/nend/android/NendStatus;


# instance fields
.field private final code:I

.field private final msg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 9
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "SUCCESS"

    .line 10
    const/16 v2, 0xc8

    const-string v3, "Success!"

    invoke-direct {v0, v1, v5, v2, v3}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->SUCCESS:Lnet/nend/android/NendStatus;

    .line 12
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "INITIAL"

    .line 14
    const/16 v2, 0x320

    const-string v3, "Initial state"

    invoke-direct {v0, v1, v6, v2, v3}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->INITIAL:Lnet/nend/android/NendStatus;

    .line 16
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_ATTRIBUTE_SET"

    .line 18
    const/16 v2, 0x32b

    const-string v3, "AttributeSet is invalid."

    invoke-direct {v0, v1, v7, v2, v3}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_ATTRIBUTE_SET:Lnet/nend/android/NendStatus;

    .line 19
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_API_KEY"

    const/16 v2, 0x32c

    const-string v3, "Api key is invalid."

    invoke-direct {v0, v1, v8, v2, v3}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_API_KEY:Lnet/nend/android/NendStatus;

    .line 20
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_SPOT_ID"

    const/16 v2, 0x32d

    const-string v3, "Spot id is invalid."

    invoke-direct {v0, v1, v9, v2, v3}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_SPOT_ID:Lnet/nend/android/NendStatus;

    .line 21
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_CONTEXT"

    const/4 v2, 0x5

    const/16 v3, 0x32e

    const-string v4, "Context is invalid."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_CONTEXT:Lnet/nend/android/NendStatus;

    .line 22
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_URL"

    const/4 v2, 0x6

    const/16 v3, 0x32f

    const-string v4, "Url is invalid."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_URL:Lnet/nend/android/NendStatus;

    .line 23
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_RESPONSE"

    const/4 v2, 0x7

    const/16 v3, 0x32e

    const-string v4, "Response is invalid."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_RESPONSE:Lnet/nend/android/NendStatus;

    .line 24
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_AD_STATUS"

    const/16 v2, 0x8

    const/16 v3, 0x32f

    const-string v4, "Ad status is invalid."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_AD_STATUS:Lnet/nend/android/NendStatus;

    .line 25
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_INVALID_RESPONSE_TYPE"

    const/16 v2, 0x9

    const/16 v3, 0x330

    const-string v4, "Response type is invalid."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_INVALID_RESPONSE_TYPE:Lnet/nend/android/NendStatus;

    .line 27
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_HTTP_REQUEST"

    const/16 v2, 0xa

    .line 29
    const/16 v3, 0x334

    const-string v4, "Failed to http request."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    .line 30
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_FAILED_TO_PARSE"

    const/16 v2, 0xb

    const/16 v3, 0x335

    const-string v4, "Failed to parse response."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_FAILED_TO_PARSE:Lnet/nend/android/NendStatus;

    .line 32
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_OUT_OF_STOCK"

    const/16 v2, 0xc

    .line 34
    const/16 v3, 0x33e

    const-string v4, "Ad is out of stock."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_OUT_OF_STOCK:Lnet/nend/android/NendStatus;

    .line 36
    new-instance v0, Lnet/nend/android/NendStatus;

    const-string v1, "ERR_UNEXPECTED"

    const/16 v2, 0xd

    .line 37
    const/16 v3, 0x383

    const-string v4, "Unexpected error."

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/nend/android/NendStatus;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendStatus;->ERR_UNEXPECTED:Lnet/nend/android/NendStatus;

    const/16 v0, 0xe

    new-array v0, v0, [Lnet/nend/android/NendStatus;

    sget-object v1, Lnet/nend/android/NendStatus;->SUCCESS:Lnet/nend/android/NendStatus;

    aput-object v1, v0, v5

    sget-object v1, Lnet/nend/android/NendStatus;->INITIAL:Lnet/nend/android/NendStatus;

    aput-object v1, v0, v6

    sget-object v1, Lnet/nend/android/NendStatus;->ERR_INVALID_ATTRIBUTE_SET:Lnet/nend/android/NendStatus;

    aput-object v1, v0, v7

    sget-object v1, Lnet/nend/android/NendStatus;->ERR_INVALID_API_KEY:Lnet/nend/android/NendStatus;

    aput-object v1, v0, v8

    sget-object v1, Lnet/nend/android/NendStatus;->ERR_INVALID_SPOT_ID:Lnet/nend/android/NendStatus;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_INVALID_CONTEXT:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_INVALID_URL:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_INVALID_RESPONSE:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_INVALID_AD_STATUS:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_INVALID_RESPONSE_TYPE:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_HTTP_REQUEST:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_FAILED_TO_PARSE:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_OUT_OF_STOCK:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lnet/nend/android/NendStatus;->ERR_UNEXPECTED:Lnet/nend/android/NendStatus;

    aput-object v2, v0, v1

    sput-object v0, Lnet/nend/android/NendStatus;->ENUM$VALUES:[Lnet/nend/android/NendStatus;

    .line 40
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lnet/nend/android/NendStatus;->code:I

    .line 50
    iput-object p4, p0, Lnet/nend/android/NendStatus;->msg:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/nend/android/NendStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/nend/android/NendStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/nend/android/NendStatus;

    return-object v0
.end method

.method public static values()[Lnet/nend/android/NendStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/nend/android/NendStatus;->ENUM$VALUES:[Lnet/nend/android/NendStatus;

    array-length v1, v0

    new-array v2, v1, [Lnet/nend/android/NendStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getCode()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lnet/nend/android/NendStatus;->code:I

    return v0
.end method

.method getMsg()Ljava/lang/String;
    .locals 5

    .prologue
    .line 62
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s%d] %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lnet/nend/android/NendStatus;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lnet/nend/android/NendStatus;->msg:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "customMsg"    # Ljava/lang/String;

    .prologue
    .line 74
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "[%s%d] %s %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "AE"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lnet/nend/android/NendStatus;->code:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lnet/nend/android/NendStatus;->msg:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
