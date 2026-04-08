.class public Lcom/adobe/air/AIRWindowSurfaceView;
.super Landroid/view/SurfaceView;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRWindowSurfaceView$5;,
        Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;,
        Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;,
        Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    }
.end annotation


# static fields
.field static final CURSOR_POS_END_DOCUMENT:I = 0x3

.field static final CURSOR_POS_END_LINE:I = 0x1

.field static final CURSOR_POS_START_DOCUMENT:I = 0x2

.field static final CURSOR_POS_START_LINE:I = 0x0

.field static final ID_COPY:I = 0x3

.field static final ID_COPY_ALL:I = 0x4

.field static final ID_CUT:I = 0x1

.field static final ID_CUT_ALL:I = 0x2

.field static final ID_PASTE:I = 0x5

.field static final ID_SELECT_ALL:I = 0x0

.field static final ID_START_SELECTING:I = 0x7

.field static final ID_STOP_SELECTING:I = 0x8

.field static final ID_SWITCH_INPUT_METHOD:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "AIRWindowSurfaceView"

.field static final LONG_PRESS_DELAY:I = 0x1f4

.field static final MAX_MOVE_ACTION_ALLOWED:I = 0x4

.field static final POST_TOUCH_MESSAGE_AFTER_DELAY:I = 0x0

.field private static final kDefaultBitsPerPixel:I = 0x20

.field private static final kMotionEventButtonSecondary:I = 0x2

.field private static final kMotionEventToolTypeEraser:I = 0x4

.field private static final kMotionEventToolTypeStylus:I = 0x2

.field private static final kTouchActionBegin:I = 0x2

.field private static final kTouchActionEnd:I = 0x4

.field private static final kTouchActionHoverBegin:I = 0x10

.field private static final kTouchActionHoverEnd:I = 0x20

.field private static final kTouchActionHoverMove:I = 0x8

.field private static final kTouchActionMove:I = 0x1

.field private static final kTouchMetaStateIsEraser:I = 0x4000000

.field private static final kTouchMetaStateIsPen:I = 0x2000000

.field private static final kTouchMetaStateMask:I = 0xe000000

.field private static final kTouchMetaStateSideButton1:I = 0x8000000


# instance fields
.field private inTouch:Z

.field public final kMultitouchGesture:I

.field public final kMultitouchNone:I

.field public final kMultitouchRaw:I

.field private final kSampleSize:F

.field private mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mBoundHeight:I

.field private mBoundWidth:I

.field private mContextMenuVisible:Z

.field private mCurrentOrientation:I

.field private mCurrentSurfaceFormat:I

.field private mDispatchUserTriggeredSkDeactivate:Z

.field private mDownX:F

.field private mDownY:F

.field private mEatTouchRelease:Z

.field protected mFlashEGL:Lcom/adobe/air/FlashEGL;

.field private mFocusedStageText:Lcom/adobe/air/AndroidStageText;

.field private mFocusedWebView:Lcom/adobe/air/AndroidWebView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

.field private mHideSoftKeyboardOnWindowFocusChange:Z

.field private mHoverInProgress:Z

.field private mHoverMetaState:I

.field private mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

.field private mHt:I

.field private mInputConnection:Lcom/adobe/air/AndroidInputConnection;

.field mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

.field private mIsFullScreen:Z

.field private mLastTouchedXCoord:F

.field private mLastTouchedYCoord:F

.field private mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

.field private mMaliWorkaround:Z

.field private mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMultitouchMode:I

.field private mNeedsCompositingSurface:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintScaled:Landroid/graphics/Paint;

.field private mResizedStageText:Lcom/adobe/air/AndroidStageText;

.field private mResizedWebView:Lcom/adobe/air/AndroidWebView;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaledTouchSlop:I

.field private mSkipHeightFromTop:I

.field private mSurfaceChangedForSoftKeyboard:Z

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceValid:Z

.field private mTextBoxBounds:Landroid/graphics/Rect;

.field private mTrackBallPressed:Z

.field private mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

.field private mVisibleBoundHeight:I

.field private mVisibleBoundWidth:I

.field private mWd:I

.field private mWindowHasFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 257
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 68
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchNone:I

    .line 69
    iput v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchRaw:I

    .line 70
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchGesture:I

    .line 72
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kSampleSize:F

    .line 84
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 85
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 86
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 87
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 89
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 90
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 91
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 92
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 93
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 94
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 98
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    .line 99
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 100
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 101
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    .line 109
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    .line 110
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 112
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 115
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 116
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 117
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 118
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 119
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 120
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 121
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 122
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 123
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 129
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    .line 130
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    .line 134
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    .line 138
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 141
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    .line 145
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 198
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 208
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 209
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 253
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-direct {v0, p0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    .line 888
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    .line 258
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 260
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 262
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    .line 264
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, p0}, Lcom/adobe/air/gestures/AIRGestureListener;-><init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    .line 265
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 266
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 268
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setWillNotDraw(Z)V

    .line 270
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setClickable(Z)V

    .line 271
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setEnabled(Z)V

    .line 272
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusable(Z)V

    .line 273
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusableInTouchMode(Z)V

    .line 274
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    .line 275
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 276
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 278
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    .line 279
    return-void
.end method

.method private AllowOSToHandleKeys(I)Z
    .locals 1

    .prologue
    .line 1950
    packed-switch p1, :pswitch_data_0

    .line 1958
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1956
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1950
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private DoSetOnSystemUiVisibilityChangeListener()V
    .locals 1

    .prologue
    .line 1316
    .line 1318
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$3;

    invoke-direct {v0, p0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$3;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1335
    return-void
.end method

.method private GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    .locals 2

    .prologue
    .line 1902
    if-eqz p3, :cond_2

    .line 1904
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1914
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1934
    :goto_0
    return-object v0

    .line 1908
    :pswitch_0
    if-eqz p2, :cond_0

    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1910
    :pswitch_1
    if-eqz p2, :cond_1

    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1912
    :pswitch_2
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1919
    :cond_2
    if-eqz p2, :cond_3

    .line 1921
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1930
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1925
    :pswitch_3
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1927
    :pswitch_4
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1934
    :cond_3
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1904
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1921
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private HandleMetaKeyAction(Landroid/view/KeyEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1877
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1894
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1895
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1898
    :cond_0
    :goto_0
    return-void

    .line 1881
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1883
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1888
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1890
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1877
    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private HandleShortCuts(ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1977
    const/16 v2, 0x17

    if-ne p1, v2, :cond_1

    .line 1981
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    if-nez v2, :cond_0

    .line 1983
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 1984
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    move v0, v1

    .line 2018
    :cond_0
    :goto_0
    return v0

    .line 1992
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1995
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 2014
    goto :goto_0

    .line 1999
    :sswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDeleteTextLine()V

    goto :goto_0

    .line 2002
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2005
    :sswitch_2
    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2008
    :sswitch_3
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    .line 2011
    :sswitch_4
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1995
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private IsIMEInFullScreen()Z
    .locals 1

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1005
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    return v0
.end method

.method private IsPointInTextBox(FFI)Z
    .locals 2

    .prologue
    .line 1852
    .line 1854
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1855
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    .line 1857
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    float-to-int v0, p1

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_2

    float-to-int v0, p1

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2

    float-to-int v0, p2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_2

    float-to-int v0, p2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_2

    .line 1861
    const/4 v0, 0x1

    .line 1868
    :goto_0
    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    .line 1869
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    .line 1871
    :cond_1
    return v0

    .line 1865
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsTouchEventHandlingAllowed(IFF)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1800
    .line 1801
    invoke-direct {p0, p2, p3, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->IsPointInTextBox(FFI)Z

    move-result v2

    .line 1803
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 1805
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    .line 1806
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    .line 1807
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 1808
    if-eqz v2, :cond_0

    .line 1810
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    .line 1835
    :cond_0
    :goto_0
    return v0

    .line 1814
    :cond_1
    if-ne p1, v0, :cond_3

    .line 1816
    if-eqz v2, :cond_0

    .line 1818
    invoke-direct {p0, p2, p3}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchMove(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1820
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v1, :cond_0

    .line 1821
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1825
    goto :goto_0

    .line 1830
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 1832
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v1, :cond_0

    .line 1833
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private IsTouchMove(FF)Z
    .locals 2

    .prologue
    .line 1840
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    sub-float/2addr v0, p1

    .line 1841
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    sub-float/2addr v1, p2

    .line 1842
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1843
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1845
    const/4 v0, 0x1

    .line 1847
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z
    .locals 0

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/air/AIRWindowSurfaceView;)I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidWebView;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidStageText;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText;
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object p1
.end method

.method static synthetic access$802(Lcom/adobe/air/AIRWindowSurfaceView;I)I
    .locals 0

    .prologue
    .line 65
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchFullScreenEvent(Z)V

    return-void
.end method

.method private hasStatusBar(Landroid/view/Window;)Z
    .locals 2

    .prologue
    .line 1309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1310
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1311
    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCutText(Z)V
.end method

.method private native nativeDeleteTextLine()V
.end method

.method private native nativeDispatchFullScreenEvent(Z)V
.end method

.method private native nativeDispatchSelectionChangeEvent(Z)V
.end method

.method private native nativeForceReDraw()V
.end method

.method private native nativeGetMultitouchMode()I
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetSoftKeyboardType()I
.end method

.method private native nativeGetTextBoxBounds()Landroid/graphics/Rect;
.end method

.method private native nativeInsertText(Ljava/lang/String;)V
.end method

.method private native nativeIsEditable()Z
.end method

.method private native nativeIsFullScreenInteractive()Z
.end method

.method private native nativeIsMultiLineTextField()Z
.end method

.method private native nativeIsPasswordField()Z
.end method

.method private native nativeIsTextFieldInSelectionMode()Z
.end method

.method private native nativeIsTextFieldSelectable()Z
.end method

.method private native nativeMoveCursor(I)V
.end method

.method private native nativeOnFormatChangeListener(I)V
.end method

.method private native nativeOnSizeChangedListener(IIZ)V
.end method

.method private native nativePerformWindowPanning(II)Z
.end method

.method private native nativeSelectAllText()V
.end method

.method private native nativeSetKeyboardVisible(Z)V
.end method

.method private native nativeSurfaceCreated()V
.end method

.method private postCheckLongPress()V
    .locals 4

    .prologue
    .line 1686
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-nez v0, :cond_0

    .line 1687
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 1688
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v0, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1689
    return-void
.end method

.method private setSurfaceFormatImpl(ZI)V
    .locals 1

    .prologue
    .line 1041
    if-eqz p1, :cond_0

    .line 1042
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$2;

    invoke-direct {v0, p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView$2;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 1051
    :goto_0
    return-void

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1049
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    goto :goto_0
.end method

.method private static supportsSystemUiFlags()Z
    .locals 2

    .prologue
    .line 1303
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1304
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static supportsSystemUiVisibilityAPI()Z
    .locals 2

    .prologue
    .line 1297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1298
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DispatchSoftKeyboardEventOnBackKey()V
    .locals 1

    .prologue
    .line 2070
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->IsIMEInFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2075
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 2077
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2079
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 2082
    :cond_2
    return-void
.end method

.method GetMetaKeyCharacter(Landroid/view/KeyEvent;)I
    .locals 3

    .prologue
    .line 1939
    const/4 v0, 0x0

    .line 1940
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_1

    .line 1941
    :cond_0
    const/4 v0, 0x1

    .line 1942
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_3

    .line 1943
    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 1944
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public HideSoftKeyboardOnWindowFocusChange()V
    .locals 1

    .prologue
    .line 1973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 1974
    return-void
.end method

.method public IsLandScape()Z
    .locals 2

    .prologue
    .line 1485
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPasswordVisibleSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2035
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "show_password"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    .line 2040
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 2035
    goto :goto_0

    .line 2037
    :catch_0
    move-exception v0

    move v0, v1

    .line 2040
    goto :goto_0
.end method

.method public IsSurfaceChangedForSoftKeyboard()Z
    .locals 1

    .prologue
    .line 2086
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    return v0
.end method

.method public IsTouchUpHandlingAllowed()Z
    .locals 1

    .prologue
    .line 2045
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    if-eqz v0, :cond_0

    .line 2047
    const/4 v0, 0x0

    .line 2049
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public RestartInput()V
    .locals 1

    .prologue
    .line 1557
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1558
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1560
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1561
    if-eqz v0, :cond_0

    .line 1563
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1565
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_1

    .line 1566
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    .line 1567
    :cond_1
    return-void
.end method

.method public SetSelectionMode(Z)V
    .locals 0

    .prologue
    .line 2054
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchSelectionChangeEvent(Z)V

    .line 2055
    return-void
.end method

.method public SetSurfaceChangedForSoftKeyboard(Z)V
    .locals 0

    .prologue
    .line 2097
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 2098
    return-void
.end method

.method public clearFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1374
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1375
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1377
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1379
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1380
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1382
    invoke-virtual {p0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1384
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1385
    if-eqz v0, :cond_2

    .line 1387
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1388
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1391
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1392
    return-void
.end method

.method protected draw(IIIILandroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 1097
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v0, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-direct {v2, p1, p2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1104
    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1106
    if-eqz v3, :cond_7

    .line 1108
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v0, v6, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1110
    invoke-static {v2, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1113
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1114
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1116
    iget v0, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 1117
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 1120
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_2

    .line 1122
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v0, v6, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1123
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1126
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 1131
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v2, :cond_3

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v4, v3

    if-le v2, v4, :cond_3

    .line 1133
    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    :cond_3
    move-object v7, v0

    move-object v0, v1

    move-object v1, v7

    .line 1143
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1146
    :try_start_1
    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1149
    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_4

    .line 1150
    const/high16 v0, -0x1000000

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1155
    :cond_4
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz v0, :cond_8

    .line 1156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1158
    const/4 v0, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1166
    :cond_5
    :goto_2
    const/4 v0, 0x0

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p5, v0, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1167
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1183
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_0

    .line 1184
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto/16 :goto_0

    .line 1138
    :cond_7
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_1

    .line 1160
    :cond_8
    :try_start_2
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_5

    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v4, 0x4

    if-eq v0, v4, :cond_5

    .line 1161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1162
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1163
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_2

    .line 1167
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1170
    :catch_0
    move-exception v0

    .line 1180
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_9
    throw v0
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 1283
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/air/AIRWindowSurfaceView;->draw(IIIILandroid/graphics/Bitmap;)V

    .line 1284
    return-void
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 0

    .prologue
    .line 1288
    invoke-virtual/range {p0 .. p11}, Lcom/adobe/air/AIRWindowSurfaceView;->drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V

    .line 1289
    return-void
.end method

.method protected drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 11

    .prologue
    .line 1190
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v2, :cond_1

    .line 1279
    :cond_0
    :goto_0
    return-void

    .line 1193
    :cond_1
    const/4 v2, 0x0

    .line 1196
    :try_start_0
    new-instance v5, Landroid/graphics/Rect;

    add-int v3, p6, p8

    add-int v4, p7, p9

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {v5, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1202
    if-eqz p10, :cond_2

    .line 1203
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v3, v4, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1207
    :goto_1
    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    if-eqz v4, :cond_b

    .line 1209
    iget v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1210
    new-instance v7, Landroid/graphics/Rect;

    const/4 v4, 0x0

    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v7, v4, v6, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1212
    invoke-static {v5, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    .line 1273
    if-eqz v2, :cond_0

    .line 1274
    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1205
    :cond_2
    :try_start_1
    new-instance v3, Landroid/graphics/Rect;

    add-int v4, p6, p8

    add-int v6, p7, p9

    move/from16 v0, p6

    move/from16 v1, p7

    invoke-direct {v3, v0, v1, v4, v6}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 1265
    :catch_0
    move-exception v3

    .line 1273
    :goto_2
    if-eqz v2, :cond_3

    .line 1274
    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1276
    :cond_3
    :goto_3
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v2, :cond_0

    .line 1277
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto :goto_0

    .line 1215
    :cond_4
    :try_start_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1216
    invoke-virtual {v4, v7}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1218
    iget v5, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 1219
    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1222
    if-nez p10, :cond_5

    move-object v3, v4

    .line 1229
    :cond_5
    if-nez p10, :cond_6

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    iget v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v7, v6

    if-le v5, v7, :cond_6

    .line 1230
    iget v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 1234
    :cond_6
    :goto_4
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, p1, p3

    add-int v7, p2, p4

    invoke-direct {v5, p1, p2, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1236
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 1237
    :try_start_3
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1240
    if-eqz p10, :cond_7

    .line 1243
    :try_start_4
    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->green(I)I

    move-result v7

    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-virtual {v3, v2, v7, v8}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 1249
    :cond_7
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz v2, :cond_9

    .line 1250
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1252
    const/4 v2, 0x0

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v7}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1261
    :cond_8
    :goto_5
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    move-object/from16 v0, p5

    invoke-virtual {v3, v0, v5, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1262
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1273
    if-eqz v3, :cond_3

    .line 1274
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    .line 1254
    :cond_9
    :try_start_5
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v7, 0x4

    if-eq v2, v7, :cond_8

    .line 1255
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 1256
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    .line 1262
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1265
    :catch_1
    move-exception v2

    move-object v2, v3

    goto/16 :goto_2

    .line 1273
    :catchall_1
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    :goto_6
    if-eqz v3, :cond_a

    .line 1274
    iget-object v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v4, v3}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_a
    throw v2

    .line 1273
    :catchall_2
    move-exception v2

    goto :goto_6

    :cond_b
    move-object v4, v5

    goto :goto_4
.end method

.method public forceSoftKeyboardDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 835
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 836
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setScrollTo(I)Z

    .line 838
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v0, :cond_0

    .line 840
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 843
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    .line 844
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 845
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 846
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2113
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2114
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getLocationInWindow([I)V

    .line 2115
    aget v1, v0, v6

    const/4 v2, 0x1

    aget v2, v0, v2

    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 2116
    return v6
.end method

.method public getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method

.method public getAppSpecifiedPixelFormat()I
    .locals 1

    .prologue
    .line 1446
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1448
    const/16 v0, 0x10

    .line 1452
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public getBoundHeight()I
    .locals 1

    .prologue
    .line 1405
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    return v0
.end method

.method public getBoundWidth()I
    .locals 1

    .prologue
    .line 1398
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    return v0
.end method

.method public getColorDepth()I
    .locals 2

    .prologue
    .line 1424
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1425
    const/16 v0, 0x10

    .line 1441
    :cond_0
    :goto_0
    return v0

    .line 1428
    :cond_1
    const/16 v0, 0x20

    .line 1430
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1431
    if-eqz v1, :cond_0

    .line 1433
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1435
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    .line 1436
    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v0

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 1438
    iget v0, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    goto :goto_0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 1571
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1573
    return-object v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .prologue
    .line 1293
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 2

    .prologue
    .line 2091
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMultitouchMode()I
    .locals 1

    .prologue
    .line 721
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    return v0
.end method

.method public getVideoView()Lcom/adobe/flashruntime/shared/VideoView;
    .locals 3

    .prologue
    .line 2102
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    if-nez v0, :cond_0

    .line 2104
    new-instance v0, Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {v0, v1, v2}, Lcom/adobe/flashruntime/air/VideoViewAIR;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    .line 2105
    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    .line 2107
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    return-object v0
.end method

.method public getVisibleBoundHeight()I
    .locals 1

    .prologue
    .line 1419
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    return v0
.end method

.method public getVisibleBoundWidth()I
    .locals 1

    .prologue
    .line 1412
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    return v0
.end method

.method public isStageTextInFocus()Z
    .locals 1

    .prologue
    .line 975
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStageWebViewInFocus()Z
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->isInTextEditingMode()Z

    move-result v0

    .line 934
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceValid()Z
    .locals 1

    .prologue
    .line 850
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    return v0
.end method

.method public native nativeDispatchUserTriggeredSkDeactivateEvent()V
.end method

.method public native nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;
.end method

.method public native nativeGetTextContentLength()I
.end method

.method public native nativeIsTextSelected()Z
.end method

.method public native nativeOnDoubleClickListener(FF)Z
.end method

.method public native nativeOnKeyListener(IIIZZZ)Z
.end method

.method public native nativeShowOriginalRect()V
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1491
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1602
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1604
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsFullScreenInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1682
    :cond_0
    :goto_0
    return-void

    .line 1606
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1608
    new-instance v4, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;

    const/4 v1, 0x0

    invoke-direct {v4, p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView$1;)V

    .line 1611
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v5

    .line 1612
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldSelectable()Z

    move-result v1

    .line 1614
    if-nez v1, :cond_2

    if-eqz v5, :cond_0

    .line 1619
    :cond_2
    if-eqz v1, :cond_5

    .line 1621
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContentLength()I

    move-result v1

    if-lez v1, :cond_8

    move v1, v2

    .line 1622
    :goto_1
    if-eqz v1, :cond_3

    .line 1624
    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_ALL:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v3, v3, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x61

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1625
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldInSelectionMode()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1627
    const/16 v6, 0x8

    sget-object v7, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_STOP_SELECTING_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v7}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1634
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v1, :cond_5

    .line 1636
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result v1

    .line 1637
    if-eqz v5, :cond_4

    .line 1639
    if-eqz v1, :cond_a

    .line 1642
    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v2, v3, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v6

    const/16 v7, 0x78

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1653
    :cond_4
    :goto_3
    if-eqz v1, :cond_b

    .line 1655
    const/4 v1, 0x3

    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v1, v3, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v6, 0x63

    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1667
    :cond_5
    :goto_4
    if-eqz v5, :cond_7

    .line 1669
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1671
    const/4 v0, 0x5

    sget-object v1, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_PASTE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v1}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1675
    :cond_6
    const/4 v0, 0x6

    sget-object v1, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_INPUT_METHOD_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v1}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1679
    :cond_7
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 1680
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 1681
    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CONTEXT_MENU_TITLE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    :cond_8
    move v1, v3

    .line 1621
    goto/16 :goto_1

    .line 1631
    :cond_9
    const/4 v6, 0x7

    sget-object v7, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v7}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1648
    :cond_a
    const/4 v6, 0x2

    sget-object v7, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v7}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v3, v6, v3, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_3

    .line 1661
    :cond_b
    const/4 v1, 0x4

    sget-object v6, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v6}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v3, v1, v3, v6}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1502
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1504
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x40000000    # 2.0f

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1505
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1508
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSoftKeyboardType()I

    move-result v0

    .line 1509
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1510
    packed-switch v0, :pswitch_data_0

    .line 1531
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1533
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1535
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsMultiLineTextField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1537
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1539
    :cond_1
    new-instance v0, Lcom/adobe/air/AndroidInputConnection;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidInputConnection;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 1540
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1541
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1542
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1550
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    return-object v0

    .line 1515
    :pswitch_1
    const/16 v0, 0x11

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1518
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1521
    :pswitch_3
    const/4 v0, 0x1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1524
    :pswitch_4
    const/16 v0, 0x21

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    .line 1546
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 1547
    const/high16 v0, 0x10000000

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    goto :goto_1

    .line 1510
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 431
    const-string v0, "AIRWindowSurfaceView"

    const-string v1, "*** *** onFocusChanged: AIR"

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    if-nez v0, :cond_0

    .line 436
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 437
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    .line 440
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 441
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 424
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 426
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 337
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 367
    :cond_0
    :goto_0
    return v0

    .line 340
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 342
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_3

    .line 345
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v3

    .line 348
    :cond_3
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleMetaKeyAction(Landroid/view/KeyEvent;)V

    .line 350
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v1, :cond_4

    .line 351
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 354
    :cond_4
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 356
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleShortCuts(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 358
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result v0

    .line 360
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v1, :cond_0

    .line 361
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto :goto_0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 2060
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2062
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    .line 2064
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 375
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 414
    :cond_0
    :goto_0
    return v0

    .line 378
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v3

    .line 379
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v1, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v0, v1, :cond_3

    .line 382
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v3

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_4

    .line 386
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 388
    :cond_4
    const/16 v0, 0x17

    if-ne p1, v0, :cond_5

    .line 389
    iput-boolean v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 391
    :cond_5
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 393
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result v0

    .line 395
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v1, :cond_6

    .line 396
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    .line 398
    :cond_6
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 408
    const/4 v0, 0x1

    goto :goto_0

    :cond_7
    move v0, v7

    .line 414
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .prologue
    .line 710
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 712
    return-void
.end method

.method public onTextBoxContextMenuItem(I)Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1709
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1710
    packed-switch p1, :pswitch_data_0

    move v0, v2

    .line 1795
    :goto_0
    return v0

    .line 1713
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSelectAllText()V

    .line 1792
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_1

    .line 1793
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_1
    move v0, v3

    .line 1795
    goto :goto_0

    .line 1717
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1718
    if-eqz v1, :cond_3

    .line 1720
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1722
    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1724
    :cond_2
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1726
    :cond_3
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1730
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iget-object v1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1731
    if-eqz v1, :cond_0

    .line 1733
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1735
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1737
    :cond_4
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1742
    :pswitch_3
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1743
    if-eqz v0, :cond_5

    .line 1744
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeInsertText(Ljava/lang/String;)V

    .line 1745
    :cond_5
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1749
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1753
    :pswitch_5
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1757
    :pswitch_6
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1758
    if-eqz v1, :cond_7

    .line 1760
    invoke-direct {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1761
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1763
    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1765
    :cond_6
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1767
    :cond_7
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1770
    :pswitch_7
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iget-object v1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1771
    if-eqz v1, :cond_0

    .line 1773
    invoke-direct {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1774
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1776
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1778
    :cond_8
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1783
    :pswitch_8
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1784
    if-eqz v0, :cond_0

    .line 1785
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 1710
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    .prologue
    .line 445
    const/16 v16, 0x1

    .line 446
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 448
    and-int/lit16 v3, v2, 0xff

    .line 449
    const/16 v2, 0x9

    if-eq v3, v2, :cond_0

    const/16 v2, 0xa

    if-eq v3, v2, :cond_0

    const/4 v2, 0x7

    if-ne v3, v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    .line 453
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 455
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v4

    .line 456
    if-eqz v4, :cond_4

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidStageText;->getPreventDefault()Z

    move-result v2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    .line 461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 462
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 463
    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v5

    .line 464
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 466
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 467
    if-eqz v6, :cond_2

    .line 469
    invoke-virtual {v6}, Landroid/view/View;->clearFocus()V

    .line 464
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 449
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 479
    :cond_4
    const/4 v2, 0x5

    if-eq v3, v2, :cond_5

    if-nez v3, :cond_6

    .line 481
    :cond_5
    const/4 v2, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 483
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 484
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-virtual {v5, v6, v7, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 490
    :cond_6
    if-nez v3, :cond_7

    .line 492
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v2}, Lcom/adobe/air/gestures/AIRGestureListener;->mayStartNewTransformGesture()V

    .line 495
    :cond_7
    const/4 v2, 0x5

    if-ne v3, v2, :cond_a

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/adobe/air/gestures/AIRGestureListener;->setPrimaryPointOfTwoFingerTap(FFI)V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/adobe/air/gestures/AIRGestureListener;->setSecondaryPointOfTwoFingerTap(FFI)V

    .line 510
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v18

    .line 517
    const/4 v3, 0x0

    .line 519
    const/4 v2, 0x0

    move/from16 v17, v2

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_17

    .line 521
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 522
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    .line 524
    move-object/from16 v0, p0

    iput v4, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    .line 525
    move-object/from16 v0, p0

    iput v5, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    .line 527
    const/4 v9, 0x1

    .line 528
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 529
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 530
    const/4 v6, 0x0

    .line 532
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    .line 534
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0xe

    if-lt v10, v11, :cond_1d

    .line 535
    const v10, -0xe000001

    and-int/2addr v2, v10

    .line 536
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v10

    .line 537
    const/4 v11, 0x4

    if-ne v10, v11, :cond_d

    .line 538
    const/high16 v10, 0x4000000

    or-int/2addr v2, v10

    .line 542
    :cond_9
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1d

    .line 543
    const/high16 v10, 0x8000000

    or-int/2addr v2, v10

    move v12, v2

    .line 546
    :goto_6
    if-eqz v3, :cond_e

    .line 548
    const/4 v2, 0x3

    .line 549
    const/4 v8, 0x4

    move v13, v2

    move v14, v8

    move v15, v3

    move v2, v6

    .line 598
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v5}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchEventHandlingAllowed(IFF)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 601
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    .line 604
    if-nez v7, :cond_10

    const/4 v10, 0x1

    .line 607
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v19

    .line 608
    add-int/lit8 v3, v19, 0x1

    mul-int/lit8 v3, v3, 0x3

    new-array v11, v3, [F

    .line 609
    const/4 v6, 0x0

    .line 610
    const/4 v3, 0x0

    move v9, v6

    :goto_9
    move/from16 v0, v19

    if-ge v3, v0, :cond_11

    .line 612
    add-int/lit8 v6, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v20

    aput v20, v11, v9

    .line 613
    add-int/lit8 v9, v6, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v20

    aput v20, v11, v6

    .line 614
    add-int/lit8 v6, v9, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v20

    aput v20, v11, v9

    .line 610
    add-int/lit8 v3, v3, 0x1

    move v9, v6

    goto :goto_9

    .line 503
    :cond_a
    const/4 v2, 0x6

    if-ne v3, v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v2}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 505
    :cond_b
    const/4 v2, 0x1

    if-ne v3, v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v2}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 507
    :cond_c
    const/4 v2, 0x2

    if-eq v3, v2, :cond_8

    .line 508
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 540
    :cond_d
    const/4 v11, 0x2

    if-ne v10, v11, :cond_9

    .line 541
    const/high16 v10, 0x2000000

    or-int/2addr v2, v10

    goto/16 :goto_5

    .line 551
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_f

    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v2, v2, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-ne v7, v2, :cond_1c

    .line 554
    :cond_f
    and-int/lit16 v8, v8, 0xff

    .line 556
    packed-switch v8, :pswitch_data_0

    .line 592
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    .line 593
    const/4 v2, 0x1

    move v13, v8

    move v14, v2

    move v15, v3

    move v2, v6

    goto/16 :goto_7

    .line 559
    :pswitch_1
    const/16 v2, 0x10

    move v13, v8

    move v14, v2

    move v15, v3

    move v2, v6

    .line 560
    goto/16 :goto_7

    .line 562
    :pswitch_2
    const/16 v2, 0x20

    move v13, v8

    move v14, v2

    move v15, v3

    move v2, v6

    .line 563
    goto/16 :goto_7

    .line 565
    :pswitch_3
    const/16 v9, 0x8

    .line 567
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xe

    if-ge v2, v10, :cond_1c

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v2, v10, v11}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    .line 570
    move-object/from16 v0, p0

    iput v12, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 571
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    if-nez v2, :cond_1c

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    const/4 v6, 0x0

    const-wide/16 v10, 0x1f4

    invoke-virtual {v2, v6, v10, v11}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 574
    const/4 v2, 0x1

    .line 575
    const/4 v6, 0x1

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    move v13, v8

    move v14, v9

    move v15, v3

    goto/16 :goto_7

    .line 581
    :pswitch_4
    const/4 v2, 0x2

    move v13, v8

    move v14, v2

    move v15, v3

    move v2, v6

    .line 582
    goto/16 :goto_7

    .line 584
    :pswitch_5
    const/4 v2, 0x1

    .line 587
    :goto_a
    const/4 v3, 0x4

    .line 588
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-virtual {v9}, Lcom/adobe/air/gestures/AIRGestureListener;->endTwoFingerGesture()Z

    .line 589
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/adobe/air/gestures/AIRGestureListener;->setCheckForSwipe(Z)V

    move v13, v8

    move v14, v3

    move v15, v2

    move v2, v6

    .line 590
    goto/16 :goto_7

    .line 604
    :cond_10
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 617
    :cond_11
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v6

    .line 620
    aput v4, v11, v9

    .line 621
    add-int/lit8 v3, v9, 0x1

    aput v5, v11, v3

    .line 622
    add-int/lit8 v3, v9, 0x2

    aput v6, v11, v3

    .line 625
    and-int/lit8 v12, v12, -0x2

    .line 628
    const/4 v3, 0x0

    .line 629
    sparse-switch v14, :sswitch_data_0

    .line 651
    :cond_12
    :goto_b
    if-eqz v3, :cond_13

    .line 653
    new-instance v2, Lcom/adobe/air/TouchEventData;

    move v9, v8

    invoke-direct/range {v2 .. v12}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 663
    if-eqz v16, :cond_15

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v2, v9}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    :goto_c
    move/from16 v16, v2

    .line 666
    :cond_13
    const/16 v2, 0x8

    if-eq v14, v2, :cond_1b

    const/4 v2, 0x1

    if-eq v14, v2, :cond_1b

    .line 668
    const/4 v2, 0x3

    if-ne v13, v2, :cond_14

    .line 670
    or-int/lit8 v12, v12, 0x1

    .line 673
    :cond_14
    new-instance v2, Lcom/adobe/air/TouchEventData;

    const/4 v11, 0x0

    move v3, v14

    move v9, v8

    invoke-direct/range {v2 .. v12}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 683
    if-eqz v16, :cond_16

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    .line 519
    :goto_d
    add-int/lit8 v3, v17, 0x1

    move/from16 v17, v3

    move/from16 v16, v2

    move v3, v15

    goto/16 :goto_4

    .line 632
    :sswitch_0
    const/16 v3, 0x8

    .line 633
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v19, 0xe

    move/from16 v0, v19

    if-ge v9, v0, :cond_12

    .line 636
    if-eqz v2, :cond_12

    .line 639
    const/16 v3, 0x18

    goto :goto_b

    .line 645
    :sswitch_1
    const/4 v3, 0x1

    .line 646
    goto :goto_b

    .line 663
    :cond_15
    const/4 v2, 0x0

    goto :goto_c

    .line 683
    :cond_16
    const/4 v2, 0x0

    goto :goto_d

    :cond_17
    move/from16 v2, v16

    .line 695
    :goto_e
    if-eqz v2, :cond_19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_19

    const/4 v2, 0x1

    .line 702
    :goto_f
    if-eqz v2, :cond_1a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    .line 703
    :goto_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 704
    return v2

    .line 690
    :cond_18
    const/4 v2, 0x0

    goto :goto_e

    .line 695
    :cond_19
    const/4 v2, 0x0

    goto :goto_f

    .line 702
    :cond_1a
    const/4 v2, 0x0

    goto :goto_10

    .line 697
    :catch_0
    move-exception v3

    goto :goto_f

    :cond_1b
    move/from16 v2, v16

    goto :goto_d

    :cond_1c
    move v2, v6

    move v13, v8

    move v14, v9

    move v15, v3

    goto/16 :goto_7

    :pswitch_6
    move v2, v3

    goto/16 :goto_a

    :cond_1d
    move v12, v2

    goto/16 :goto_6

    .line 556
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 629
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 296
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    if-eqz v0, :cond_2

    .line 301
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 302
    if-eqz v0, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 306
    :cond_1
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 308
    :cond_2
    if-eqz p1, :cond_3

    .line 311
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 312
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 316
    const/16 v0, 0x1706

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSystemUiVisibility(I)V

    .line 330
    :cond_3
    return-void
.end method

.method public panStageTextInFocus()J
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-nez v0, :cond_0

    .line 988
    const-wide/16 v0, 0x0

    .line 999
    :goto_0
    return-wide v0

    .line 996
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 999
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public panStageWebViewInFocus()J
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-nez v0, :cond_0

    .line 947
    const-wide/16 v0, 0x0

    .line 958
    :goto_0
    return-wide v0

    .line 955
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 958
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1579
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    if-eqz v1, :cond_2

    .line 1581
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1582
    if-eqz v1, :cond_2

    .line 1584
    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v3, v1, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v1, v2, v1

    if-ltz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-eqz v1, :cond_2

    .line 1588
    :cond_1
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 1589
    invoke-super {p0}, Landroid/view/SurfaceView;->performLongClick()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1591
    const/4 v0, 0x1

    .line 1596
    :cond_2
    return v0
.end method

.method public returnThis()Landroid/view/View;
    .locals 0

    .prologue
    .line 288
    return-object p0
.end method

.method public setCompositingHint(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1084
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    .line 1085
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    if-eq v0, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1092
    :cond_1
    :goto_0
    return-void

    .line 1091
    :cond_2
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    goto :goto_0
.end method

.method public setFlashEGL(Lcom/adobe/air/FlashEGL;)V
    .locals 0

    .prologue
    .line 2028
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 2029
    return-void
.end method

.method public setFullScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v0, 0x1

    .line 1339
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v1, :cond_3

    .line 1341
    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1342
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1344
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1346
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1349
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_1

    .line 1350
    const/16 v0, 0x1007

    .line 1351
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1353
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1356
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1357
    if-eqz v0, :cond_5

    .line 1359
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1363
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1365
    :cond_4
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1368
    :cond_5
    return-void
.end method

.method public setInputConnection(Lcom/adobe/air/AndroidInputConnection;)V
    .locals 0

    .prologue
    .line 2023
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 2024
    return-void
.end method

.method public setMultitouchMode(I)V
    .locals 0

    .prologue
    .line 716
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    .line 717
    return-void
.end method

.method public setScrollTo(I)Z
    .locals 2

    .prologue
    .line 1011
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1014
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 1015
    if-eqz v0, :cond_0

    .line 1019
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView$1;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;ILandroid/widget/RelativeLayout;)V

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 1036
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setSurfaceFormat(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1055
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1058
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->needsCompositingSurface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isGingerbread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    .line 1080
    :goto_0
    return-void

    .line 1061
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0

    .line 1069
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-eqz v0, :cond_3

    .line 1071
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0

    .line 1075
    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0
.end method

.method public showActionScript2Warning()V
    .locals 3

    .prologue
    .line 1460
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1461
    if-eqz v0, :cond_0

    .line 1463
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1465
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1466
    const-string v0, "Your application is attempting to run ActionScript2.0, which is not supported on smart phone profile. \nSee the Adobe Developer Connection for more info www.adobe.com/devnet"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1467
    const/4 v0, 0x1

    invoke-static {v2, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 1469
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1470
    const-string v0, "Action Script 2.0"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1471
    const-string v0, "OK"

    new-instance v2, Lcom/adobe/air/AIRWindowSurfaceView$4;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRWindowSurfaceView$4;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1477
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1479
    :cond_0
    return-void
.end method

.method public showSoftKeyboard(Z)V
    .locals 0

    .prologue
    .line 914
    invoke-virtual {p0, p1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 915
    return-void
.end method

.method public showSoftKeyboard(ZLandroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 893
    const-string v0, "AIRWindowSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSoftKeyboard show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 895
    if-nez p1, :cond_2

    .line 897
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v1, :cond_0

    .line 899
    iput-boolean v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 902
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    .line 904
    :cond_1
    invoke-direct {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    .line 910
    :goto_0
    return-void

    .line 908
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-virtual {v0, p2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 746
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 747
    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 749
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 750
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 752
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 753
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 758
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnFormatChangeListener(I)V

    .line 760
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v0, :cond_0

    .line 762
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 763
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceInitialized()V

    .line 764
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetMultitouchMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setMultitouchMode(I)V

    .line 766
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-eqz v0, :cond_2

    .line 768
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 769
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    .line 770
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    if-ne v3, v0, :cond_4

    .line 772
    if-eq v3, v1, :cond_1

    const/4 v0, 0x2

    if-ne v3, v0, :cond_5

    :cond_1
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    if-ge p4, v0, :cond_5

    .line 776
    if-nez p4, :cond_3

    .line 831
    :cond_2
    :goto_0
    return-void

    .line 777
    :cond_3
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v0, p4

    .line 778
    invoke-direct {p0, v3, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativePerformWindowPanning(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 780
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    goto :goto_0

    .line 797
    :cond_4
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(Z)V

    .line 798
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 799
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 802
    :cond_5
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    if-eq v0, v3, :cond_7

    move v0, v1

    .line 804
    :goto_1
    iput v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 805
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 806
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 810
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p0, v1, v3, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnSizeChangedListener(IIZ)V

    .line 814
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object v0

    .line 815
    iget-boolean v1, v0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    if-eqz v1, :cond_6

    .line 817
    iget v1, v0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v3, v0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {v0, v1, v3}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 818
    iput-boolean v2, v0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    .line 823
    :cond_6
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeForceReDraw()V

    .line 828
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    goto :goto_0

    :cond_7
    move v0, v2

    .line 802
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .prologue
    .line 727
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 730
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSurfaceCreated()V

    .line 740
    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .prologue
    .line 856
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 857
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    invoke-interface {v0}, Lcom/adobe/air/FlashEGL;->DestroyWindowSurface()Z

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceDestroyed()V

    .line 859
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 860
    return-void
.end method

.method public updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V
    .locals 1

    .prologue
    .line 963
    if-eqz p2, :cond_1

    .line 964
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-ne v0, p1, :cond_0

    .line 966
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    goto :goto_0
.end method

.method public updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V
    .locals 1

    .prologue
    .line 919
    if-eqz p2, :cond_1

    .line 920
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    .line 923
    :cond_0
    :goto_0
    return-void

    .line 921
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-ne v0, p1, :cond_0

    .line 922
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    goto :goto_0
.end method
