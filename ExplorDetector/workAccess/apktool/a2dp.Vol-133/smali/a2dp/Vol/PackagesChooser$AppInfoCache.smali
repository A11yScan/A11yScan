.class La2dp/Vol/PackagesChooser$AppInfoCache;
.super Ljava/lang/Object;
.source "PackagesChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La2dp/Vol/PackagesChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoCache"
.end annotation


# instance fields
.field private app_name:Ljava/lang/String;

.field private checked:Z

.field private class_name:Ljava/lang/String;

.field private package_name:Ljava/lang/String;

.field private position:I

.field final synthetic this$0:La2dp/Vol/PackagesChooser;


# direct methods
.method public constructor <init>(La2dp/Vol/PackagesChooser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # La2dp/Vol/PackagesChooser;
    .param p2, "aName"    # Ljava/lang/String;
    .param p3, "pName"    # Ljava/lang/String;
    .param p4, "cName"    # Ljava/lang/String;

    .prologue
    .line 191
    iput-object p1, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->this$0:La2dp/Vol/PackagesChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p2, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->app_name:Ljava/lang/String;

    .line 193
    iput-object p3, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->package_name:Ljava/lang/String;

    .line 194
    iput-object p4, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->class_name:Ljava/lang/String;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->position:I

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, La2dp/Vol/PackagesChooser$AppInfoCache;->setChecked(Z)V

    .line 197
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 201
    :try_start_0
    iget-object v1, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->this$0:La2dp/Vol/PackagesChooser;

    invoke-static {v1}, La2dp/Vol/PackagesChooser;->access$100(La2dp/Vol/PackagesChooser;)Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->package_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 203
    :goto_0
    return-object v1

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->package_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->position:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->checked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 237
    iput-boolean p1, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->checked:Z

    .line 238
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 213
    iput p1, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->position:I

    .line 214
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, La2dp/Vol/PackagesChooser$AppInfoCache;->app_name:Ljava/lang/String;

    return-object v0
.end method
