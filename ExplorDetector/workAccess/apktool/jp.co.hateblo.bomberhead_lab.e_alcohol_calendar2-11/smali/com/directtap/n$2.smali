.class final Lcom/directtap/n$2;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/directtap/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:J = 0x1L


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "connection_time_out"

    const-string v1, "60000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "socket_time_out"

    const-string v1, "60000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "features_max_retry"

    const-string v1, "3"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "version_check_interval"

    const-string v1, "1000000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "check_loop_interval"

    const-string v1, "60000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "install_check_period"

    const-string v1, "604800000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "icon_timing_refresh"

    const-string v1, "30000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "banner_timing_refresh"

    const-string v1, "30000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "animation_time_out"

    const-string v1, "3000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullscreen_radius"

    const-string v1, "10"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullscreen_percent"

    const-string v1, "85"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullscreen_portrait_percent"

    const-string v1, "90"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullscreen_landscape_percent"

    const-string v1, "120"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullscreen_outside_alpha"

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullscreen_margin"

    const-string v1, "5"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "close_button_ref_density"

    const-string v1, "240"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "fullscreen_timing_refresh"

    const-string v1, "180000"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "close_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "close_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "back_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "back_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "finish_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "finish_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "back_landscape_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "back_landscape_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "finish_landscape_button_position"

    const-string v1, "x"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "finish_landscape_button_position"

    const-string v1, "y"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "banner"

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "320"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "banner"

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "50"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "large-banner"

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "320"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "large-banner"

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "100"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "landscape-banner"

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "480"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "landscape-banner"

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/directtap/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "60"

    invoke-virtual {p0, v0, v1}, Lcom/directtap/n$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
