.class public La2dp/Vol/btDevice;
.super Ljava/lang/Object;
.source "btDevice.java"


# instance fields
.field public appaction:Ljava/lang/String;

.field public appdata:Ljava/lang/String;

.field public appkill:Z

.field public apprestart:Z

.field public apptype:Ljava/lang/String;

.field public autovol:Z

.field public bdevice:Ljava/lang/String;

.field public carmode:Z

.field public defVol:I

.field public desc1:Ljava/lang/String;

.field public desc2:Ljava/lang/String;

.field public enableTTS:Z

.field public enablegps:Z

.field public getLoc:Z

.field public icon:I

.field public mac:Ljava/lang/String;

.field public phonev:I

.field public pname:Ljava/lang/String;

.field public setV:Z

.field public setpv:Z

.field public silent:Z

.field public sleep:Z

.field public smsdelay:I

.field public smsstream:I

.field public voldelay:I

.field public volramp:Z

.field public wifi:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    return-void
.end method


# virtual methods
.method public getAppaction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, La2dp/Vol/btDevice;->appaction:Ljava/lang/String;

    return-object v0
.end method

.method public getAppdata()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, La2dp/Vol/btDevice;->appdata:Ljava/lang/String;

    return-object v0
.end method

.method public getApptype()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, La2dp/Vol/btDevice;->apptype:Ljava/lang/String;

    return-object v0
.end method

.method public getBdevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, La2dp/Vol/btDevice;->bdevice:Ljava/lang/String;

    return-object v0
.end method

.method public getDefVol()I
    .locals 1

    .prologue
    .line 463
    iget v0, p0, La2dp/Vol/btDevice;->defVol:I

    return v0
.end method

.method public getDesc1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, La2dp/Vol/btDevice;->icon:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonev()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, La2dp/Vol/btDevice;->phonev:I

    return v0
.end method

.method public getPname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, La2dp/Vol/btDevice;->pname:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsdelay()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, La2dp/Vol/btDevice;->smsdelay:I

    return v0
.end method

.method public getSmsstream()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, La2dp/Vol/btDevice;->smsstream:I

    return v0
.end method

.method public getVoldelay()I
    .locals 1

    .prologue
    .line 523
    iget v0, p0, La2dp/Vol/btDevice;->voldelay:I

    return v0
.end method

.method public hasIntent()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .line 702
    iget-object v1, p0, La2dp/Vol/btDevice;->pname:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, La2dp/Vol/btDevice;->appdata:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 708
    :cond_0
    :goto_0
    return v0

    .line 704
    :cond_1
    iget-object v1, p0, La2dp/Vol/btDevice;->pname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    iget-object v1, p0, La2dp/Vol/btDevice;->appdata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 706
    :cond_2
    iget-object v1, p0, La2dp/Vol/btDevice;->pname:Ljava/lang/String;

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, La2dp/Vol/btDevice;->appdata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v3, :cond_0

    .line 708
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAppkill()Z
    .locals 1

    .prologue
    .line 189
    iget-boolean v0, p0, La2dp/Vol/btDevice;->appkill:Z

    return v0
.end method

.method public isApprestart()Z
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, La2dp/Vol/btDevice;->apprestart:Z

    return v0
.end method

.method public isAutovol()Z
    .locals 1

    .prologue
    .line 568
    iget-boolean v0, p0, La2dp/Vol/btDevice;->autovol:Z

    return v0
.end method

.method public isCarmode()Z
    .locals 1

    .prologue
    .line 742
    iget-boolean v0, p0, La2dp/Vol/btDevice;->carmode:Z

    return v0
.end method

.method public isEnableTTS()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, La2dp/Vol/btDevice;->enableTTS:Z

    return v0
.end method

.method public isEnablegps()Z
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, La2dp/Vol/btDevice;->enablegps:Z

    return v0
.end method

.method public isGetLoc()Z
    .locals 1

    .prologue
    .line 336
    iget-boolean v0, p0, La2dp/Vol/btDevice;->getLoc:Z

    return v0
.end method

.method public isSetV()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, La2dp/Vol/btDevice;->setV:Z

    return v0
.end method

.method public isSetpv()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, La2dp/Vol/btDevice;->setpv:Z

    return v0
.end method

.method public isSilent()Z
    .locals 1

    .prologue
    .line 598
    iget-boolean v0, p0, La2dp/Vol/btDevice;->silent:Z

    return v0
.end method

.method public isSleep()Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, La2dp/Vol/btDevice;->sleep:Z

    return v0
.end method

.method public isVolramp()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, La2dp/Vol/btDevice;->volramp:Z

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .prologue
    .line 302
    iget-boolean v0, p0, La2dp/Vol/btDevice;->wifi:Z

    return v0
.end method

.method public islEnableTTS()J
    .locals 2

    .prologue
    .line 262
    iget-boolean v0, p0, La2dp/Vol/btDevice;->enableTTS:Z

    if-eqz v0, :cond_0

    .line 263
    const-wide/16 v0, 0x1

    .line 265
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public islGetLoc()J
    .locals 2

    .prologue
    .line 340
    iget-boolean v0, p0, La2dp/Vol/btDevice;->getLoc:Z

    if-eqz v0, :cond_0

    .line 341
    const-wide/16 v0, 0x1

    .line 343
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public islSetV()J
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, La2dp/Vol/btDevice;->isSetV()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-wide/16 v0, 0x1

    .line 436
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public islSetpv()J
    .locals 2

    .prologue
    .line 53
    invoke-virtual {p0}, La2dp/Vol/btDevice;->isSetpv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const-wide/16 v0, 0x1

    .line 56
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public islWifi()J
    .locals 2

    .prologue
    .line 306
    iget-boolean v0, p0, La2dp/Vol/btDevice;->wifi:Z

    if-eqz v0, :cond_0

    .line 307
    const-wide/16 v0, 0x1

    .line 309
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lAppkill()J
    .locals 2

    .prologue
    .line 204
    iget-boolean v0, p0, La2dp/Vol/btDevice;->appkill:Z

    if-eqz v0, :cond_0

    .line 205
    const-wide/16 v0, 0x1

    .line 207
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lApprestart()J
    .locals 2

    .prologue
    .line 168
    iget-boolean v0, p0, La2dp/Vol/btDevice;->apprestart:Z

    if-eqz v0, :cond_0

    .line 169
    const-wide/16 v0, 0x1

    .line 171
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lVolramp()J
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, La2dp/Vol/btDevice;->isVolramp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 551
    const-wide/16 v0, 0x1

    .line 553
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lautovol()J
    .locals 2

    .prologue
    .line 588
    iget-boolean v0, p0, La2dp/Vol/btDevice;->autovol:Z

    if-eqz v0, :cond_0

    .line 589
    const-wide/16 v0, 0x1

    .line 591
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lcarmode()J
    .locals 2

    .prologue
    .line 746
    iget-boolean v0, p0, La2dp/Vol/btDevice;->carmode:Z

    if-eqz v0, :cond_0

    .line 747
    const-wide/16 v0, 0x1

    .line 749
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lenablegps()J
    .locals 2

    .prologue
    .line 222
    iget-boolean v0, p0, La2dp/Vol/btDevice;->enablegps:Z

    if-eqz v0, :cond_0

    .line 223
    const-wide/16 v0, 0x1

    .line 225
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lsilent()J
    .locals 2

    .prologue
    .line 617
    iget-boolean v0, p0, La2dp/Vol/btDevice;->silent:Z

    if-eqz v0, :cond_0

    .line 618
    const-wide/16 v0, 0x1

    .line 620
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public lsleep()J
    .locals 2

    .prologue
    .line 720
    iget-boolean v0, p0, La2dp/Vol/btDevice;->sleep:Z

    if-eqz v0, :cond_0

    .line 721
    const-wide/16 v0, 0x1

    .line 723
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public setAppaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "appaction"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, La2dp/Vol/btDevice;->appaction:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setAppdata(Ljava/lang/String;)V
    .locals 0
    .param p1, "appdata"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, La2dp/Vol/btDevice;->appdata:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setAppkill(I)V
    .locals 1
    .param p1, "appkill"    # I

    .prologue
    .line 215
    if-lez p1, :cond_0

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->appkill:Z

    .line 219
    :goto_0
    return-void

    .line 218
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->appkill:Z

    goto :goto_0
.end method

.method public setAppkill(Z)V
    .locals 0
    .param p1, "appkill"    # Z

    .prologue
    .line 197
    iput-boolean p1, p0, La2dp/Vol/btDevice;->appkill:Z

    .line 198
    return-void
.end method

.method public setApprestart(I)V
    .locals 1
    .param p1, "apprestart"    # I

    .prologue
    .line 179
    if-lez p1, :cond_0

    .line 180
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->apprestart:Z

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->apprestart:Z

    goto :goto_0
.end method

.method public setApprestart(Z)V
    .locals 0
    .param p1, "apprestart"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, La2dp/Vol/btDevice;->apprestart:Z

    .line 162
    return-void
.end method

.method public setApptype(Ljava/lang/String;)V
    .locals 0
    .param p1, "apptype"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, La2dp/Vol/btDevice;->apptype:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setAutovol(I)V
    .locals 1
    .param p1, "autovol"    # I

    .prologue
    .line 580
    if-lez p1, :cond_0

    .line 581
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->autovol:Z

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->autovol:Z

    goto :goto_0
.end method

.method public setAutovol(Z)V
    .locals 0
    .param p1, "autovol"    # Z

    .prologue
    .line 576
    iput-boolean p1, p0, La2dp/Vol/btDevice;->autovol:Z

    .line 577
    return-void
.end method

.method public setBdevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "bdevice"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, La2dp/Vol/btDevice;->bdevice:Ljava/lang/String;

    .line 296
    return-void
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;I)V
    .locals 4
    .param p1, "btd"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "vol"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 634
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    .line 635
    invoke-static {p2}, La2dp/Vol/FileNameCleaner;->cleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    .line 636
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    .line 637
    iput-boolean v2, p0, La2dp/Vol/btDevice;->setV:Z

    .line 638
    iput p3, p0, La2dp/Vol/btDevice;->defVol:I

    .line 639
    iput-boolean v2, p0, La2dp/Vol/btDevice;->getLoc:Z

    .line 640
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->pname:Ljava/lang/String;

    .line 641
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->bdevice:Ljava/lang/String;

    .line 642
    iput-boolean v1, p0, La2dp/Vol/btDevice;->wifi:Z

    .line 643
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->appaction:Ljava/lang/String;

    .line 644
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->appdata:Ljava/lang/String;

    .line 645
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->apptype:Ljava/lang/String;

    .line 646
    iput-boolean v1, p0, La2dp/Vol/btDevice;->apprestart:Z

    .line 647
    iput-boolean v2, p0, La2dp/Vol/btDevice;->appkill:Z

    .line 648
    iput-boolean v1, p0, La2dp/Vol/btDevice;->enableTTS:Z

    .line 649
    const/16 v0, 0xa

    iput v0, p0, La2dp/Vol/btDevice;->phonev:I

    .line 650
    iput-boolean v1, p0, La2dp/Vol/btDevice;->setpv:Z

    .line 651
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 652
    iput-boolean v1, p0, La2dp/Vol/btDevice;->autovol:Z

    .line 653
    iput v3, p0, La2dp/Vol/btDevice;->smsdelay:I

    .line 654
    iput-boolean v1, p0, La2dp/Vol/btDevice;->volramp:Z

    .line 655
    iput v3, p0, La2dp/Vol/btDevice;->voldelay:I

    .line 656
    iput-boolean v1, p0, La2dp/Vol/btDevice;->silent:Z

    .line 657
    iput-boolean v1, p0, La2dp/Vol/btDevice;->carmode:Z

    .line 658
    iput-boolean v1, p0, La2dp/Vol/btDevice;->sleep:Z

    .line 659
    return-void
.end method

.method public setBluetoothDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "s1"    # Ljava/lang/String;
    .param p2, "s2"    # Ljava/lang/String;
    .param p3, "mac"    # Ljava/lang/String;
    .param p4, "vol"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 674
    iput-object p1, p0, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    .line 675
    invoke-static {p2}, La2dp/Vol/FileNameCleaner;->cleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    .line 676
    iput-object p3, p0, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    .line 677
    iput-boolean v2, p0, La2dp/Vol/btDevice;->setV:Z

    .line 678
    iput p4, p0, La2dp/Vol/btDevice;->defVol:I

    .line 679
    iput-boolean v2, p0, La2dp/Vol/btDevice;->getLoc:Z

    .line 680
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->pname:Ljava/lang/String;

    .line 681
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->bdevice:Ljava/lang/String;

    .line 682
    iput-boolean v1, p0, La2dp/Vol/btDevice;->wifi:Z

    .line 683
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->appaction:Ljava/lang/String;

    .line 684
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->appdata:Ljava/lang/String;

    .line 685
    const-string v0, ""

    iput-object v0, p0, La2dp/Vol/btDevice;->apptype:Ljava/lang/String;

    .line 686
    iput-boolean v1, p0, La2dp/Vol/btDevice;->apprestart:Z

    .line 687
    iput-boolean v2, p0, La2dp/Vol/btDevice;->appkill:Z

    .line 688
    iput-boolean v1, p0, La2dp/Vol/btDevice;->enableTTS:Z

    .line 689
    const/16 v0, 0xa

    iput v0, p0, La2dp/Vol/btDevice;->phonev:I

    .line 690
    iput-boolean v1, p0, La2dp/Vol/btDevice;->setpv:Z

    .line 691
    const/high16 v0, 0x7f020000

    invoke-virtual {p0, v0}, La2dp/Vol/btDevice;->setIcon(I)V

    .line 692
    iput-boolean v1, p0, La2dp/Vol/btDevice;->autovol:Z

    .line 693
    iput v3, p0, La2dp/Vol/btDevice;->smsdelay:I

    .line 694
    iput-boolean v1, p0, La2dp/Vol/btDevice;->volramp:Z

    .line 695
    iput v3, p0, La2dp/Vol/btDevice;->voldelay:I

    .line 696
    iput-boolean v1, p0, La2dp/Vol/btDevice;->silent:Z

    .line 697
    iput-boolean v1, p0, La2dp/Vol/btDevice;->carmode:Z

    .line 698
    iput-boolean v1, p0, La2dp/Vol/btDevice;->sleep:Z

    .line 699
    return-void
.end method

.method public setCarmode(I)V
    .locals 1
    .param p1, "cm"    # I

    .prologue
    .line 759
    if-lez p1, :cond_0

    .line 760
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->carmode:Z

    .line 763
    :goto_0
    return-void

    .line 762
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->carmode:Z

    goto :goto_0
.end method

.method public setCarmode(Z)V
    .locals 0
    .param p1, "carmode"    # Z

    .prologue
    .line 755
    iput-boolean p1, p0, La2dp/Vol/btDevice;->carmode:Z

    .line 756
    return-void
.end method

.method public setDefVol(I)V
    .locals 0
    .param p1, "defVol"    # I

    .prologue
    .line 471
    iput p1, p0, La2dp/Vol/btDevice;->defVol:I

    .line 472
    return-void
.end method

.method public setDesc1(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc1"    # Ljava/lang/String;

    .prologue
    .line 392
    iput-object p1, p0, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    .line 393
    return-void
.end method

.method public setDesc2(Ljava/lang/String;)V
    .locals 1
    .param p1, "desc2"    # Ljava/lang/String;

    .prologue
    .line 407
    invoke-static {p1}, La2dp/Vol/FileNameCleaner;->cleanFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    .line 408
    return-void
.end method

.method public setEnableTTS(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 277
    if-lez p1, :cond_0

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->enableTTS:Z

    .line 281
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->enableTTS:Z

    goto :goto_0
.end method

.method public setEnableTTS(Z)V
    .locals 0
    .param p1, "enableTTS"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, La2dp/Vol/btDevice;->enableTTS:Z

    .line 274
    return-void
.end method

.method public setEnablegps(I)V
    .locals 1
    .param p1, "enablegps1"    # I

    .prologue
    .line 248
    if-lez p1, :cond_0

    .line 249
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->enablegps:Z

    .line 252
    :goto_0
    return-void

    .line 251
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->enablegps:Z

    goto :goto_0
.end method

.method public setEnablegps(Z)V
    .locals 0
    .param p1, "enablegps"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, La2dp/Vol/btDevice;->enablegps:Z

    .line 241
    return-void
.end method

.method public setGetLoc(I)V
    .locals 1
    .param p1, "g"    # I

    .prologue
    const/4 v0, 0x1

    .line 356
    if-lt p1, v0, :cond_0

    .line 357
    iput-boolean v0, p0, La2dp/Vol/btDevice;->getLoc:Z

    .line 360
    :goto_0
    return-void

    .line 359
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->getLoc:Z

    goto :goto_0
.end method

.method public setGetLoc(Z)V
    .locals 0
    .param p1, "getLoc"    # Z

    .prologue
    .line 352
    iput-boolean p1, p0, La2dp/Vol/btDevice;->getLoc:Z

    .line 353
    return-void
.end method

.method public setIcon(I)V
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 486
    iput p1, p0, La2dp/Vol/btDevice;->icon:I

    .line 487
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 422
    iput-object p1, p0, La2dp/Vol/btDevice;->mac:Ljava/lang/String;

    .line 423
    return-void
.end method

.method public setPhonev(I)V
    .locals 0
    .param p1, "phonev"    # I

    .prologue
    .line 86
    iput p1, p0, La2dp/Vol/btDevice;->phonev:I

    .line 87
    return-void
.end method

.method public setPname(Ljava/lang/String;)V
    .locals 0
    .param p1, "pname"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, La2dp/Vol/btDevice;->pname:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setSetV(I)V
    .locals 1
    .param p1, "sV"    # I

    .prologue
    .line 453
    if-lez p1, :cond_0

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->setV:Z

    .line 457
    :goto_0
    return-void

    .line 456
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->setV:Z

    goto :goto_0
.end method

.method public setSetV(Z)V
    .locals 0
    .param p1, "setV"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, La2dp/Vol/btDevice;->setV:Z

    .line 445
    return-void
.end method

.method public setSetpv(I)V
    .locals 1
    .param p1, "sV"    # I

    .prologue
    .line 68
    if-lez p1, :cond_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->setpv:Z

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->setpv:Z

    goto :goto_0
.end method

.method public setSetpv(Z)V
    .locals 0
    .param p1, "setpv"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, La2dp/Vol/btDevice;->setpv:Z

    .line 65
    return-void
.end method

.method public setSilent(I)V
    .locals 1
    .param p1, "silent"    # I

    .prologue
    .line 610
    if-lez p1, :cond_0

    .line 611
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->silent:Z

    .line 614
    :goto_0
    return-void

    .line 613
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->silent:Z

    goto :goto_0
.end method

.method public setSilent(Z)V
    .locals 0
    .param p1, "silent"    # Z

    .prologue
    .line 606
    iput-boolean p1, p0, La2dp/Vol/btDevice;->silent:Z

    .line 607
    return-void
.end method

.method public setSleep(I)V
    .locals 1
    .param p1, "sleep1"    # I

    .prologue
    .line 733
    if-lez p1, :cond_0

    .line 734
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->sleep:Z

    .line 737
    :goto_0
    return-void

    .line 736
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->sleep:Z

    goto :goto_0
.end method

.method public setSleep(Z)V
    .locals 0
    .param p1, "sleep"    # Z

    .prologue
    .line 729
    iput-boolean p1, p0, La2dp/Vol/btDevice;->sleep:Z

    .line 730
    return-void
.end method

.method public setSmsdelay(I)V
    .locals 0
    .param p1, "smsdelay"    # I

    .prologue
    .line 501
    iput p1, p0, La2dp/Vol/btDevice;->smsdelay:I

    .line 502
    return-void
.end method

.method public setSmsstream(I)V
    .locals 0
    .param p1, "smsstream"    # I

    .prologue
    .line 516
    iput p1, p0, La2dp/Vol/btDevice;->smsstream:I

    .line 517
    return-void
.end method

.method public setVoldelay(I)V
    .locals 0
    .param p1, "voldelay"    # I

    .prologue
    .line 531
    iput p1, p0, La2dp/Vol/btDevice;->voldelay:I

    .line 532
    return-void
.end method

.method public setVolramp(I)V
    .locals 1
    .param p1, "ramp"    # I

    .prologue
    .line 557
    if-lez p1, :cond_0

    .line 558
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->volramp:Z

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->volramp:Z

    goto :goto_0
.end method

.method public setVolramp(Z)V
    .locals 0
    .param p1, "volramp"    # Z

    .prologue
    .line 546
    iput-boolean p1, p0, La2dp/Vol/btDevice;->volramp:Z

    .line 547
    return-void
.end method

.method public setWifi(I)V
    .locals 1
    .param p1, "swifi"    # I

    .prologue
    .line 325
    if-lez p1, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, La2dp/Vol/btDevice;->wifi:Z

    .line 329
    :goto_0
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, La2dp/Vol/btDevice;->wifi:Z

    goto :goto_0
.end method

.method public setWifi(Z)V
    .locals 0
    .param p1, "wifi"    # Z

    .prologue
    .line 317
    iput-boolean p1, p0, La2dp/Vol/btDevice;->wifi:Z

    .line 318
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 375
    iget-object v0, p0, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    .line 377
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    goto :goto_0
.end method
