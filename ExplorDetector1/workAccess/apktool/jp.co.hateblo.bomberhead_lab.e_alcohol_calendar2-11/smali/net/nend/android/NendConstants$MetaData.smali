.class final enum Lnet/nend/android/NendConstants$MetaData;
.super Ljava/lang/Enum;
.source "NendConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/NendConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MetaData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/nend/android/NendConstants$MetaData;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADAUTHORITY:Lnet/nend/android/NendConstants$MetaData;

.field public static final enum ADPATH:Lnet/nend/android/NendConstants$MetaData;

.field public static final enum ADSCHEME:Lnet/nend/android/NendConstants$MetaData;

.field private static final synthetic ENUM$VALUES:[Lnet/nend/android/NendConstants$MetaData;

.field public static final enum OPT_OUT_IMAGE_URL:Lnet/nend/android/NendConstants$MetaData;

.field public static final enum OPT_OUT_URL:Lnet/nend/android/NendConstants$MetaData;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 69
    new-instance v0, Lnet/nend/android/NendConstants$MetaData;

    const-string v1, "ADSCHEME"

    .line 70
    const-string v2, "NendAdScheme"

    invoke-direct {v0, v1, v3, v2}, Lnet/nend/android/NendConstants$MetaData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$MetaData;->ADSCHEME:Lnet/nend/android/NendConstants$MetaData;

    .line 71
    new-instance v0, Lnet/nend/android/NendConstants$MetaData;

    const-string v1, "ADAUTHORITY"

    .line 72
    const-string v2, "NendAdAuthority"

    invoke-direct {v0, v1, v4, v2}, Lnet/nend/android/NendConstants$MetaData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$MetaData;->ADAUTHORITY:Lnet/nend/android/NendConstants$MetaData;

    .line 73
    new-instance v0, Lnet/nend/android/NendConstants$MetaData;

    const-string v1, "ADPATH"

    .line 74
    const-string v2, "NendAdPath"

    invoke-direct {v0, v1, v5, v2}, Lnet/nend/android/NendConstants$MetaData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$MetaData;->ADPATH:Lnet/nend/android/NendConstants$MetaData;

    .line 75
    new-instance v0, Lnet/nend/android/NendConstants$MetaData;

    const-string v1, "OPT_OUT_URL"

    .line 76
    const-string v2, "NendOptOutUrl"

    invoke-direct {v0, v1, v6, v2}, Lnet/nend/android/NendConstants$MetaData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_URL:Lnet/nend/android/NendConstants$MetaData;

    .line 77
    new-instance v0, Lnet/nend/android/NendConstants$MetaData;

    const-string v1, "OPT_OUT_IMAGE_URL"

    .line 78
    const-string v2, "NendOptOutImageUrl"

    invoke-direct {v0, v1, v7, v2}, Lnet/nend/android/NendConstants$MetaData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_IMAGE_URL:Lnet/nend/android/NendConstants$MetaData;

    .line 68
    const/4 v0, 0x5

    new-array v0, v0, [Lnet/nend/android/NendConstants$MetaData;

    sget-object v1, Lnet/nend/android/NendConstants$MetaData;->ADSCHEME:Lnet/nend/android/NendConstants$MetaData;

    aput-object v1, v0, v3

    sget-object v1, Lnet/nend/android/NendConstants$MetaData;->ADAUTHORITY:Lnet/nend/android/NendConstants$MetaData;

    aput-object v1, v0, v4

    sget-object v1, Lnet/nend/android/NendConstants$MetaData;->ADPATH:Lnet/nend/android/NendConstants$MetaData;

    aput-object v1, v0, v5

    sget-object v1, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_URL:Lnet/nend/android/NendConstants$MetaData;

    aput-object v1, v0, v6

    sget-object v1, Lnet/nend/android/NendConstants$MetaData;->OPT_OUT_IMAGE_URL:Lnet/nend/android/NendConstants$MetaData;

    aput-object v1, v0, v7

    sput-object v0, Lnet/nend/android/NendConstants$MetaData;->ENUM$VALUES:[Lnet/nend/android/NendConstants$MetaData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 89
    iput-object p3, p0, Lnet/nend/android/NendConstants$MetaData;->name:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/nend/android/NendConstants$MetaData;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/nend/android/NendConstants$MetaData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/nend/android/NendConstants$MetaData;

    return-object v0
.end method

.method public static values()[Lnet/nend/android/NendConstants$MetaData;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/nend/android/NendConstants$MetaData;->ENUM$VALUES:[Lnet/nend/android/NendConstants$MetaData;

    array-length v1, v0

    new-array v2, v1, [Lnet/nend/android/NendConstants$MetaData;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lnet/nend/android/NendConstants$MetaData;->name:Ljava/lang/String;

    return-object v0
.end method
