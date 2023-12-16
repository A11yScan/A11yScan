.class final enum Lnet/nend/android/NendConstants$Attribute;
.super Ljava/lang/Enum;
.source "NendConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/nend/android/NendConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Attribute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/nend/android/NendConstants$Attribute;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum API_KEY:Lnet/nend/android/NendConstants$Attribute;

.field private static final synthetic ENUM$VALUES:[Lnet/nend/android/NendConstants$Attribute;

.field public static final enum RELOADABLE:Lnet/nend/android/NendConstants$Attribute;

.field public static final enum SPOT_ID:Lnet/nend/android/NendConstants$Attribute;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 104
    new-instance v0, Lnet/nend/android/NendConstants$Attribute;

    const-string v1, "SPOT_ID"

    .line 105
    const-string v2, "NendSpotId"

    invoke-direct {v0, v1, v3, v2}, Lnet/nend/android/NendConstants$Attribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$Attribute;->SPOT_ID:Lnet/nend/android/NendConstants$Attribute;

    .line 106
    new-instance v0, Lnet/nend/android/NendConstants$Attribute;

    const-string v1, "API_KEY"

    .line 107
    const-string v2, "NendApiKey"

    invoke-direct {v0, v1, v4, v2}, Lnet/nend/android/NendConstants$Attribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$Attribute;->API_KEY:Lnet/nend/android/NendConstants$Attribute;

    .line 108
    new-instance v0, Lnet/nend/android/NendConstants$Attribute;

    const-string v1, "RELOADABLE"

    .line 109
    const-string v2, "NendReloadable"

    invoke-direct {v0, v1, v5, v2}, Lnet/nend/android/NendConstants$Attribute;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/nend/android/NendConstants$Attribute;->RELOADABLE:Lnet/nend/android/NendConstants$Attribute;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/nend/android/NendConstants$Attribute;

    sget-object v1, Lnet/nend/android/NendConstants$Attribute;->SPOT_ID:Lnet/nend/android/NendConstants$Attribute;

    aput-object v1, v0, v3

    sget-object v1, Lnet/nend/android/NendConstants$Attribute;->API_KEY:Lnet/nend/android/NendConstants$Attribute;

    aput-object v1, v0, v4

    sget-object v1, Lnet/nend/android/NendConstants$Attribute;->RELOADABLE:Lnet/nend/android/NendConstants$Attribute;

    aput-object v1, v0, v5

    sput-object v0, Lnet/nend/android/NendConstants$Attribute;->ENUM$VALUES:[Lnet/nend/android/NendConstants$Attribute;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 120
    iput-object p3, p0, Lnet/nend/android/NendConstants$Attribute;->name:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/nend/android/NendConstants$Attribute;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lnet/nend/android/NendConstants$Attribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/nend/android/NendConstants$Attribute;

    return-object v0
.end method

.method public static values()[Lnet/nend/android/NendConstants$Attribute;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lnet/nend/android/NendConstants$Attribute;->ENUM$VALUES:[Lnet/nend/android/NendConstants$Attribute;

    array-length v1, v0

    new-array v2, v1, [Lnet/nend/android/NendConstants$Attribute;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lnet/nend/android/NendConstants$Attribute;->name:Ljava/lang/String;

    return-object v0
.end method
