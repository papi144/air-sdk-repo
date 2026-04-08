.class public Lcom/adobe/air/AndroidStageText;
.super Ljava/lang/Object;
.source "AndroidStageText.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidStageText$RestrictFilter;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;,
        Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;,
        Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;
    }
.end annotation


# static fields
.field private static final ALIGN_Center:I = 0x2

.field private static final ALIGN_End:I = 0x5

.field private static final ALIGN_Justify:I = 0x3

.field private static final ALIGN_Left:I = 0x0

.field private static final ALIGN_Right:I = 0x1

.field private static final ALIGN_Start:I = 0x4

.field private static final AUTO_CAP_All:I = 0x3

.field private static final AUTO_CAP_None:I = 0x0

.field private static final AUTO_CAP_Sentence:I = 0x2

.field private static final AUTO_CAP_Word:I = 0x1

.field private static final FOCUS_DOWN:I = 0x3

.field private static final FOCUS_NONE:I = 0x1

.field private static final FOCUS_UP:I = 0x2

.field private static final KEYBOARDTYPE_Contact:I = 0x4

.field private static final KEYBOARDTYPE_Default:I = 0x0

.field private static final KEYBOARDTYPE_Email:I = 0x5

.field private static final KEYBOARDTYPE_Number:I = 0x3

.field private static final KEYBOARDTYPE_Punctuation:I = 0x1

.field private static final KEYBOARDTYPE_Url:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidStageText"

.field private static final RETURN_KEY_Default:I = 0x0

.field private static final RETURN_KEY_Done:I = 0x1

.field private static final RETURN_KEY_Go:I = 0x2

.field private static final RETURN_KEY_Next:I = 0x3

.field private static final RETURN_KEY_Search:I = 0x4


# instance fields
.field private enterKeyDispatched:Z

.field private mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mAlign:I

.field private mAutoCapitalize:I

.field private mAutoCorrect:Z

.field private mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

.field private mBackgroundColor:I

.field private mBold:Z

.field private mBorderColor:I

.field private mBounds:Landroid/graphics/Rect;

.field private mClip:Landroid/view/ViewGroup;

.field private mClipBounds:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDisableInteraction:Z

.field private mDisplayAsPassword:Z

.field private mEditable:Z

.field private mFont:Ljava/lang/String;

.field private mFontSize:I

.field private mGlobalBounds:Landroid/graphics/Rect;

.field private mInContentMenu:Z

.field private mInternalReference:J

.field private mItalic:Z

.field private mKeyboardType:I

.field private mLayout:Landroid/widget/RelativeLayout;

.field private mLocale:Ljava/lang/String;

.field private mMaxChars:I

.field private mMenuInvoked:Z

.field private mMultiline:Z

.field private mNotifyLayoutComplete:Z

.field private mPreventDefault:Z

.field private mRestrict:Ljava/lang/String;

.field private mReturnKeyLabel:I

.field private mSavedKeyListener:Landroid/text/method/KeyListener;

.field private mScaleFactor:D

.field private mSelectionChanged:Z

.field private mTextColor:I

.field private mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

.field private mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

.field private mViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/high16 v1, -0x1000000

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 572
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    .line 1666
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    .line 1668
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    .line 1669
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    .line 1670
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    .line 1671
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    .line 1672
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    .line 1673
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    .line 1674
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    .line 1675
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    .line 1676
    iput-boolean v6, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    .line 1677
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    .line 1680
    const/4 v0, 0x4

    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    .line 1681
    iput v1, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    .line 1682
    iput v7, p0, Lcom/adobe/air/AndroidStageText;->mBackgroundColor:I

    .line 1683
    iput v1, p0, Lcom/adobe/air/AndroidStageText;->mBorderColor:I

    .line 1685
    iput v4, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    .line 1686
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1687
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    .line 1688
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    .line 1689
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 1690
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    .line 1691
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 1692
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 1693
    iput-object v5, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    .line 1694
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    .line 1695
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    .line 1696
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    .line 1697
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    .line 1698
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    .line 574
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    .line 575
    iput-boolean v4, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    .line 576
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    .line 577
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    .line 578
    new-instance v0, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    .line 579
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v6}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setFillViewport(Z)V

    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 586
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v6, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setLayerType(ILandroid/graphics/Paint;)V

    .line 588
    :cond_0
    new-instance v0, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;-><init>(Lcom/adobe/air/AndroidStageText;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    .line 589
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/high16 v1, 0x12000000

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setImeOptions(I)V

    .line 590
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    .line 591
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    .line 592
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 593
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v7, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 594
    if-nez p1, :cond_1

    .line 596
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v6}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSingleLine(Z)V

    .line 603
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    .line 604
    return-void

    .line 600
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v5}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 601
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setHorizontallyScrolling(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return v0
.end method

.method static synthetic access$002(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mNotifyLayoutComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidStageText;)J
    .locals 2

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/adobe/air/AndroidStageText;J)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mInContentMenu:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->enterKeyDispatched:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/adobe/air/AndroidStageText;JII)Z
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/adobe/air/AndroidStageText;->handleKeyEvent(JII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidStageText;J)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchCompleteEvent(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidStageText;)Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AIRWindowSurfaceView;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidStageText;JI)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidStageText;->dispatchFocusIn(JI)V

    return-void
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidStageText;J)V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidStageText;->dispatchChangeEvent(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidStageText;)Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return v0
.end method

.method static synthetic access$902(Lcom/adobe/air/AndroidStageText;Z)Z
    .locals 0

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    return p1
.end method

.method private applyFilters()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1369
    .line 1371
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eqz v0, :cond_3

    move v0, v1

    .line 1372
    :goto_0
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 1374
    :cond_0
    new-array v0, v0, [Landroid/text/InputFilter;

    .line 1378
    iget v3, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eqz v3, :cond_2

    .line 1380
    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    iget v4, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v0, v2

    .line 1383
    :goto_1
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1385
    new-instance v2, Lcom/adobe/air/AndroidStageText$RestrictFilter;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lcom/adobe/air/AndroidStageText$RestrictFilter;-><init>(Lcom/adobe/air/AndroidStageText;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 1386
    add-int/lit8 v1, v1, 0x1

    .line 1388
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1389
    return-void

    :cond_2
    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private native dispatchChangeEvent(J)V
.end method

.method private native dispatchCompleteEvent(J)V
.end method

.method private native dispatchFocusIn(JI)V
.end method

.method private native dispatchFocusOut(JI)V
.end method

.method private getShapeForBounds(Landroid/graphics/Rect;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 3

    .prologue
    .line 1063
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 1064
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/shapes/RectShape;->resize(FF)V

    .line 1066
    return-object v0
.end method

.method private native handleKeyEvent(JII)Z
.end method

.method private native invokeSoftKeyboard(J)V
.end method

.method private refreshGlobalBounds(Z)V
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    if-nez v0, :cond_0

    .line 826
    :goto_0
    return-void

    .line 801
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v1, Lcom/adobe/air/AndroidStageText$2;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidStageText$2;-><init>(Lcom/adobe/air/AndroidStageText;Z)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setInputType()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 930
    .line 931
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    if-eqz v0, :cond_3

    .line 933
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 935
    const/16 v0, 0x12

    .line 960
    :goto_0
    and-int/lit8 v2, v0, 0xf

    if-ne v2, v1, :cond_0

    .line 962
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eqz v1, :cond_4

    .line 964
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 970
    :goto_1
    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eqz v1, :cond_0

    .line 972
    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    packed-switch v1, :pswitch_data_0

    .line 985
    :cond_0
    :goto_2
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-eqz v1, :cond_1

    .line 986
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 987
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setRawInputType(I)V

    .line 988
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 989
    return-void

    .line 939
    :cond_2
    const/16 v0, 0x81

    goto :goto_0

    .line 944
    :cond_3
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    packed-switch v0, :pswitch_data_1

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 948
    goto :goto_0

    .line 950
    :pswitch_1
    const/4 v0, 0x2

    .line 951
    goto :goto_0

    .line 953
    :pswitch_2
    const/16 v0, 0x21

    .line 954
    goto :goto_0

    .line 956
    :pswitch_3
    const/16 v0, 0x11

    goto :goto_0

    .line 968
    :cond_4
    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    goto :goto_1

    .line 974
    :pswitch_4
    or-int/lit16 v0, v0, 0x2000

    .line 975
    goto :goto_2

    .line 977
    :pswitch_5
    or-int/lit16 v0, v0, 0x4000

    .line 978
    goto :goto_2

    .line 980
    :pswitch_6
    or-int/lit16 v0, v0, 0x1000

    goto :goto_2

    .line 972
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 944
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addToStage(Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 5

    .prologue
    .line 646
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 647
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    .line 649
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 651
    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 652
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 653
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    .line 654
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    new-instance v1, Lcom/adobe/air/AndroidStageText$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidStageText$1;-><init>(Lcom/adobe/air/AndroidStageText;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 695
    return-void
.end method

.method public adjustViewBounds(DDDDD)V
    .locals 9

    .prologue
    .line 832
    new-instance v2, Landroid/graphics/Rect;

    double-to-int v3, p1

    double-to-int v4, p3

    add-double v6, p1, p5

    double-to-int v5, v6

    add-double v6, p3, p7

    double-to-int v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    .line 833
    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    cmpl-double v2, p9, v2

    if-eqz v2, :cond_0

    .line 835
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    .line 836
    iget v2, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    invoke-virtual {p0, v2}, Lcom/adobe/air/AndroidStageText;->setFontSize(I)V

    .line 839
    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 840
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mClip:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 842
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 844
    :cond_1
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 847
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 850
    return-void
.end method

.method public assignFocus()V
    .locals 3

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->requestFocus()Z

    .line 1546
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    if-nez v0, :cond_0

    .line 1548
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 1551
    :cond_0
    iget-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AndroidStageText;->invokeSoftKeyboard(J)V

    .line 1554
    return-void
.end method

.method public captureSnapshot(II)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const/4 v1, 0x0

    .line 1610
    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    .line 1648
    :cond_0
    :goto_0
    return-object v1

    .line 1613
    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    .line 1617
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1618
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1619
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1622
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollX()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getScrollY()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1623
    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_3

    .line 1624
    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    div-double v4, v8, v4

    double-to-float v3, v4

    iget-wide v4, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    div-double v4, v8, v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 1627
    :cond_3
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isHorizontalScrollBarEnabled()Z

    move-result v3

    .line 1628
    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->isVerticalScrollBarEnabled()Z

    move-result v4

    .line 1631
    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v10}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1632
    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v10}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    .line 1637
    :try_start_0
    iget-object v5, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v5, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1643
    :goto_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setHorizontalScrollBarEnabled(Z)V

    .line 1644
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVerticalScrollBarEnabled(Z)V

    move-object v1, v0

    .line 1648
    goto :goto_0

    .line 1638
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1639
    goto :goto_1
.end method

.method public clearFocus()V
    .locals 3

    .prologue
    .line 1559
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->clearFocus()V

    .line 1562
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 1573
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMenuInvoked:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-eqz v0, :cond_1

    .line 1574
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 1577
    :cond_1
    return-void
.end method

.method public clearRestrict()V
    .locals 1

    .prologue
    .line 1399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1400
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    .line 1401
    return-void
.end method

.method public destroyInternals()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 633
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->removeFromStage()V

    .line 635
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    .line 636
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    .line 637
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 638
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    .line 639
    return-void
.end method

.method public getAlign()I
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    return v0
.end method

.method public getAutoCapitalize()I
    .locals 1

    .prologue
    .line 1128
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBkgColor:I

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mBorderColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .prologue
    .line 1485
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    return v0
.end method

.method public getKeyboardType()I
    .locals 1

    .prologue
    .line 901
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxChars()I
    .locals 1

    .prologue
    .line 1411
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    return v0
.end method

.method public getPreventDefault()Z
    .locals 1

    .prologue
    .line 1436
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    return v0
.end method

.method public getRestrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    return-object v0
.end method

.method public getReturnKeyLabel()I
    .locals 1

    .prologue
    .line 1145
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    return v0
.end method

.method public getSelectionActiveIndex()I
    .locals 1

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method public getSelectionAnchorIndex()I
    .locals 1

    .prologue
    .line 1597
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 886
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 888
    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .prologue
    .line 1057
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    return v0
.end method

.method public onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .prologue
    .line 622
    return-void
.end method

.method public removeClip()V
    .locals 1

    .prologue
    .line 866
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 867
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 868
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 869
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 870
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 871
    return-void
.end method

.method public removeFromStage()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 700
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 703
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mLayout:Landroid/widget/RelativeLayout;

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->didRemoveOverlay()V

    .line 711
    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 713
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V

    .line 715
    :cond_1
    iput-object v2, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 716
    return-void
.end method

.method public resetGlobalBounds()V
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 793
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 794
    return-void
.end method

.method public selectRange(II)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1581
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->length()I

    move-result v1

    .line 1582
    if-gez p1, :cond_2

    move p1, v0

    .line 1586
    :cond_0
    :goto_0
    if-gez p2, :cond_3

    move p2, v0

    .line 1590
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, p1, p2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setSelection(II)V

    .line 1591
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1592
    return-void

    .line 1584
    :cond_2
    if-le p1, v1, :cond_0

    move p1, v1

    .line 1585
    goto :goto_0

    .line 1588
    :cond_3
    if-le p2, v1, :cond_1

    move p2, v1

    .line 1589
    goto :goto_1
.end method

.method public setAlign(I)V
    .locals 2

    .prologue
    .line 1452
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAlign:I

    .line 1453
    packed-switch p1, :pswitch_data_0

    .line 1468
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1469
    return-void

    .line 1456
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1460
    :pswitch_2
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1463
    :pswitch_3
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setGravity(I)V

    goto :goto_0

    .line 1453
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAutoCapitalize(I)V
    .locals 1

    .prologue
    .line 1118
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    if-eq v0, p1, :cond_0

    .line 1120
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCapitalize:I

    .line 1121
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 1124
    :cond_0
    return-void
.end method

.method public setAutoCorrect(Z)V
    .locals 1

    .prologue
    .line 1134
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    if-eq v0, p1, :cond_0

    .line 1136
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mAutoCorrect:Z

    .line 1137
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 1140
    :cond_0
    return-void
.end method

.method public setBackground(Z)V
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    if-eq v0, p1, :cond_0

    .line 1086
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBkg:Z

    .line 1087
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1089
    :cond_0
    return-void
.end method

.method public setBackgroundColor(IIII)V
    .locals 2

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBkgColor(I)V

    .line 1072
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1074
    return-void
.end method

.method public setBold(Z)V
    .locals 0

    .prologue
    .line 1492
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    .line 1493
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    .line 1494
    return-void
.end method

.method public setBorder(Z)V
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iget-boolean v0, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    if-eq v0, p1, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    iput-boolean p1, v0, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->mHaveBorder:Z

    .line 1111
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1113
    :cond_0
    return-void
.end method

.method public setBorderColor(IIII)V
    .locals 2

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBBDrawable:Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;

    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$BackgroundBorderDrawable;->setBorderColor(I)V

    .line 1095
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1097
    return-void
.end method

.method public setClipBounds(DDDD)V
    .locals 7

    .prologue
    .line 856
    new-instance v0, Landroid/graphics/Rect;

    double-to-int v1, p1

    double-to-int v2, p3

    add-double v4, p1, p5

    double-to-int v3, v4

    add-double v4, p3, p7

    double-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mClipBounds:Landroid/graphics/Rect;

    .line 857
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mViewBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    .line 858
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 859
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 860
    return-void
.end method

.method public setDisableInteraction(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1017
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    .line 1021
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v2

    .line 1022
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/text/InputFilter;

    invoke-virtual {v0, v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1024
    if-eqz p1, :cond_1

    .line 1026
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v3}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    sget-object v4, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v3, v4}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1027
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1028
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1032
    :cond_1
    iget-object v3, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v4

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_1
    invoke-virtual {v3, v4, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1033
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1034
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :goto_2
    invoke-virtual {v2, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1038
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_0

    .line 1039
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    goto :goto_0

    .line 1032
    :cond_2
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 1034
    goto :goto_2
.end method

.method public setDisplayAsPassword(Z)V
    .locals 2

    .prologue
    .line 909
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mDisplayAsPassword:Z

    .line 910
    if-eqz p1, :cond_0

    .line 912
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 924
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 925
    return-void

    .line 914
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mMultiline:Z

    if-nez v0, :cond_1

    .line 916
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-static {}, Landroid/text/method/SingleLineTransformationMethod;->getInstance()Landroid/text/method/SingleLineTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    .line 920
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0
.end method

.method public setEditable(Z)V
    .locals 4

    .prologue
    .line 994
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eq p1, v0, :cond_0

    .line 996
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    .line 997
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 1002
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1003
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_1

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v2, v3, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 1004
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 1006
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mSavedKeyListener:Landroid/text/method/KeyListener;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 1007
    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_0

    .line 1008
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 1013
    :cond_0
    return-void

    .line 1003
    :cond_1
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0

    .line 1006
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFontFamily(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1507
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    .line 1509
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    .line 1510
    return-void
.end method

.method public setFontSize(I)V
    .locals 4

    .prologue
    .line 1475
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mFontSize:I

    .line 1476
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/adobe/air/AndroidStageText;->mScaleFactor:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 1478
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextSize(IF)V

    .line 1479
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1480
    return-void
.end method

.method public setInternalReference(J)V
    .locals 1

    .prologue
    .line 626
    iput-wide p1, p0, Lcom/adobe/air/AndroidStageText;->mInternalReference:J

    .line 628
    return-void
.end method

.method public setItalic(Z)V
    .locals 0

    .prologue
    .line 1500
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    .line 1501
    invoke-virtual {p0}, Lcom/adobe/air/AndroidStageText;->updateTypeface()V

    .line 1502
    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0

    .prologue
    .line 895
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mKeyboardType:I

    .line 896
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->setInputType()V

    .line 897
    return-void
.end method

.method public setLocale(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1431
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mLocale:Ljava/lang/String;

    .line 1432
    return-void
.end method

.method public setMaxChars(I)V
    .locals 1

    .prologue
    .line 1416
    iget v0, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    if-eq p1, v0, :cond_0

    .line 1418
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mMaxChars:I

    .line 1419
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    .line 1421
    :cond_0
    return-void
.end method

.method public setPreventDefault(Z)V
    .locals 0

    .prologue
    .line 1441
    iput-boolean p1, p0, Lcom/adobe/air/AndroidStageText;->mPreventDefault:Z

    .line 1442
    return-void
.end method

.method public setRestrict(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/adobe/air/AndroidStageText;->mRestrict:Ljava/lang/String;

    .line 1406
    invoke-direct {p0}, Lcom/adobe/air/AndroidStageText;->applyFilters()V

    .line 1407
    return-void
.end method

.method public setReturnKeyLabel(I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1153
    .line 1155
    iput p1, p0, Lcom/adobe/air/AndroidStageText;->mReturnKeyLabel:I

    .line 1156
    packed-switch p1, :pswitch_data_0

    .line 1174
    :goto_0
    :pswitch_0
    const/high16 v1, 0x12000000

    or-int/2addr v0, v1

    .line 1175
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setImeOptions(I)V

    .line 1176
    return-void

    .line 1161
    :pswitch_1
    const/4 v0, 0x6

    .line 1162
    goto :goto_0

    .line 1164
    :pswitch_2
    const/4 v0, 0x2

    .line 1165
    goto :goto_0

    .line 1167
    :pswitch_3
    const/4 v0, 0x5

    .line 1168
    goto :goto_0

    .line 1170
    :pswitch_4
    const/4 v0, 0x3

    goto :goto_0

    .line 1156
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 878
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v1

    .line 879
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/text/InputFilter;

    invoke-virtual {v0, v2}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 880
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mEditable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidStageText;->mDisableInteraction:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    :goto_0
    invoke-virtual {v2, p1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 881
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 882
    return-void

    .line 880
    :cond_0
    sget-object v0, Landroid/widget/TextView$BufferType;->NORMAL:Landroid/widget/TextView$BufferType;

    goto :goto_0
.end method

.method public setTextColor(IIII)V
    .locals 2

    .prologue
    .line 1049
    invoke-static {p4, p1, p2, p3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    .line 1050
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    iget v1, p0, Lcom/adobe/air/AndroidStageText;->mTextColor:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTextColor(I)V

    .line 1052
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1053
    return-void
.end method

.method public setVisibility(Z)V
    .locals 2

    .prologue
    .line 720
    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 722
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 725
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mView:Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextImpl;->setVisibility(I)V

    .line 726
    if-eqz p1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 729
    :cond_0
    return-void

    .line 720
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public updateTypeface()V
    .locals 3

    .prologue
    .line 1515
    const/4 v0, 0x0

    .line 1516
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mBold:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 1517
    :cond_0
    iget-boolean v1, p0, Lcom/adobe/air/AndroidStageText;->mItalic:Z

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    .line 1518
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mFont:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 1519
    if-eqz v1, :cond_2

    .line 1521
    iget-object v2, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v2, v1, v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1537
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->invalidate()V

    .line 1538
    return-void

    .line 1526
    :cond_2
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1528
    :pswitch_0
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1531
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mTextView:Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText$AndroidStageTextEditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 1526
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateViewBoundsWithKeyboard(I)J
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 734
    .line 735
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 737
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_3

    .line 740
    new-instance v3, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundWidth()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/AndroidStageText;->mAIRSurface:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    invoke-direct {v3, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 742
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 747
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 748
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 749
    if-ne v1, v0, :cond_0

    move-wide v0, v4

    .line 787
    :goto_0
    return-wide v0

    .line 757
    :cond_0
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v6

    .line 758
    if-gtz v0, :cond_1

    move-wide v0, v4

    .line 762
    goto :goto_0

    .line 765
    :cond_1
    if-gt v0, v1, :cond_2

    .line 785
    :goto_1
    invoke-direct {p0, v2}, Lcom/adobe/air/AndroidStageText;->refreshGlobalBounds(Z)V

    .line 787
    int-to-long v0, v0

    goto :goto_0

    .line 778
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/adobe/air/AndroidStageText;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    .line 779
    iget-object v0, p0, Lcom/adobe/air/AndroidStageText;->mGlobalBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v1

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method
