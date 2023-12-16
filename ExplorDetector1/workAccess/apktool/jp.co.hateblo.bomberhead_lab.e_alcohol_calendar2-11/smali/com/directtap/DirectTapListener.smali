.class public interface abstract Lcom/directtap/DirectTapListener;
.super Ljava/lang/Object;


# static fields
.field public static final DISMISS_BACK_BUTTON:I = 0x0

.field public static final DISMISS_CLOSE_BUTTON:I = 0x1

.field public static final DISMISS_DOWNLOAD:I = 0x5

.field public static final DISMISS_FINISH_BUTTON:I = 0x2

.field public static final DISMISS_METHOD_CALL:I = 0x6

.field public static final DISMISS_OPEN_URL:I = 0x4

.field public static final DISMISS_OUTSIDE:I = 0x3

.field public static final SHOW_ERROR_GUI:I = 0x1

.field public static final SHOW_ERROR_NO_APPLICATION:I = 0x0

.field public static final SHOW_NOTICE_APPLI_ALL_INSTALLED:I = 0x2

.field public static final SHOW_NOTICE_NOT_LOADED:I = 0x3


# virtual methods
.method public abstract onDismiss(Landroid/app/Activity;I)V
.end method

.method public abstract onShow(Landroid/app/Activity;)V
.end method

.method public abstract onShowNotPossible(Landroid/app/Activity;I)Z
.end method

.method public abstract onStartWaiting(Landroid/app/Activity;)V
.end method
