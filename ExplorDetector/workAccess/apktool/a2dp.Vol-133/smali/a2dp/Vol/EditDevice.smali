.class public La2dp/Vol/EditDevice;
.super Landroid/app/Activity;
.source "EditDevice.java"


# static fields
.field private static final ACTION_ADD_PACKAGE:I = 0x11

.field private static final ACTION_CHOOSE_APP:I = 0x2

.field private static final ACTION_CHOOSE_APP_CUSTOM:I = 0x10

.field private static final ACTION_CHOOSE_FROM_PROVIDER:I = 0xb

.field private static final ACTION_CREATE_HOME_SCREEN_SHORTCUT:I = 0xe

.field private static final ACTION_CUSTOM_INTENT:I = 0x6

.field private static final ALARM_STREAM:I = 0x2

.field private static final APP_TYPE_OPTIONS:[Ljava/lang/String;

.field private static final DIALOG_BITLY:I = 0x6

.field private static final DIALOG_PICK_APP_TYPE:I = 0x3

.field private static final DIALOG_WARN_STOP_APP:I = 0x5

.field private static final FETCH_HOME_SCREEN_SHORTCUT:I = 0xf

.field private static final IN_CALL_STREAM:I = 0x1

.field private static final MUSIC_STREAM:I


# instance fields
.field private TTsEnabled:Z

.field private appaction:Ljava/lang/String;

.field private appdata:Ljava/lang/String;

.field private appkill:Z

.field private application:La2dp/Vol/MyApplication;

.field private apprestart:Z

.field private apptype:Ljava/lang/String;

.field public btd:Ljava/lang/String;

.field private cb:Landroid/widget/Button;

.field private connbt:Landroid/widget/Button;

.field private device:La2dp/Vol/btDevice;

.field private enablegps:Z

.field private fapp:Landroid/widget/EditText;

.field private fappkill:Landroid/widget/CheckBox;

.field private fapprestart:Landroid/widget/CheckBox;

.field private fautoVol:Landroid/widget/CheckBox;

.field private fbt:Landroid/widget/EditText;

.field private fcarmodeBox:Landroid/widget/CheckBox;

.field private fdesc2:Landroid/widget/EditText;

.field private fenableGPS:Landroid/widget/CheckBox;

.field private fenableTTS:Landroid/widget/CheckBox;

.field private fgloc:Landroid/widget/CheckBox;

.field private fphonev:Landroid/widget/SeekBar;

.field private frampVol:Landroid/widget/CheckBox;

.field private fsetpv:Landroid/widget/CheckBox;

.field private fsetvol:Landroid/widget/CheckBox;

.field private fsilent:Landroid/widget/CheckBox;

.field private fsleepBox:Landroid/widget/CheckBox;

.field private fsmsdelaybar:Landroid/widget/SeekBar;

.field private fsmsdelaybox:Landroid/widget/TextView;

.field private fvol:Landroid/widget/SeekBar;

.field private fvoldelaybar:Landroid/widget/SeekBar;

.field private fvoldelaybox:Landroid/widget/TextView;

.field private fwifi:Landroid/widget/CheckBox;

.field private icongroup:Landroid/widget/RadioGroup;

.field private iconradio0:Landroid/widget/RadioButton;

.field private iconradio1:Landroid/widget/RadioButton;

.field private iconradio2:Landroid/widget/RadioButton;

.field private iconradio3:Landroid/widget/RadioButton;

.field private iconradio4:Landroid/widget/RadioButton;

.field private l1:Landroid/widget/LinearLayout;

.field private l2:Landroid/widget/LinearLayout;

.field private mAppTypeDialogOnClick:Landroid/content/DialogInterface$OnClickListener;

.field private mediadelay:Landroid/widget/TextView;

.field private myDB:La2dp/Vol/DeviceDB;

.field private pname:Ljava/lang/String;

.field preferences:Landroid/content/SharedPreferences;

.field private sb:Landroid/widget/Button;

.field smsdelaySeekBarProgress:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private startapp:Landroid/widget/Button;

.field private streamgroup:Landroid/widget/RadioGroup;

.field private streamradio0:Landroid/widget/RadioButton;

.field private streamradio1:Landroid/widget/RadioButton;

.field private streamradio2:Landroid/widget/RadioButton;

.field private ttsdelay:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;

.field private tvincallVol:Landroid/widget/TextView;

.field private tvmediavol:Landroid/widget/TextView;

.field private tvstream:Landroid/widget/TextView;

.field voldelaySeekBarProgress:Landroid/widget/SeekBar$OnSeekBarChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 99
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Choose App"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Create Shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Home Screen Shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Pandora Radio Station"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Custom Intent"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Clear App Selection"

    aput-object v2, v0, v1

    sput-object v0, La2dp/Vol/EditDevice;->APP_TYPE_OPTIONS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 448
    new-instance v0, La2dp/Vol/EditDevice$9;

    invoke-direct {v0, p0}, La2dp/Vol/EditDevice$9;-><init>(La2dp/Vol/EditDevice;)V

    iput-object v0, p0, La2dp/Vol/EditDevice;->smsdelaySeekBarProgress:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 467
    new-instance v0, La2dp/Vol/EditDevice$10;

    invoke-direct {v0, p0}, La2dp/Vol/EditDevice$10;-><init>(La2dp/Vol/EditDevice;)V

    iput-object v0, p0, La2dp/Vol/EditDevice;->voldelaySeekBarProgress:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 629
    new-instance v0, La2dp/Vol/EditDevice$11;

    invoke-direct {v0, p0}, La2dp/Vol/EditDevice$11;-><init>(La2dp/Vol/EditDevice;)V

    iput-object v0, p0, La2dp/Vol/EditDevice;->mAppTypeDialogOnClick:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private Save()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 487
    iget-object v4, p0, La2dp/Vol/EditDevice;->fdesc2:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v4

    if-ge v4, v6, :cond_1

    .line 488
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, v5, La2dp/Vol/btDevice;->desc1:Ljava/lang/String;

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setDesc2(Ljava/lang/String;)V

    .line 492
    :goto_0
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fsetvol:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setSetV(Z)V

    .line 493
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fvol:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setDefVol(I)V

    .line 494
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fgloc:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setGetLoc(Z)V

    .line 495
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setPname(Ljava/lang/String;)V

    .line 496
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fbt:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setBdevice(Ljava/lang/String;)V

    .line 497
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fwifi:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setWifi(Z)V

    .line 499
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setAppaction(Ljava/lang/String;)V

    .line 500
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setAppdata(Ljava/lang/String;)V

    .line 501
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setApptype(Ljava/lang/String;)V

    .line 502
    iget-object v4, p0, La2dp/Vol/EditDevice;->fapprestart:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, La2dp/Vol/EditDevice;->apprestart:Z

    .line 503
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-boolean v5, p0, La2dp/Vol/EditDevice;->apprestart:Z

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setApprestart(Z)V

    .line 504
    iget-object v4, p0, La2dp/Vol/EditDevice;->fappkill:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, La2dp/Vol/EditDevice;->appkill:Z

    .line 505
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-boolean v5, p0, La2dp/Vol/EditDevice;->appkill:Z

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setAppkill(Z)V

    .line 506
    iget-object v4, p0, La2dp/Vol/EditDevice;->fenableTTS:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iput-boolean v4, p0, La2dp/Vol/EditDevice;->enablegps:Z

    .line 507
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-boolean v5, p0, La2dp/Vol/EditDevice;->enablegps:Z

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setEnableTTS(Z)V

    .line 508
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fsetpv:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setSetpv(Z)V

    .line 509
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fphonev:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setPhonev(I)V

    .line 510
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fsmsdelaybar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setSmsdelay(I)V

    .line 511
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fvoldelaybar:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setVoldelay(I)V

    .line 512
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->frampVol:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setVolramp(Z)V

    .line 513
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fautoVol:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setAutovol(Z)V

    .line 514
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fsilent:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setSilent(Z)V

    .line 515
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fsleepBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setSleep(Z)V

    .line 516
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fcarmodeBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setCarmode(Z)V

    .line 518
    iget-object v4, p0, La2dp/Vol/EditDevice;->icongroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 526
    :goto_1
    iget-object v4, p0, La2dp/Vol/EditDevice;->streamgroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 533
    :goto_2
    iget-boolean v4, p0, La2dp/Vol/EditDevice;->TTsEnabled:Z

    if-nez v4, :cond_0

    iget-object v4, p0, La2dp/Vol/EditDevice;->fenableTTS:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 534
    iget-object v4, p0, La2dp/Vol/EditDevice;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 535
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "enableTTS"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 536
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 539
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    iget-object v4, p0, La2dp/Vol/EditDevice;->sb:Landroid/widget/Button;

    const-string v5, "Saving"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 541
    :try_start_0
    iget-object v4, p0, La2dp/Vol/EditDevice;->myDB:La2dp/Vol/DeviceDB;

    iget-object v5, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v4, v5}, La2dp/Vol/DeviceDB;->update(La2dp/Vol/btDevice;)V

    .line 543
    const-string v0, "a2dp.Vol.main.RELOAD_LIST"

    .line 544
    .local v0, "Ireload":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 545
    .local v3, "itent":Landroid/content/Intent;
    const-string v4, "a2dp.Vol.main.RELOAD_LIST"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 546
    const-string v4, "device"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 547
    iget-object v4, p0, La2dp/Vol/EditDevice;->application:La2dp/Vol/MyApplication;

    invoke-virtual {v4, v3}, La2dp/Vol/MyApplication;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v0    # "Ireload":Ljava/lang/String;
    .end local v3    # "itent":Landroid/content/Intent;
    :goto_3
    return-void

    .line 490
    :cond_1
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v5, p0, La2dp/Vol/EditDevice;->fdesc2:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setDesc2(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 519
    :pswitch_0
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    const/high16 v5, 0x7f020000

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setIcon(I)V

    goto :goto_1

    .line 520
    :pswitch_1
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    const v5, 0x7f020001

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setIcon(I)V

    goto :goto_1

    .line 521
    :pswitch_2
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    const v5, 0x7f020004

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setIcon(I)V

    goto :goto_1

    .line 522
    :pswitch_3
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    const v5, 0x7f020005

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setIcon(I)V

    goto :goto_1

    .line 523
    :pswitch_4
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    const v5, 0x7f020003

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setIcon(I)V

    goto/16 :goto_1

    .line 527
    :pswitch_5
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setSmsstream(I)V

    goto/16 :goto_2

    .line 528
    :pswitch_6
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v4, v6}, La2dp/Vol/btDevice;->setSmsstream(I)V

    goto/16 :goto_2

    .line 529
    :pswitch_7
    iget-object v4, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, La2dp/Vol/btDevice;->setSmsstream(I)V

    goto/16 :goto_2

    .line 548
    :catch_0
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 518
    :pswitch_data_0
    .packed-switch 0x7f0a0035
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 526
    :pswitch_data_1
    .packed-switch 0x7f0a001c
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method static synthetic access$000(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setTTSVisibility()V

    return-void
.end method

.method static synthetic access$100(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setMediaVisibility()V

    return-void
.end method

.method static synthetic access$1000(La2dp/Vol/EditDevice;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->fbt:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1100(La2dp/Vol/EditDevice;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->fsmsdelaybox:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(La2dp/Vol/EditDevice;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->fvoldelaybox:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(La2dp/Vol/EditDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1400(La2dp/Vol/EditDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(La2dp/Vol/EditDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1502(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1600(La2dp/Vol/EditDevice;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(La2dp/Vol/EditDevice;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    invoke-direct {p0}, La2dp/Vol/EditDevice;->vUpdateApp()V

    return-void
.end method

.method static synthetic access$200(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setInCallVisibility()V

    return-void
.end method

.method static synthetic access$300(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    invoke-direct {p0}, La2dp/Vol/EditDevice;->Save()V

    return-void
.end method

.method static synthetic access$400(La2dp/Vol/EditDevice;)V
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    invoke-direct {p0}, La2dp/Vol/EditDevice;->closedb()V

    return-void
.end method

.method static synthetic access$500(La2dp/Vol/EditDevice;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, La2dp/Vol/EditDevice;->APP_TYPE_OPTIONS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(La2dp/Vol/EditDevice;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->mAppTypeDialogOnClick:Landroid/content/DialogInterface$OnClickListener;

    return-object v0
.end method

.method static synthetic access$800(La2dp/Vol/EditDevice;)La2dp/Vol/DeviceDB;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->myDB:La2dp/Vol/DeviceDB;

    return-object v0
.end method

.method static synthetic access$802(La2dp/Vol/EditDevice;La2dp/Vol/DeviceDB;)La2dp/Vol/DeviceDB;
    .locals 0
    .param p0, "x0"    # La2dp/Vol/EditDevice;
    .param p1, "x1"    # La2dp/Vol/DeviceDB;

    .prologue
    .line 38
    iput-object p1, p0, La2dp/Vol/EditDevice;->myDB:La2dp/Vol/DeviceDB;

    return-object p1
.end method

.method static synthetic access$900(La2dp/Vol/EditDevice;)La2dp/Vol/MyApplication;
    .locals 1
    .param p0, "x0"    # La2dp/Vol/EditDevice;

    .prologue
    .line 38
    iget-object v0, p0, La2dp/Vol/EditDevice;->application:La2dp/Vol/MyApplication;

    return-object v0
.end method

.method private closedb()V
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, La2dp/Vol/EditDevice;->myDB:La2dp/Vol/DeviceDB;

    invoke-virtual {v0}, La2dp/Vol/DeviceDB;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 556
    return-void
.end method

.method public static getIntentUri(Landroid/content/Intent;)Ljava/lang/String;
    .locals 8
    .param p0, "i"    # Landroid/content/Intent;

    .prologue
    .line 749
    const-string v2, ""

    .line 751
    .local v2, "rtr":Ljava/lang/String;
    :try_start_0
    const-class v3, Landroid/content/Intent;

    const-string v4, "toUri"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 753
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    const-string v6, "URI_INTENT_SCHEME"

    .line 754
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 753
    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "rtr":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v2    # "rtr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 755
    .end local v2    # "rtr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 756
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/content/Intent;->toURI()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "rtr":Ljava/lang/String;
    goto :goto_0
.end method

.method private processShortcut(Landroid/content/Intent;)V
    .locals 4
    .param p1, "data"    # Landroid/content/Intent;

    .prologue
    .line 726
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 727
    .local v1, "i":Landroid/content/Intent;
    invoke-static {v1}, La2dp/Vol/EditDevice;->getIntentUri(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    .line 728
    sget-object v2, La2dp/Vol/ProviderList;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 729
    sget-object v2, La2dp/Vol/ProviderList;->EXTRA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 740
    :goto_0
    iget-object v2, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 741
    const-string v2, "custom"

    iput-object v2, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 743
    :cond_0
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    .line 744
    const-string v2, ""

    iput-object v2, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    .line 745
    invoke-direct {p0}, La2dp/Vol/EditDevice;->vUpdateApp()V

    .line 746
    return-void

    .line 732
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 735
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setAppVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 434
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 435
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 436
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapprestart:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 437
    iget-object v0, p0, La2dp/Vol/EditDevice;->fappkill:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 438
    iget-object v0, p0, La2dp/Vol/EditDevice;->fsleepBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 445
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 441
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapprestart:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 442
    iget-object v0, p0, La2dp/Vol/EditDevice;->fappkill:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 443
    iget-object v0, p0, La2dp/Vol/EditDevice;->fsleepBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0
.end method

.method private setInCallVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 424
    iget-object v0, p0, La2dp/Vol/EditDevice;->fsetpv:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p0, La2dp/Vol/EditDevice;->tvincallVol:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 426
    iget-object v0, p0, La2dp/Vol/EditDevice;->fphonev:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 431
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, La2dp/Vol/EditDevice;->tvincallVol:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 429
    iget-object v0, p0, La2dp/Vol/EditDevice;->fphonev:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMediaVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 391
    iget-object v0, p0, La2dp/Vol/EditDevice;->fsetvol:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, La2dp/Vol/EditDevice;->tvmediavol:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    iget-object v0, p0, La2dp/Vol/EditDevice;->fvol:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 394
    iget-object v0, p0, La2dp/Vol/EditDevice;->fautoVol:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 395
    iget-object v0, p0, La2dp/Vol/EditDevice;->frampVol:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 396
    iget-object v0, p0, La2dp/Vol/EditDevice;->l2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 397
    iget-object v0, p0, La2dp/Vol/EditDevice;->mediadelay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v0, p0, La2dp/Vol/EditDevice;->tvmediavol:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, La2dp/Vol/EditDevice;->fvol:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 401
    iget-object v0, p0, La2dp/Vol/EditDevice;->fautoVol:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 402
    iget-object v0, p0, La2dp/Vol/EditDevice;->frampVol:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 403
    iget-object v0, p0, La2dp/Vol/EditDevice;->l2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 404
    iget-object v0, p0, La2dp/Vol/EditDevice;->mediadelay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTTSVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, La2dp/Vol/EditDevice;->fenableTTS:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, La2dp/Vol/EditDevice;->l1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object v0, p0, La2dp/Vol/EditDevice;->ttsdelay:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 412
    iget-object v0, p0, La2dp/Vol/EditDevice;->tvstream:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 413
    iget-object v0, p0, La2dp/Vol/EditDevice;->streamgroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 421
    :goto_0
    return-void

    .line 416
    :cond_0
    iget-object v0, p0, La2dp/Vol/EditDevice;->l1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 417
    iget-object v0, p0, La2dp/Vol/EditDevice;->ttsdelay:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v0, p0, La2dp/Vol/EditDevice;->tvstream:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, La2dp/Vol/EditDevice;->streamgroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private vUpdateApp()V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v1, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, La2dp/Vol/btDevice;->setAppaction(Ljava/lang/String;)V

    .line 700
    iget-object v0, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v1, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    invoke-virtual {v0, v1}, La2dp/Vol/btDevice;->setAppdata(Ljava/lang/String;)V

    .line 701
    iget-object v0, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v1, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    invoke-virtual {v0, v1}, La2dp/Vol/btDevice;->setApptype(Ljava/lang/String;)V

    .line 702
    iget-object v0, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1}, La2dp/Vol/btDevice;->setPname(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v0}, La2dp/Vol/btDevice;->hasIntent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 705
    iget-object v0, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 706
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    iget-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 716
    :goto_0
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setAppVisibility()V

    .line 717
    return-void

    .line 707
    :cond_0
    iget-object v0, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 708
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    iget-object v1, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 710
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    iget-object v1, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 712
    :cond_2
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    const-string v1, "Custom"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 715
    :cond_3
    iget-object v0, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x3

    .line 559
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 560
    packed-switch p1, :pswitch_data_0

    .line 621
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 627
    return-void

    .line 562
    :pswitch_1
    const-string v1, "package_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 563
    const-string v1, ""

    iput-object v1, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    .line 564
    const-string v1, ""

    iput-object v1, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    .line 565
    const-string v1, ""

    iput-object v1, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    .line 567
    invoke-direct {p0}, La2dp/Vol/EditDevice;->vUpdateApp()V

    goto :goto_0

    .line 570
    :pswitch_2
    const-string v1, "package_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 571
    invoke-direct {p0}, La2dp/Vol/EditDevice;->vUpdateApp()V

    goto :goto_0

    .line 579
    :pswitch_3
    const-string v1, "package_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 580
    invoke-direct {p0}, La2dp/Vol/EditDevice;->vUpdateApp()V

    goto :goto_0

    .line 583
    :pswitch_4
    invoke-direct {p0, p3}, La2dp/Vol/EditDevice;->processShortcut(Landroid/content/Intent;)V

    goto :goto_0

    .line 587
    :pswitch_5
    const-string v1, ""

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 588
    const-string v1, "alarm_custom_action"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    .line 589
    const-string v1, "alarm_custom_data"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    .line 590
    const-string v1, "alarm_custom_type"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    .line 592
    iget-object v1, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_1

    .line 594
    :try_start_0
    iget-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    invoke-static {v1}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 595
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_1
    :goto_1
    iget-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 602
    const-string v1, "custom"

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 604
    :cond_2
    invoke-direct {p0}, La2dp/Vol/EditDevice;->vUpdateApp()V

    goto :goto_0

    .line 596
    :catch_0
    move-exception v0

    .line 597
    .local v0, "e":Ljava/net/URISyntaxException;
    const-string v1, "custom"

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 598
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_1

    .line 608
    .end local v0    # "e":Ljava/net/URISyntaxException;
    :pswitch_6
    const/16 v1, 0xf

    invoke-virtual {p0, p3, v1}, La2dp/Vol/EditDevice;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 611
    :pswitch_7
    invoke-direct {p0, p3}, La2dp/Vol/EditDevice;->processShortcut(Landroid/content/Intent;)V

    .line 612
    iget-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_3

    iget-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    const-string v2, "Custom"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    :cond_3
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->showDialog(I)V

    goto/16 :goto_0

    .line 560
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, La2dp/Vol/EditDevice;->Save()V

    .line 48
    invoke-direct {p0}, La2dp/Vol/EditDevice;->closedb()V

    .line 49
    invoke-virtual {p0}, La2dp/Vol/EditDevice;->finish()V

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 51
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v1, 0x7f040004

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->setContentView(I)V

    .line 121
    invoke-virtual {p0}, La2dp/Vol/EditDevice;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, La2dp/Vol/MyApplication;

    iput-object v1, p0, La2dp/Vol/EditDevice;->application:La2dp/Vol/MyApplication;

    .line 122
    new-instance v1, La2dp/Vol/DeviceDB;

    iget-object v2, p0, La2dp/Vol/EditDevice;->application:La2dp/Vol/MyApplication;

    invoke-direct {v1, v2}, La2dp/Vol/DeviceDB;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, La2dp/Vol/EditDevice;->myDB:La2dp/Vol/DeviceDB;

    .line 123
    const-string v1, "audio"

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 124
    .local v0, "am":Landroid/media/AudioManager;
    const v1, 0x7f0a003c

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, La2dp/Vol/EditDevice;->sb:Landroid/widget/Button;

    .line 125
    const v1, 0x7f0a003b

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, La2dp/Vol/EditDevice;->cb:Landroid/widget/Button;

    .line 126
    const v1, 0x7f0a002b

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, La2dp/Vol/EditDevice;->startapp:Landroid/widget/Button;

    .line 127
    const v1, 0x7f0a0031

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, La2dp/Vol/EditDevice;->connbt:Landroid/widget/Button;

    .line 128
    const v1, 0x7f0a0011

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fdesc2:Landroid/widget/EditText;

    .line 129
    const v1, 0x7f0a0012

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fgloc:Landroid/widget/CheckBox;

    .line 130
    const v1, 0x7f0a001f

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fsetvol:Landroid/widget/CheckBox;

    .line 131
    const v1, 0x7f0a0021

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fvol:Landroid/widget/SeekBar;

    .line 132
    const v1, 0x7f0a002c

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    .line 133
    const v1, 0x7f0a002d

    .line 134
    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fapprestart:Landroid/widget/CheckBox;

    .line 135
    const v1, 0x7f0a002e

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fappkill:Landroid/widget/CheckBox;

    .line 136
    const v1, 0x7f0a0032

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fbt:Landroid/widget/EditText;

    .line 137
    const v1, 0x7f0a0013

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fwifi:Landroid/widget/CheckBox;

    .line 139
    const v1, 0x7f0a0015

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fenableTTS:Landroid/widget/CheckBox;

    .line 140
    const v1, 0x7f0a0028

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fsetpv:Landroid/widget/CheckBox;

    .line 141
    const v1, 0x7f0a0014

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fsilent:Landroid/widget/CheckBox;

    .line 142
    const v1, 0x7f0a002a

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fphonev:Landroid/widget/SeekBar;

    .line 143
    const v1, 0x7f0a0019

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fsmsdelaybar:Landroid/widget/SeekBar;

    .line 144
    const v1, 0x7f0a0018

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fsmsdelaybox:Landroid/widget/TextView;

    .line 145
    const v1, 0x7f0a0027

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fvoldelaybar:Landroid/widget/SeekBar;

    .line 146
    const v1, 0x7f0a0026

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fvoldelaybox:Landroid/widget/TextView;

    .line 147
    const v1, 0x7f0a0010

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->tv2:Landroid/widget/TextView;

    .line 148
    const v1, 0x7f0a0023

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->frampVol:Landroid/widget/CheckBox;

    .line 149
    const v1, 0x7f0a0022

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fautoVol:Landroid/widget/CheckBox;

    .line 150
    const v1, 0x7f0a0034

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, La2dp/Vol/EditDevice;->icongroup:Landroid/widget/RadioGroup;

    .line 151
    const v1, 0x7f0a0035

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->iconradio0:Landroid/widget/RadioButton;

    .line 152
    const v1, 0x7f0a0036

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->iconradio1:Landroid/widget/RadioButton;

    .line 153
    const v1, 0x7f0a0037

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->iconradio2:Landroid/widget/RadioButton;

    .line 154
    const v1, 0x7f0a0038

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->iconradio3:Landroid/widget/RadioButton;

    .line 155
    const v1, 0x7f0a0039

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->iconradio4:Landroid/widget/RadioButton;

    .line 156
    const v1, 0x7f0a001b

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, La2dp/Vol/EditDevice;->streamgroup:Landroid/widget/RadioGroup;

    .line 157
    const v1, 0x7f0a001c

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->streamradio0:Landroid/widget/RadioButton;

    .line 158
    const v1, 0x7f0a001d

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->streamradio1:Landroid/widget/RadioButton;

    .line 159
    const v1, 0x7f0a001e

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, La2dp/Vol/EditDevice;->streamradio2:Landroid/widget/RadioButton;

    .line 160
    const v1, 0x7f0a0017

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, La2dp/Vol/EditDevice;->l1:Landroid/widget/LinearLayout;

    .line 161
    const v1, 0x7f0a0025

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, La2dp/Vol/EditDevice;->l2:Landroid/widget/LinearLayout;

    .line 162
    const v1, 0x7f0a0016

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->ttsdelay:Landroid/widget/TextView;

    .line 163
    const v1, 0x7f0a0024

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->mediadelay:Landroid/widget/TextView;

    .line 164
    const v1, 0x7f0a001a

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->tvstream:Landroid/widget/TextView;

    .line 165
    const v1, 0x7f0a0020

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->tvmediavol:Landroid/widget/TextView;

    .line 166
    const v1, 0x7f0a0029

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, La2dp/Vol/EditDevice;->tvincallVol:Landroid/widget/TextView;

    .line 167
    const v1, 0x7f0a002f

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fsleepBox:Landroid/widget/CheckBox;

    .line 168
    const v1, 0x7f0a0030

    invoke-virtual {p0, v1}, La2dp/Vol/EditDevice;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, La2dp/Vol/EditDevice;->fcarmodeBox:Landroid/widget/CheckBox;

    .line 170
    iget-object v1, p0, La2dp/Vol/EditDevice;->application:La2dp/Vol/MyApplication;

    .line 171
    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->preferences:Landroid/content/SharedPreferences;

    .line 172
    iget-object v1, p0, La2dp/Vol/EditDevice;->preferences:Landroid/content/SharedPreferences;

    const-string v2, "enableTTS"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, La2dp/Vol/EditDevice;->TTsEnabled:Z

    .line 174
    invoke-virtual {p0}, La2dp/Vol/EditDevice;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "btd"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->btd:Ljava/lang/String;

    .line 177
    iget-object v1, p0, La2dp/Vol/EditDevice;->myDB:La2dp/Vol/DeviceDB;

    iget-object v2, p0, La2dp/Vol/EditDevice;->btd:Ljava/lang/String;

    invoke-virtual {v1, v2}, La2dp/Vol/DeviceDB;->getBTD(Ljava/lang/String;)La2dp/Vol/btDevice;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    .line 179
    iget-object v1, p0, La2dp/Vol/EditDevice;->fdesc2:Landroid/widget/EditText;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget-object v2, v2, La2dp/Vol/btDevice;->desc2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, La2dp/Vol/EditDevice;->fgloc:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isGetLoc()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 181
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsetvol:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isSetV()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 182
    iget-object v1, p0, La2dp/Vol/EditDevice;->fvol:Landroid/widget/SeekBar;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 183
    iget-object v1, p0, La2dp/Vol/EditDevice;->fvol:Landroid/widget/SeekBar;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget v2, v2, La2dp/Vol/btDevice;->defVol:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 184
    iget-object v1, p0, La2dp/Vol/EditDevice;->fapp:Landroid/widget/EditText;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->getPname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, La2dp/Vol/EditDevice;->fbt:Landroid/widget/EditText;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->getBdevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v1, p0, La2dp/Vol/EditDevice;->fwifi:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isWifi()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 188
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    if-nez v1, :cond_0

    .line 189
    iget-object v1, p0, La2dp/Vol/EditDevice;->connbt:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 190
    :cond_0
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->getPname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->pname:Ljava/lang/String;

    .line 191
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->getAppaction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->appaction:Ljava/lang/String;

    .line 192
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->getAppdata()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->appdata:Ljava/lang/String;

    .line 193
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->getApptype()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La2dp/Vol/EditDevice;->apptype:Ljava/lang/String;

    .line 194
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->isApprestart()Z

    move-result v1

    iput-boolean v1, p0, La2dp/Vol/EditDevice;->apprestart:Z

    .line 195
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->isAppkill()Z

    move-result v1

    iput-boolean v1, p0, La2dp/Vol/EditDevice;->appkill:Z

    .line 197
    iget-object v1, p0, La2dp/Vol/EditDevice;->fapprestart:Landroid/widget/CheckBox;

    iget-boolean v2, p0, La2dp/Vol/EditDevice;->apprestart:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 198
    iget-object v1, p0, La2dp/Vol/EditDevice;->fappkill:Landroid/widget/CheckBox;

    iget-boolean v2, p0, La2dp/Vol/EditDevice;->appkill:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 200
    iget-object v1, p0, La2dp/Vol/EditDevice;->fenableTTS:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isEnableTTS()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 201
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsetpv:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isSetpv()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 202
    iget-object v1, p0, La2dp/Vol/EditDevice;->fphonev:Landroid/widget/SeekBar;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 203
    iget-object v1, p0, La2dp/Vol/EditDevice;->fphonev:Landroid/widget/SeekBar;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->getPhonev()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 204
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsmsdelaybar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 205
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsmsdelaybar:Landroid/widget/SeekBar;

    iget-object v2, p0, La2dp/Vol/EditDevice;->smsdelaySeekBarProgress:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 206
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsmsdelaybox:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget v3, v3, La2dp/Vol/btDevice;->smsdelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsmsdelaybar:Landroid/widget/SeekBar;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->getSmsdelay()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 208
    iget-object v1, p0, La2dp/Vol/EditDevice;->fvoldelaybar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 209
    iget-object v1, p0, La2dp/Vol/EditDevice;->fvoldelaybar:Landroid/widget/SeekBar;

    iget-object v2, p0, La2dp/Vol/EditDevice;->voldelaySeekBarProgress:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 210
    iget-object v1, p0, La2dp/Vol/EditDevice;->fvoldelaybox:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    iget v3, v3, La2dp/Vol/btDevice;->voldelay:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v1, p0, La2dp/Vol/EditDevice;->fvoldelaybar:Landroid/widget/SeekBar;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->getVoldelay()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 212
    iget-object v1, p0, La2dp/Vol/EditDevice;->frampVol:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isVolramp()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 213
    iget-object v1, p0, La2dp/Vol/EditDevice;->fautoVol:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isAutovol()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 214
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsilent:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isSilent()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 215
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsleepBox:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isSleep()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 216
    iget-object v1, p0, La2dp/Vol/EditDevice;->fcarmodeBox:Landroid/widget/CheckBox;

    iget-object v2, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v2}, La2dp/Vol/btDevice;->isCarmode()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 218
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->getIcon()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 224
    :pswitch_0
    iget-object v1, p0, La2dp/Vol/EditDevice;->iconradio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 227
    :goto_0
    iget-object v1, p0, La2dp/Vol/EditDevice;->device:La2dp/Vol/btDevice;

    invoke-virtual {v1}, La2dp/Vol/btDevice;->getSmsstream()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 231
    iget-object v1, p0, La2dp/Vol/EditDevice;->streamradio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 236
    :goto_1
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setTTSVisibility()V

    .line 237
    iget-object v1, p0, La2dp/Vol/EditDevice;->fenableTTS:Landroid/widget/CheckBox;

    new-instance v2, La2dp/Vol/EditDevice$1;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$1;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 245
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setMediaVisibility()V

    .line 246
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsetvol:Landroid/widget/CheckBox;

    new-instance v2, La2dp/Vol/EditDevice$2;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$2;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 256
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setInCallVisibility()V

    .line 257
    iget-object v1, p0, La2dp/Vol/EditDevice;->fsetpv:Landroid/widget/CheckBox;

    new-instance v2, La2dp/Vol/EditDevice$3;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$3;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    invoke-direct {p0}, La2dp/Vol/EditDevice;->setAppVisibility()V

    .line 267
    iget-object v1, p0, La2dp/Vol/EditDevice;->tv2:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 268
    invoke-direct {p0}, La2dp/Vol/EditDevice;->vUpdateApp()V

    .line 270
    iget-object v1, p0, La2dp/Vol/EditDevice;->sb:Landroid/widget/Button;

    new-instance v2, La2dp/Vol/EditDevice$4;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$4;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v1, p0, La2dp/Vol/EditDevice;->cb:Landroid/widget/Button;

    new-instance v2, La2dp/Vol/EditDevice$5;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$5;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    iget-object v1, p0, La2dp/Vol/EditDevice;->startapp:Landroid/widget/Button;

    new-instance v2, La2dp/Vol/EditDevice$6;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$6;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 332
    iget-object v1, p0, La2dp/Vol/EditDevice;->startapp:Landroid/widget/Button;

    new-instance v2, La2dp/Vol/EditDevice$7;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$7;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    iget-object v1, p0, La2dp/Vol/EditDevice;->connbt:Landroid/widget/Button;

    new-instance v2, La2dp/Vol/EditDevice$8;

    invoke-direct {v2, p0}, La2dp/Vol/EditDevice$8;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    return-void

    .line 219
    :pswitch_1
    iget-object v1, p0, La2dp/Vol/EditDevice;->iconradio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 220
    :pswitch_2
    iget-object v1, p0, La2dp/Vol/EditDevice;->iconradio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v1, p0, La2dp/Vol/EditDevice;->iconradio2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 222
    :pswitch_4
    iget-object v1, p0, La2dp/Vol/EditDevice;->iconradio3:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 223
    :pswitch_5
    iget-object v1, p0, La2dp/Vol/EditDevice;->iconradio4:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    .line 228
    :pswitch_6
    iget-object v1, p0, La2dp/Vol/EditDevice;->streamradio0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 229
    :pswitch_7
    iget-object v1, p0, La2dp/Vol/EditDevice;->streamradio1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 230
    :pswitch_8
    iget-object v1, p0, La2dp/Vol/EditDevice;->streamradio2:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x7f020000
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 227
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 763
    packed-switch p1, :pswitch_data_0

    .line 804
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v2

    :goto_0
    return-object v2

    .line 766
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 767
    .local v0, "adb2":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f070067

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 768
    sget-object v3, La2dp/Vol/EditDevice;->APP_TYPE_OPTIONS:[Ljava/lang/String;

    iget-object v4, p0, La2dp/Vol/EditDevice;->mAppTypeDialogOnClick:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 769
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 772
    .end local v0    # "adb2":Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 773
    .local v2, "pd":Landroid/app/ProgressDialog;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 774
    const-string v3, "Shortenting Url with Bit.ly..."

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 775
    invoke-virtual {v2, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_0

    .line 778
    .end local v2    # "pd":Landroid/app/ProgressDialog;
    :pswitch_3
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 779
    .local v1, "adb4":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f07005b

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 780
    const v3, 0x7f07005a

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 781
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 782
    const-string v3, "Select App"

    new-instance v4, La2dp/Vol/EditDevice$12;

    invoke-direct {v4, p0}, La2dp/Vol/EditDevice$12;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 792
    const-string v3, "Ignore"

    new-instance v4, La2dp/Vol/EditDevice$13;

    invoke-direct {v4, p0}, La2dp/Vol/EditDevice$13;-><init>(La2dp/Vol/EditDevice;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 800
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    goto :goto_0

    .line 763
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
