.class public final enum Lnet/nend/android/NendAdView$NendError;
.super Ljava/lang/Enum;
.source "NendAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/NendAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NendError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/nend/android/NendAdView$NendError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_SIZE_DIFFERENCES:Lnet/nend/android/NendAdView$NendError;

.field public static final enum AD_SIZE_TOO_LARGE:Lnet/nend/android/NendAdView$NendError;

.field private static final synthetic ENUM$VALUES:[Lnet/nend/android/NendAdView$NendError;

.field public static final enum FAILED_AD_DOWNLOAD:Lnet/nend/android/NendAdView$NendError;

.field public static final enum FAILED_AD_REQUEST:Lnet/nend/android/NendAdView$NendError;

.field public static final enum INVALID_RESPONSE_TYPE:Lnet/nend/android/NendAdView$NendError;


# instance fields
.field private final code:I

.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 615
    new-instance v0, Lnet/nend/android/NendAdView$NendError;

    const-string v1, "AD_SIZE_TOO_LARGE"

    .line 616
    const/16 v2, 0x348

    const-string v3, "Ad size will not fit on screen."

    invoke-direct {v0, v1, v4, v2, v3}, Lnet/nend/android/NendAdView$NendError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendAdView$NendError;->AD_SIZE_TOO_LARGE:Lnet/nend/android/NendAdView$NendError;

    .line 617
    new-instance v0, Lnet/nend/android/NendAdView$NendError;

    const-string v1, "INVALID_RESPONSE_TYPE"

    .line 618
    const/16 v2, 0x349

    const-string v3, "Response type is invalid."

    invoke-direct {v0, v1, v5, v2, v3}, Lnet/nend/android/NendAdView$NendError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendAdView$NendError;->INVALID_RESPONSE_TYPE:Lnet/nend/android/NendAdView$NendError;

    .line 619
    new-instance v0, Lnet/nend/android/NendAdView$NendError;

    const-string v1, "FAILED_AD_REQUEST"

    .line 620
    const/16 v2, 0x34a

    const-string v3, "Failed to Ad request."

    invoke-direct {v0, v1, v6, v2, v3}, Lnet/nend/android/NendAdView$NendError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendAdView$NendError;->FAILED_AD_REQUEST:Lnet/nend/android/NendAdView$NendError;

    .line 621
    new-instance v0, Lnet/nend/android/NendAdView$NendError;

    const-string v1, "FAILED_AD_DOWNLOAD"

    .line 622
    const/16 v2, 0x34b

    const-string v3, "Failed to Ad download."

    invoke-direct {v0, v1, v7, v2, v3}, Lnet/nend/android/NendAdView$NendError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendAdView$NendError;->FAILED_AD_DOWNLOAD:Lnet/nend/android/NendAdView$NendError;

    .line 623
    new-instance v0, Lnet/nend/android/NendAdView$NendError;

    const-string v1, "AD_SIZE_DIFFERENCES"

    .line 624
    const/16 v2, 0x34c

    const-string v3, "Ad size differences."

    invoke-direct {v0, v1, v8, v2, v3}, Lnet/nend/android/NendAdView$NendError;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendAdView$NendError;->AD_SIZE_DIFFERENCES:Lnet/nend/android/NendAdView$NendError;

    .line 613
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/nend/android/NendAdView$NendError;

    sget-object v1, Lnet/nend/android/NendAdView$NendError;->AD_SIZE_TOO_LARGE:Lnet/nend/android/NendAdView$NendError;

    aput-object v1, v0, v4

    sget-object v1, Lnet/nend/android/NendAdView$NendError;->INVALID_RESPONSE_TYPE:Lnet/nend/android/NendAdView$NendError;

    aput-object v1, v0, v5

    sget-object v1, Lnet/nend/android/NendAdView$NendError;->FAILED_AD_REQUEST:Lnet/nend/android/NendAdView$NendError;

    aput-object v1, v0, v6

    sget-object v1, Lnet/nend/android/NendAdView$NendError;->FAILED_AD_DOWNLOAD:Lnet/nend/android/NendAdView$NendError;

    aput-object v1, v0, v7

    sget-object v1, Lnet/nend/android/NendAdView$NendError;->AD_SIZE_DIFFERENCES:Lnet/nend/android/NendAdView$NendError;

    aput-object v1, v0, v8

    sput-object v0, Lnet/nend/android/NendAdView$NendError;->ENUM$VALUES:[Lnet/nend/android/NendAdView$NendError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "code"    # I
    .param p4, "message"    # Ljava/lang/String;

    .prologue
    .line 632
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 633
    iput p3, p0, Lnet/nend/android/NendAdView$NendError;->code:I

    .line 634
    iput-object p4, p0, Lnet/nend/android/NendAdView$NendError;->message:Ljava/lang/String;

    .line 635
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/nend/android/NendAdView$NendError;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/nend/android/NendAdView$NendError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/nend/android/NendAdView$NendError;

    return-object v0
.end method

.method public static values()[Lnet/nend/android/NendAdView$NendError;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/nend/android/NendAdView$NendError;->ENUM$VALUES:[Lnet/nend/android/NendAdView$NendError;

    array-length v1, v0

    new-array v2, v1, [Lnet/nend/android/NendAdView$NendError;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Lnet/nend/android/NendAdView$NendError;->code:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lnet/nend/android/NendAdView$NendError;->message:Ljava/lang/String;

    return-object v0
.end method
