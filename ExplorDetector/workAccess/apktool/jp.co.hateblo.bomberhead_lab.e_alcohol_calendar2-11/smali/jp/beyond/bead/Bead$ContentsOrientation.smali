.class public final enum Ljp/beyond/bead/Bead$ContentsOrientation;
.super Ljava/lang/Enum;
.source "Bead.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/bead/Bead;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentsOrientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/bead/Bead$ContentsOrientation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

.field private static final synthetic ENUM$VALUES:[Ljp/beyond/bead/Bead$ContentsOrientation;

.field public static final enum Landscape:Ljp/beyond/bead/Bead$ContentsOrientation;

.field public static final enum Portrait:Ljp/beyond/bead/Bead$ContentsOrientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Ljp/beyond/bead/Bead$ContentsOrientation;

    const-string v1, "Portrait"

    invoke-direct {v0, v1, v2}, Ljp/beyond/bead/Bead$ContentsOrientation;-><init>(Ljava/lang/String;I)V

    .line 32
    sput-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Portrait:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 33
    new-instance v0, Ljp/beyond/bead/Bead$ContentsOrientation;

    const-string v1, "Landscape"

    invoke-direct {v0, v1, v3}, Ljp/beyond/bead/Bead$ContentsOrientation;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Landscape:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 35
    new-instance v0, Ljp/beyond/bead/Bead$ContentsOrientation;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v4}, Ljp/beyond/bead/Bead$ContentsOrientation;-><init>(Ljava/lang/String;I)V

    .line 36
    sput-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

    .line 30
    const/4 v0, 0x3

    new-array v0, v0, [Ljp/beyond/bead/Bead$ContentsOrientation;

    sget-object v1, Ljp/beyond/bead/Bead$ContentsOrientation;->Portrait:Ljp/beyond/bead/Bead$ContentsOrientation;

    aput-object v1, v0, v2

    sget-object v1, Ljp/beyond/bead/Bead$ContentsOrientation;->Landscape:Ljp/beyond/bead/Bead$ContentsOrientation;

    aput-object v1, v0, v3

    sget-object v1, Ljp/beyond/bead/Bead$ContentsOrientation;->Auto:Ljp/beyond/bead/Bead$ContentsOrientation;

    aput-object v1, v0, v4

    sput-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->ENUM$VALUES:[Ljp/beyond/bead/Bead$ContentsOrientation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/bead/Bead$ContentsOrientation;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/bead/Bead$ContentsOrientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/bead/Bead$ContentsOrientation;

    return-object v0
.end method

.method public static values()[Ljp/beyond/bead/Bead$ContentsOrientation;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/bead/Bead$ContentsOrientation;->ENUM$VALUES:[Ljp/beyond/bead/Bead$ContentsOrientation;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/bead/Bead$ContentsOrientation;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
