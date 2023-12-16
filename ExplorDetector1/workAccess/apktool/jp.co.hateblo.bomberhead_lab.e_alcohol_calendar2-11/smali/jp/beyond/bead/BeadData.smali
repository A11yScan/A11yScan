.class Ljp/beyond/bead/BeadData;
.super Ljava/lang/Object;
.source "BeadData.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2ebd70c87ed0a7c1L


# instance fields
.field private actionType:Ljava/lang/String;

.field private aid:I

.field private href:Ljava/lang/String;

.field private src:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Ljp/beyond/bead/BeadData;->actionType:Ljava/lang/String;

    return-object v0
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Ljp/beyond/bead/BeadData;->aid:I

    return v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Ljp/beyond/bead/BeadData;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Ljp/beyond/bead/BeadData;->src:Ljava/lang/String;

    return-object v0
.end method

.method public setActionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Ljp/beyond/bead/BeadData;->actionType:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setAid(I)V
    .locals 0
    .param p1, "aid"    # I

    .prologue
    .line 73
    iput p1, p0, Ljp/beyond/bead/BeadData;->aid:I

    .line 74
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Ljp/beyond/bead/BeadData;->href:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 0
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Ljp/beyond/bead/BeadData;->src:Ljava/lang/String;

    .line 58
    return-void
.end method
