.class public Lcom/adobe/air/gestures/AIRGestureListener;
.super Ljava/lang/Object;
.source "AIRGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRGestureListener"

.field private static final MAX_TOUCH_POINTS:I = 0x2

.field private static final MM_PER_INCH:F = 25.4f

.field private static final _FP_GESTURE_PAN_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ROTATION_THRESHOLD_DEGREES:F = 15.0f

.field private static final _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM:F = 10.0f

.field private static final _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM:F = 5.0f

.field private static final _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ZOOM_THRESHOLD_MM:F = 8.0f

.field private static final kGestureAll:I = 0x8

.field private static final kGestureBegin:I = 0x2

.field private static final kGestureEnd:I = 0x4

.field private static final kGesturePan:I = 0x1

.field private static final kGestureRotate:I = 0x2

.field private static final kGestureSwipe:I = 0x5

.field private static final kGestureTwoFingerTap:I = 0x3

.field private static final kGestureUpdate:I = 0x1

.field private static final kGestureZoom:I

.field private static screenPPI:I


# instance fields
.field private mCheckForSwipe:Z

.field private mCouldBeTwoFingerTap:I

.field private mDidOccurTwoFingerGesture:Z

.field private mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mInPanTransformGesture:Z

.field private mInRotateTransformGesture:Z

.field private mInZoomTransformGesture:Z

.field private mInZoomTransformGestureX:Z

.field private mInZoomTransformGestureY:Z

.field private mPreviousAbsoluteRotation:F

.field private mPreviousPanLocX:F

.field private mPreviousPanLocY:F

.field private mPreviousRotateLocX:F

.field private mPreviousRotateLocY:F

.field private mPreviousZoomLocX:F

.field private mPreviousZoomLocY:F

.field private mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mTwoFingerTapStartTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 63
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 64
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 65
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 66
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 67
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 69
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 70
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 71
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 72
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 73
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 74
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    .line 76
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    .line 77
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 89
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    .line 90
    iput-object v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 91
    iput-object v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    .line 157
    iput-object p2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 159
    new-array v1, v4, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    iput-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 160
    :goto_0
    if-ge v0, v4, :cond_0

    .line 162
    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    new-instance v2, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v2, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    aput-object v2, v1, v0

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 166
    invoke-static {p1}, Lcom/adobe/air/SystemCapabilities;->GetScreenDPI(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    .line 167
    return-void
.end method

.method private distanceBetweenPoints(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)D
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 916
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private endPanGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 324
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_0

    .line 330
    const/4 v1, 0x4

    .line 340
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 341
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    move-object v0, p0

    move v3, v2

    move v7, v6

    move v9, v8

    move v10, v8

    .line 343
    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 344
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    goto :goto_0
.end method

.method private endRotateGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 270
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-eqz v0, :cond_0

    .line 276
    const/4 v1, 0x4

    .line 286
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 287
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 289
    const/4 v3, 0x1

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 290
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    goto :goto_0
.end method

.method private endZoomGesture()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 296
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v1, 0x4

    .line 312
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 313
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 315
    const/4 v3, 0x1

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 316
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 317
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 318
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    goto :goto_0
.end method

.method private getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F
    .locals 10

    .prologue
    const-wide v8, 0x4066800000000000L    # 180.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    .line 858
    const/4 v0, 0x0

    .line 859
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 862
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    div-double/2addr v0, v6

    .line 864
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    .line 866
    sub-double v0, v2, v0

    double-to-float v0, v0

    .line 869
    :cond_0
    return v0
.end method

.method private isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 883
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 884
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 886
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 887
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 889
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 890
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 891
    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 896
    cmpl-float v6, v0, v7

    if-ltz v6, :cond_0

    cmpl-float v6, v2, v7

    if-gez v6, :cond_1

    :cond_0
    cmpg-float v0, v0, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v2, v7

    if-gtz v0, :cond_5

    :cond_1
    cmpl-float v0, v1, v7

    if-ltz v0, :cond_2

    cmpl-float v0, v3, v7

    if-gez v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v3, v7

    if-gtz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v0, :cond_4

    const/high16 v0, 0x40400000    # 3.0f

    sget v1, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x41cb3333    # 25.4f

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_5

    .line 904
    :cond_4
    const/4 v0, 0x1

    .line 906
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnGestureListener(IIZFFFFFFF)Z
.end method


# virtual methods
.method public endTwoFingerGesture()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 244
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 265
    :goto_0
    return v4

    .line 250
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 252
    iget-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    if-nez v2, :cond_1

    iget v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-wide v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->onTwoFingerTap()Z

    .line 263
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endRotateGesture()V

    .line 264
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    goto :goto_0
.end method

.method public getCheckForSwipe()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    return v0
.end method

.method public getCouldBeTwoFingerTap()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    return v0
.end method

.method public getDownTouchPoint(I)Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    .locals 1

    .prologue
    .line 176
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, p1

    .line 179
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayStartNewTransformGesture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 226
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 227
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 228
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 229
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 230
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 688
    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 694
    iget-object v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnDoubleClickListener(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 696
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 694
    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 704
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 356
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 372
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 24

    .prologue
    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 736
    const/4 v2, 0x1

    .line 818
    :goto_0
    return v2

    .line 740
    :cond_0
    const/4 v3, 0x1

    .line 741
    const/4 v4, 0x0

    .line 743
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 744
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 746
    const/high16 v2, 0x3f800000    # 1.0f

    .line 747
    const/high16 v9, 0x3f800000    # 1.0f

    .line 748
    const/4 v10, 0x0

    .line 749
    const/4 v11, 0x0

    .line 750
    const/4 v12, 0x0

    .line 752
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v18, v0

    .line 753
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v5

    float-to-double v14, v5

    .line 754
    sub-double v14, v14, v18

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v20

    .line 755
    const-wide/16 v16, 0x0

    .line 756
    const-wide/16 v14, 0x0

    .line 757
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v5, v8, :cond_1

    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v0, v5

    move-wide/from16 v16, v0

    .line 760
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    sub-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v14, v5

    .line 763
    :cond_1
    const-wide/16 v22, 0x0

    cmpl-double v5, v18, v22

    if-eqz v5, :cond_9

    .line 765
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v5, :cond_2

    const-wide v18, 0x4039666660000000L    # 25.399999618530273

    mul-double v18, v18, v20

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x4020000000000000L    # 8.0

    cmpl-double v5, v18, v20

    if-lez v5, :cond_8

    .line 767
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v5, :cond_3

    .line 769
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 770
    const/4 v3, 0x2

    .line 771
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 776
    :cond_3
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-lt v5, v8, :cond_7

    .line 778
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    if-nez v5, :cond_4

    const-wide v18, 0x4039666660000000L    # 25.399999618530273

    mul-double v16, v16, v18

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide/high16 v18, 0x4008000000000000L    # 3.0

    cmpl-double v5, v16, v18

    if-lez v5, :cond_5

    .line 781
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v5

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 782
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 785
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    if-nez v5, :cond_6

    const-wide v16, 0x4039666660000000L    # 25.399999618530273

    mul-double v14, v14, v16

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v0, v5

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    cmpl-double v5, v14, v16

    if-lez v5, :cond_a

    .line 788
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 789
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    move v8, v2

    .line 804
    :goto_1
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 805
    move-object/from16 v0, p0

    iput v7, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 808
    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 810
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 794
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v9

    move v8, v9

    .line 798
    goto :goto_1

    .line 815
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 818
    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_a
    move v8, v2

    goto :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    .prologue
    .line 716
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 719
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endZoomGesture()V

    .line 725
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 11

    .prologue
    const/4 v8, 0x0

    .line 828
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 835
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 837
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    .line 843
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 16

    .prologue
    .line 380
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 381
    const/4 v1, 0x1

    .line 621
    :goto_0
    return v1

    .line 392
    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    .line 393
    const/high16 v8, 0x3f800000    # 1.0f

    .line 394
    const/4 v9, 0x0

    .line 395
    const/4 v10, 0x0

    .line 396
    const/4 v11, 0x0

    .line 402
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 407
    const/4 v2, 0x1

    .line 409
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v5, v1, v3

    .line 410
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    const/4 v3, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v6, v1, v3

    .line 415
    const/4 v1, 0x2

    new-array v12, v1, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 417
    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_1

    .line 419
    new-instance v3, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v13, v14}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    aput-object v3, v12, v1

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 422
    :cond_1
    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-static {v1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v13

    .line 423
    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-static {v1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v14

    .line 425
    if-ltz v13, :cond_8

    const/4 v1, 0x2

    if-ge v13, v1, :cond_8

    if-ltz v14, :cond_8

    const/4 v1, 0x2

    if-ge v14, v1, :cond_8

    .line 431
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v1, :cond_6

    .line 440
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v1, v1, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v3, v3, v14

    const/4 v4, 0x0

    aget-object v4, v12, v4

    const/4 v15, 0x1

    aget-object v15, v12, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v4, v15}, Lcom/adobe/air/gestures/AIRGestureListener;->getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    .line 445
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 447
    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-lez v3, :cond_9

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float v1, v3, v1

    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v1, v3

    .line 453
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v3, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x41700000    # 15.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_6

    .line 455
    :cond_3
    const/4 v3, 0x2

    .line 456
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v4, :cond_4

    .line 458
    const/4 v2, 0x2

    .line 459
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 460
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 461
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 464
    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    sub-float v9, v1, v4

    .line 469
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v15, 0x43340000    # 180.0f

    cmpl-float v4, v4, v15

    if-lez v4, :cond_5

    .line 471
    const/4 v4, 0x0

    cmpl-float v4, v9, v4

    if-lez v4, :cond_a

    const/high16 v4, 0x43b40000    # 360.0f

    sub-float/2addr v4, v9

    const/high16 v9, -0x40800000    # -1.0f

    mul-float/2addr v4, v9

    :goto_3
    move v9, v4

    .line 476
    :cond_5
    move-object/from16 v0, p0

    iput v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 477
    move-object/from16 v0, p0

    iput v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 478
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 481
    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 484
    const/4 v9, 0x0

    .line 492
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-nez v1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-nez v1, :cond_8

    .line 495
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v1, v1, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v3, v3, v14

    const/4 v4, 0x0

    aget-object v4, v12, v4

    const/4 v10, 0x1

    aget-object v10, v12, v10

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3, v4, v10}, Lcom/adobe/air/gestures/AIRGestureListener;->isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 500
    const/4 v3, 0x1

    .line 501
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v1, :cond_7

    .line 503
    const/4 v2, 0x2

    .line 504
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 505
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 508
    :cond_7
    const/high16 v1, -0x40800000    # -1.0f

    mul-float v10, v1, p3

    .line 509
    const/high16 v1, -0x40800000    # -1.0f

    mul-float v11, v1, p4

    .line 510
    move-object/from16 v0, p0

    iput v5, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 511
    move-object/from16 v0, p0

    iput v6, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    .line 516
    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 621
    :cond_8
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 447
    :cond_9
    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v1, v3

    goto/16 :goto_2

    .line 471
    :cond_a
    const/high16 v4, 0x43b40000    # 360.0f

    add-float/2addr v4, v9

    goto :goto_3

    .line 524
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-eqz v1, :cond_8

    .line 527
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    .line 528
    const/4 v1, 0x0

    aget-object v1, v12, v1

    invoke-static {v1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    const/4 v2, 0x0

    aget-object v2, v12, v2

    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    const/4 v3, 0x0

    aget-object v3, v12, v3

    invoke-static {v3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    .line 529
    const/4 v1, 0x1

    aget-object v1, v12, v1

    invoke-static {v1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    const/4 v2, 0x1

    aget-object v2, v12, v2

    invoke-static {v2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v12, v3

    invoke-static {v3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    goto :goto_4

    .line 539
    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 541
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 543
    if-ltz v1, :cond_8

    const/4 v2, 0x2

    if-ge v1, v2, :cond_8

    .line 551
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    if-eqz v2, :cond_8

    .line 553
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 559
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float v3, v2, v3

    .line 560
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v1, v4, v1

    invoke-static {v1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float v1, v2, v1

    .line 564
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v4

    sget v4, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_e

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v4

    sget v4, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_e

    .line 566
    const/4 v2, 0x1

    .line 567
    const/4 v1, 0x0

    cmpl-float v1, v3, v1

    if-lez v1, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    .line 568
    :goto_5
    const/4 v11, 0x0

    move v10, v1

    move v1, v2

    .line 582
    :goto_6
    if-eqz v1, :cond_8

    .line 586
    const/16 v2, 0x8

    .line 587
    const/4 v3, 0x5

    .line 590
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 591
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 593
    const/4 v4, 0x1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 595
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    goto/16 :goto_4

    .line 567
    :cond_d
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_5

    .line 570
    :cond_e
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v4, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v4

    sget v4, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    const/high16 v4, 0x41200000    # 10.0f

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x41cb3333    # 25.4f

    mul-float/2addr v2, v3

    sget v3, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_10

    .line 572
    const/4 v2, 0x1

    .line 573
    const/4 v10, 0x0

    .line 574
    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_7
    move v11, v1

    move v1, v2

    goto :goto_6

    :cond_f
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_7

    .line 579
    :cond_10
    const/4 v1, 0x0

    goto :goto_6
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 629
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 670
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x1

    return v0
.end method

.method public onTwoFingerTap()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 642
    .line 644
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 662
    :goto_0
    return v11

    .line 647
    :cond_0
    const/16 v1, 0x8

    .line 648
    const/4 v2, 0x3

    .line 653
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    iget-object v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    add-float/2addr v0, v4

    div-float v4, v0, v7

    .line 654
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    iget-object v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-static {v5}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    add-float/2addr v0, v5

    div-float v5, v0, v7

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    .line 657
    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    .line 660
    :goto_1
    iput v3, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    move v11, v0

    .line 662
    goto :goto_0

    :cond_1
    move v0, v3

    .line 657
    goto :goto_1
.end method

.method public setCheckForSwipe(Z)V
    .locals 0

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    .line 240
    return-void
.end method

.method public setCouldBeTwoFingerTap(I)V
    .locals 2

    .prologue
    .line 199
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    .line 201
    if-nez p1, :cond_0

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mTwoFingerTapStartTime:J

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDidOccurTwoFingerGesture:Z

    .line 206
    :cond_0
    return-void
.end method

.method public setDownTouchPoint(FFI)V
    .locals 1

    .prologue
    .line 191
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, p3

    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$000(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;FFI)V

    .line 195
    :cond_0
    return-void
.end method

.method public setPrimaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPrimaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 221
    return-void
.end method

.method public setSecondaryPointOfTwoFingerTap(FFI)V
    .locals 1

    .prologue
    .line 215
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 216
    return-void
.end method
