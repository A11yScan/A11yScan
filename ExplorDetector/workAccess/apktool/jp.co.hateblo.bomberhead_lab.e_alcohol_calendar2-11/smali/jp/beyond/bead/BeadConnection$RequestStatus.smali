.class public final enum Ljp/beyond/bead/BeadConnection$RequestStatus;
.super Ljava/lang/Enum;
.source "BeadConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/beyond/bead/BeadConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljp/beyond/bead/BeadConnection$RequestStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Connecting:Ljp/beyond/bead/BeadConnection$RequestStatus;

.field private static final synthetic ENUM$VALUES:[Ljp/beyond/bead/BeadConnection$RequestStatus;

.field public static final enum Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

.field public static final enum Received:Ljp/beyond/bead/BeadConnection$RequestStatus;

.field public static final enum Waiting:Ljp/beyond/bead/BeadConnection$RequestStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Ljp/beyond/bead/BeadConnection$RequestStatus;

    const-string v1, "Waiting"

    invoke-direct {v0, v1, v2}, Ljp/beyond/bead/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 94
    sput-object v0, Ljp/beyond/bead/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    .line 95
    new-instance v0, Ljp/beyond/bead/BeadConnection$RequestStatus;

    const-string v1, "Connecting"

    invoke-direct {v0, v1, v3}, Ljp/beyond/bead/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 96
    sput-object v0, Ljp/beyond/bead/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    .line 97
    new-instance v0, Ljp/beyond/bead/BeadConnection$RequestStatus;

    const-string v1, "Received"

    invoke-direct {v0, v1, v4}, Ljp/beyond/bead/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 98
    sput-object v0, Ljp/beyond/bead/BeadConnection$RequestStatus;->Received:Ljp/beyond/bead/BeadConnection$RequestStatus;

    .line 99
    new-instance v0, Ljp/beyond/bead/BeadConnection$RequestStatus;

    const-string v1, "Failed"

    invoke-direct {v0, v1, v5}, Ljp/beyond/bead/BeadConnection$RequestStatus;-><init>(Ljava/lang/String;I)V

    .line 100
    sput-object v0, Ljp/beyond/bead/BeadConnection$RequestStatus;->Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Ljp/beyond/bead/BeadConnection$RequestStatus;

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Waiting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    aput-object v1, v0, v2

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Connecting:Ljp/beyond/bead/BeadConnection$RequestStatus;

    aput-object v1, v0, v3

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Received:Ljp/beyond/bead/BeadConnection$RequestStatus;

    aput-object v1, v0, v4

    sget-object v1, Ljp/beyond/bead/BeadConnection$RequestStatus;->Failed:Ljp/beyond/bead/BeadConnection$RequestStatus;

    aput-object v1, v0, v5

    sput-object v0, Ljp/beyond/bead/BeadConnection$RequestStatus;->ENUM$VALUES:[Ljp/beyond/bead/BeadConnection$RequestStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljp/beyond/bead/BeadConnection$RequestStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Ljp/beyond/bead/BeadConnection$RequestStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljp/beyond/bead/BeadConnection$RequestStatus;

    return-object v0
.end method

.method public static values()[Ljp/beyond/bead/BeadConnection$RequestStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Ljp/beyond/bead/BeadConnection$RequestStatus;->ENUM$VALUES:[Ljp/beyond/bead/BeadConnection$RequestStatus;

    array-length v1, v0

    new-array v2, v1, [Ljp/beyond/bead/BeadConnection$RequestStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
