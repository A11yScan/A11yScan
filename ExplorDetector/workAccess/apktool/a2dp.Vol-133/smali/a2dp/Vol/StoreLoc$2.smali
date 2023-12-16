.class La2dp/Vol/StoreLoc$2;
.super Ljava/lang/Object;
.source "StoreLoc.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/StoreLoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/StoreLoc;


# direct methods
.method constructor <init>(La2dp/Vol/StoreLoc;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/StoreLoc;

    .prologue
    .line 381
    iput-object p1, p0, La2dp/Vol/StoreLoc$2;->this$0:La2dp/Vol/StoreLoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 385
    iget-object v0, p0, La2dp/Vol/StoreLoc$2;->this$0:La2dp/Vol/StoreLoc;

    invoke-virtual {v0}, La2dp/Vol/StoreLoc;->grabGPS()V

    .line 386
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 392
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 389
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 397
    return-void
.end method
