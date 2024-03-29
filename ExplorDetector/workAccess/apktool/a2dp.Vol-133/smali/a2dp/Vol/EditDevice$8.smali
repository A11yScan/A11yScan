.class La2dp/Vol/EditDevice$8;
.super Ljava/lang/Object;
.source "EditDevice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La2dp/Vol/EditDevice;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:La2dp/Vol/EditDevice;


# direct methods
.method constructor <init>(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p1, "this$0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 347
    iput-object p1, p0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 349
    iget-object v6, p0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v6}, La2dp/Vol/EditDevice;->access$800(La2dp/Vol/EditDevice;)La2dp/Vol/DeviceDB;

    move-result-object v6

    invoke-virtual {v6}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    .line 350
    invoke-static {v6}, La2dp/Vol/EditDevice;->access$800(La2dp/Vol/EditDevice;)La2dp/Vol/DeviceDB;

    move-result-object v6

    invoke-virtual {v6}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v6

    if-nez v6, :cond_0

    .line 351
    iget-object v6, p0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    new-instance v7, La2dp/Vol/DeviceDB;

    iget-object v8, p0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v8}, La2dp/Vol/EditDevice;->access$900(La2dp/Vol/EditDevice;)La2dp/Vol/MyApplication;

    move-result-object v8

    invoke-direct {v7, v8}, La2dp/Vol/DeviceDB;-><init>(Landroid/content/Context;)V

    invoke-static {v6, v7}, La2dp/Vol/EditDevice;->access$802(La2dp/Vol/EditDevice;La2dp/Vol/DeviceDB;)La2dp/Vol/DeviceDB;

    .line 352
    :cond_0
    iget-object v6, p0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    invoke-static {v6}, La2dp/Vol/EditDevice;->access$800(La2dp/Vol/EditDevice;)La2dp/Vol/DeviceDB;

    move-result-object v6

    invoke-virtual {v6}, La2dp/Vol/DeviceDB;->selectAlldb()Ljava/util/Vector;

    move-result-object v5

    .line 353
    .local v5, "vec":Ljava/util/Vector;, "Ljava/util/Vector<La2dp/Vol/btDevice;>;"
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    .line 354
    .local v3, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 355
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2dp/Vol/btDevice;

    iget-object v6, v6, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x11

    if-ge v6, v7, :cond_1

    .line 356
    invoke-virtual {v5, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 357
    add-int/lit8 v3, v3, -0x1

    .line 358
    add-int/lit8 v2, v2, -0x1

    .line 354
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 362
    :cond_2
    invoke-virtual {v5}, Ljava/util/Vector;->trimToSize()V

    .line 363
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    .line 364
    .local v4, "lstring":[Ljava/lang/String;
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 365
    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2dp/Vol/btDevice;

    iget-object v6, v6, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    aput-object v6, v4, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    :cond_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v6

    const-string v7, "none"

    aput-object v7, v4, v6

    .line 369
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, La2dp/Vol/EditDevice$8;->this$0:La2dp/Vol/EditDevice;

    invoke-direct {v1, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 371
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v6, "Bluetooth Device"

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 372
    new-instance v6, La2dp/Vol/EditDevice$8$1;

    invoke-direct {v6, p0, v5}, La2dp/Vol/EditDevice$8$1;-><init>(La2dp/Vol/EditDevice$8;Ljava/util/Vector;)V

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 381
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 382
    .local v0, "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 383
    return-void
.end method
