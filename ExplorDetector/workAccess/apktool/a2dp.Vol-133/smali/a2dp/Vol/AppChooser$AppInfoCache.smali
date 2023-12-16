.class La2dp/Vol/AppChooser$AppInfoCache;
.super Ljava/lang/Object;
.source "AppChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/AppChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoCache"
.end annotation


# instance fields
.field private app_name:Ljava/lang/String;

.field private class_name:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:La2dp/Vol/AppChooser;


# direct methods
.method public constructor <init>(La2dp/Vol/AppChooser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # La2dp/Vol/AppChooser;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "cName"    # Ljava/lang/String;

    .prologue
    .line 246
    iput-object p1, p0, La2dp/Vol/AppChooser$AppInfoCache;->this$0:La2dp/Vol/AppChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p2, p0, La2dp/Vol/AppChooser$AppInfoCache;->app_name:Ljava/lang/String;

    .line 248
    iput-object p3, p0, La2dp/Vol/AppChooser$AppInfoCache;->package_name:Ljava/lang/String;

    .line 249
    iput-object p4, p0, La2dp/Vol/AppChooser$AppInfoCache;->class_name:Ljava/lang/String;

    .line 250
    const/4 v0, -0x1

    iput v0, p0, La2dp/Vol/AppChooser$AppInfoCache;->position:I

    .line 251
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, La2dp/Vol/AppChooser$AppInfoCache;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, La2dp/Vol/AppChooser$AppInfoCache;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 255
    :try_start_0
    iget-object v1, p0, La2dp/Vol/AppChooser$AppInfoCache;->this$0:La2dp/Vol/AppChooser;

    invoke-static {v1}, La2dp/Vol/AppChooser;->access$200(La2dp/Vol/AppChooser;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, La2dp/Vol/AppChooser$AppInfoCache;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 257
    :goto_0
    return-object v1

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, La2dp/Vol/AppChooser$AppInfoCache;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, La2dp/Vol/AppChooser$AppInfoCache;->position:I

    return v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 267
    iput p1, p0, La2dp/Vol/AppChooser$AppInfoCache;->position:I

    .line 268
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, La2dp/Vol/AppChooser$AppInfoCache;->app_name:Ljava/lang/String;

    return-object v0
.end method
