.class public Lcom/adobe/air/AndroidActivityWrapper;
.super Ljava/lang/Object;
.source "AndroidActivityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidActivityWrapper$2;,
        Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;,
        Lcom/adobe/air/AndroidActivityWrapper$DebugMode;,
        Lcom/adobe/air/AndroidActivityWrapper$PlaneID;,
        Lcom/adobe/air/AndroidActivityWrapper$ActivityState;
    }
.end annotation


# static fields
.field private static final ADOBE_COM:Ljava/lang/String; = "adobe.com"

.field private static final ASPECT_RATIO_ANY:I = 0x3

.field private static final ASPECT_RATIO_LANDSCAPE:I = 0x2

.field private static final ASPECT_RATIO_PORTRAIT:I = 0x1

.field public static final IMAGE_PICKER_REQUEST_CODE:I = 0x2

.field private static final INVOKE_EVENT_OPEN_URL:I = 0x1

.field private static final INVOKE_EVENT_STANDARD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidActivityWrapper"

.field public static final STILL_PICTURE_REQUEST_CODE:I = 0x3

.field public static final VIDEO_CAPTURE_REQUEST_CODE:I = 0x4

.field public static final WEBVIEW_UPLOAD_FILE_CHOOSER_CODE:I = 0x5

.field private static final WWW_ADOBE_COM:Ljava/lang/String; = "www.adobe.com"

.field private static mIsAndroidTV:Z

.field private static sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private static sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

.field private static sApplicationLaunched:Z

.field private static sDepthAndStencil:Z

.field private static sEntryPoint:Lcom/adobe/air/Entrypoints;

.field private static sGamePreviewHost:Ljava/lang/String;

.field private static sHasCaptiveRuntime:Z

.field private static sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

.field private static sIsSwfPreviewMode:Z

.field private static sRuntimeLibrariesLoaded:Z


# instance fields
.field private debuggerPort:I

.field private keyGuardManager:Landroid/app/KeyguardManager;

.field private mActivateEventPending:Z

.field private mActivityResultListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

.field private mActivityStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

.field private mContainsVideo:Z

.field private mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

.field private mDisplayWaitingDialog:Z

.field private mExtraArgs:Ljava/lang/String;

.field private mFullScreenSetFromMetaData:Z

.field private mHardKeyboardHidden:I

.field private mHardKeyboardType:I

.field private mInputEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mInvokeEventPendingFromOnCreate:Z

.field private mIsADL:Z

.field private mIsDebuggerMode:Z

.field private mIsFullScreen:Z

.field private mLibCorePath:Ljava/lang/String;

.field private mOrientationManager:Lcom/adobe/air/OrientationManager;

.field private mRGB565Override:Z

.field private mRootDir:Ljava/lang/String;

.field private mScreenOn:Z

.field private mShowDebuggerDialog:Z

.field private mXmlPath:Ljava/lang/String;

.field private m_activity:Landroid/app/Activity;

.field private m_application:Landroid/app/Application;

.field private m_cameraView:Lcom/adobe/air/AndroidCameraView;

.field private m_flashEGL:Lcom/adobe/air/FlashEGL;

.field private m_layout:Landroid/widget/FrameLayout;

.field private m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

.field private m_newActivityLock:Ljava/util/concurrent/locks/Lock;

.field private m_overlaysLayout:Landroid/widget/RelativeLayout;

.field private m_planeBreakCascade:Z

.field private m_planeCascadeInit:Z

.field private m_planeCascadeStep:I

.field private m_planes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/SurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private m_runtimeContext:Landroid/content/Context;

.field private m_skipKickCascade:Z

.field private m_videoView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    .line 84
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    .line 85
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    .line 86
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    .line 87
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 112
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z

    .line 116
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->mIsAndroidTV:Z

    .line 118
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    .line 119
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z

    .line 120
    const-string v0, ""

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sGamePreviewHost:Ljava/lang/String;

    .line 125
    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sDepthAndStencil:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 89
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

    .line 90
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    .line 91
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    .line 92
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 93
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    .line 94
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 95
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 96
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    .line 97
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 98
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    .line 100
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    .line 101
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    .line 102
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    .line 103
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 104
    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 105
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    .line 106
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    .line 108
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 109
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    .line 110
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    .line 111
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    .line 113
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    .line 114
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    .line 115
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    .line 117
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    .line 133
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 135
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    .line 136
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    .line 145
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    .line 146
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    .line 149
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    .line 150
    new-instance v0, Lcom/adobe/air/DebuggerSettings;

    invoke-direct {v0}, Lcom/adobe/air/DebuggerSettings;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    .line 153
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 377
    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    .line 379
    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    .line 380
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    .line 381
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    .line 382
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 246
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 247
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    .line 248
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    .line 249
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    .line 258
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->LoadRuntimeLibraries()V

    .line 260
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    .line 261
    return-void
.end method

.method public static CreateAndroidActivityWrapper(Landroid/app/Activity;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static CreateAndroidActivityWrapper(Landroid/app/Activity;Ljava/lang/Boolean;)Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .prologue
    .line 228
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sput-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    .line 229
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->setRuntimePackageName(Ljava/lang/String;)V

    .line 238
    :goto_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidActivityWrapper;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 240
    :cond_0
    invoke-static {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isAndroidTV(Landroid/app/Activity;)Z

    move-result v0

    sput-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->mIsAndroidTV:Z

    .line 241
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0

    .line 236
    :cond_1
    const-string v0, "com.adobe.air"

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->setRuntimePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method

.method public static GetDepthAndStencilForGamePreview()Z
    .locals 1

    .prologue
    .line 286
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sDepthAndStencil:Z

    return v0
.end method

.method public static GetHasCaptiveRuntime()Z
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    return v0
.end method

.method public static GetIsAndroidTV()Z
    .locals 1

    .prologue
    .line 275
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->mIsAndroidTV:Z

    return v0
.end method

.method public static IsGamePreviewMode()Z
    .locals 1

    .prologue
    .line 280
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z

    return v0
.end method

.method private LaunchApplication(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 14

    .prologue
    .line 902
    sget-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-eqz v1, :cond_0

    .line 1052
    :goto_0
    return-void

    .line 917
    :cond_0
    if-eqz p6, :cond_3

    .line 920
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "args"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 921
    if-eqz v1, :cond_2

    .line 923
    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 924
    const/4 v1, 0x0

    aget-object p3, v2, v1

    .line 925
    const/4 v1, 0x1

    aget-object p4, v2, v1

    .line 927
    array-length v1, v2

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 929
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 931
    :cond_1
    const/4 v1, 0x3

    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p5

    .line 931
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v4, p5

    move-object/from16 v3, p4

    move-object/from16 v2, p3

    .line 1039
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 1041
    new-instance v1, Lcom/adobe/air/Entrypoints;

    invoke-direct {v1}, Lcom/adobe/air/Entrypoints;-><init>()V

    sput-object v1, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    .line 1042
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v7

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    move-object/from16 v6, p2

    move-object v10, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v1 .. v12}, Lcom/adobe/air/Entrypoints;->EntryMain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;ZZ)V

    .line 1044
    invoke-static {v9}, Lcom/adobe/air/AndroidIdleState;->GetIdleStateManager(Landroid/content/Context;)Lcom/adobe/air/AndroidIdleState;

    move-result-object v1

    sput-object v1, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    .line 1046
    const/4 v1, 0x1

    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    goto/16 :goto_0

    .line 1048
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 944
    :catch_1
    move-exception v1

    move-object/from16 v4, p5

    move-object/from16 v3, p4

    move-object/from16 v2, p3

    .line 947
    goto :goto_2

    .line 949
    :cond_3
    sget-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_d

    .line 952
    :try_start_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 953
    if-eqz v1, :cond_c

    .line 957
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_c

    .line 959
    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 960
    const/4 v2, -0x1

    .line 961
    const-string v3, "&"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v1, 0x0

    move v13, v1

    move v1, v2

    move v2, v13

    :goto_3
    if-ge v2, v4, :cond_b

    aget-object v5, v3, v2

    .line 965
    const/4 v6, 0x0

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "depthAndStencil"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 967
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 969
    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 972
    const/4 v5, 0x1

    sput-boolean v5, Lcom/adobe/air/AndroidActivityWrapper;->sDepthAndStencil:Z

    .line 961
    :cond_4
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 977
    :cond_5
    const/4 v5, 0x0

    sput-boolean v5, Lcom/adobe/air/AndroidActivityWrapper;->sDepthAndStencil:Z

    goto :goto_4

    .line 1033
    :catch_2
    move-exception v1

    move-object/from16 v4, p5

    move-object/from16 v3, p4

    move-object/from16 v2, p3

    goto/16 :goto_2

    .line 980
    :cond_6
    const/4 v6, 0x0

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "autoorients"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 982
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 984
    const-string v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 987
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/adobe/air/AndroidActivityWrapper;->setAutoOrients(Z)V

    goto :goto_4

    .line 992
    :cond_7
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/adobe/air/AndroidActivityWrapper;->setAutoOrients(Z)V

    goto :goto_4

    .line 995
    :cond_8
    const/4 v6, 0x0

    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "aspectratio"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 997
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 999
    const-string v6, "portrait"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 1001
    const/4 v1, 0x1

    goto :goto_4

    .line 1003
    :cond_9
    const-string v6, "landscape"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1005
    const/4 v1, 0x2

    goto :goto_4

    .line 1007
    :cond_a
    const-string v6, "any"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1009
    const/4 v1, 0x3

    goto :goto_4

    .line 1020
    :cond_b
    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    .line 1023
    invoke-virtual {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->setAspectRatio(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_c
    move-object/from16 v4, p5

    move-object/from16 v3, p4

    move-object/from16 v2, p3

    .line 1036
    goto/16 :goto_2

    :cond_d
    move-object/from16 v4, p5

    move-object/from16 v3, p4

    move-object/from16 v2, p3

    goto/16 :goto_2
.end method

.method private LoadRuntimeLibraries()V
    .locals 1

    .prologue
    .line 1452
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z

    if-nez v0, :cond_0

    .line 1456
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibSTLPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1457
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->GetLibCorePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 1458
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sRuntimeLibrariesLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1465
    :cond_0
    :goto_0
    return-void

    .line 1460
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private SetVisible(Z)V
    .locals 2

    .prologue
    .line 1287
    if-eqz p1, :cond_1

    .line 1289
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isSurfaceValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq v0, v1, :cond_0

    .line 1290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSetVisible(Z)V

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1295
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSetVisible(Z)V

    goto :goto_0
.end method

.method public static ShouldShowGamePreviewWatermark()Z
    .locals 3

    .prologue
    .line 291
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper;->sGamePreviewHost:Ljava/lang/String;

    const-string v2, "www.adobe.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper;->sGamePreviewHost:Ljava/lang/String;

    const-string v2, "adobe.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 297
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 301
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private SignalNewActivityCreated()V
    .locals 1

    .prologue
    .line 1872
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1873
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V

    .line 1874
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1875
    return-void
.end method

.method private afterOnCreate()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/16 v3, 0x8

    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    if-nez v1, :cond_0

    .line 794
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    .line 795
    :goto_0
    if-ge v0, v3, :cond_0

    .line 796
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 795
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 801
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 802
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 805
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {v0, v1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 810
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 812
    new-instance v0, Lcom/adobe/air/AndroidCameraView;

    invoke-direct {v0, v1, p0}, Lcom/adobe/air/AndroidCameraView;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    if-eqz v0, :cond_2

    .line 828
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    const/16 v3, 0x8

    const/16 v4, 0x10

    invoke-virtual {v0, v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 832
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 833
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 835
    if-eqz v0, :cond_3

    .line 837
    const-string v2, "containsVideo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 839
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 841
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    .line 842
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVideoView()Lcom/adobe/flashruntime/shared/VideoView;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    .line 843
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_videoView:Landroid/view/SurfaceView;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 847
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 849
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_4

    .line 850
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 854
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 861
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    if-eqz v0, :cond_6

    .line 863
    :cond_5
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eq v0, v2, :cond_6

    .line 865
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 866
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->onWindowFocusChanged(Z)V

    .line 870
    :cond_6
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    if-nez v0, :cond_7

    .line 872
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->setFullScreenFromMetaData()V

    .line 874
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mFullScreenSetFromMetaData:Z

    .line 878
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getIsFullScreen()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 880
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V

    .line 884
    :cond_8
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 885
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 888
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    .line 889
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0, v2, v3}, Lcom/adobe/air/OrientationManager;->onActivityCreated(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;)V

    .line 890
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 892
    invoke-static {v1}, Lcom/adobe/flashplayer/HDMIUtils;->initHelper(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 898
    :goto_1
    return-void

    .line 894
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private callActivityResultListeners(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1868
    :cond_0
    :goto_0
    return-void

    .line 1859
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 1861
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1859
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1864
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private callActivityStateListeners()V
    .locals 4

    .prologue
    .line 1785
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1799
    :cond_0
    :goto_0
    return-void

    .line 1790
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 1792
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    invoke-interface {v0, v3}, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;->onActivityStateChanged(Lcom/adobe/air/AndroidActivityWrapper$ActivityState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1790
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1795
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private callActivityStateListeners(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1819
    :cond_0
    :goto_0
    return-void

    .line 1810
    :cond_1
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 1812
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-interface {v0, p1}, Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;->onConfigurationChanged(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1810
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 1815
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private callInputEventListeners(Landroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1718
    .line 1719
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1734
    :goto_0
    return v1

    .line 1724
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v4, :cond_3

    .line 1726
    if-nez v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;

    invoke-interface {v0, p1}, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;->onKeyEvent(Landroid/view/KeyEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1724
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1726
    goto :goto_2

    :cond_3
    move v0, v2

    :goto_3
    move v1, v0

    .line 1734
    goto :goto_0

    .line 1729
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_3
.end method

.method private callInputEventListeners(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1740
    .line 1741
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1755
    :goto_0
    return v1

    .line 1746
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    move v3, v1

    move v2, v1

    :goto_1
    if-ge v3, v4, :cond_3

    .line 1748
    if-nez v2, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;

    invoke-interface {v0, p1}, Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1746
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 1748
    goto :goto_2

    :cond_3
    move v0, v2

    :goto_3
    move v1, v0

    .line 1755
    goto :goto_0

    .line 1751
    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v2

    goto :goto_3
.end method

.method private checkForDebuggerAndLaunchDialog()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1482
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_1

    .line 1484
    new-instance v0, Lcom/adobe/air/ResourceFileManager;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceFileManager;-><init>(Landroid/content/Context;)V

    .line 1486
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->None:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1488
    const-string v5, "raw.debuginfo"

    invoke-virtual {v0, v5}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1491
    :try_start_0
    const-string v5, "raw.debuginfo"

    invoke-virtual {v0, v5}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/adobe/air/ResourceFileManager;->getFileStreamFromRawRes(I)Ljava/io/InputStream;

    move-result-object v0

    .line 1496
    const-string v5, "="

    invoke-static {v0, v5}, Lcom/adobe/air/utils/Utils;->parseKeyValuePairFile(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 1497
    const-string v0, "incomingDebugPort"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    if-eqz v0, :cond_0

    .line 1502
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    .line 1503
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1512
    :cond_0
    :goto_0
    :try_start_2
    const-string v0, "outgoingDebugHost"

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 1517
    sget-object v5, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    if-ne v1, v5, :cond_2

    .line 1518
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConflictMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    .line 1521
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "listen and connect are mutually exclusive."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1527
    :catch_0
    move-exception v0

    .line 1608
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .line 1524
    :cond_2
    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ConnectMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 1533
    :goto_2
    sget-object v5, Lcom/adobe/air/AndroidActivityWrapper$2;->$SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode:[I

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 1546
    :pswitch_1
    :try_start_3
    new-instance v1, Ljava/net/ServerSocket;

    iget v5, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    const/4 v6, 0x1

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-direct {v1, v5, v6, v7}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1547
    :try_start_4
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1564
    if-eqz v1, :cond_3

    .line 1565
    :try_start_5
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    move v1, v3

    .line 1572
    :cond_4
    :goto_3
    if-eqz v1, :cond_9

    .line 1573
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 1574
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    .line 1580
    :goto_4
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    sget-object v2, Lcom/adobe/air/AndroidActivityWrapper$DebugMode;->ListenMode:Lcom/adobe/air/AndroidActivityWrapper$DebugMode;

    if-ne v0, v2, :cond_a

    move v0, v3

    :goto_5
    invoke-virtual {v1, v0}, Lcom/adobe/air/DebuggerSettings;->setListen(Z)V

    .line 1581
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/DebuggerSettings;->setDebugerPort(I)V

    goto :goto_1

    .line 1566
    :catch_1
    move-exception v1

    move v1, v3

    .line 1570
    goto :goto_3

    .line 1548
    :catch_2
    move-exception v1

    .line 1564
    :goto_6
    if-eqz v2, :cond_5

    .line 1565
    :try_start_6
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_5
    move v1, v4

    .line 1569
    goto :goto_3

    .line 1566
    :catch_3
    move-exception v1

    move v1, v4

    .line 1570
    goto :goto_3

    .line 1551
    :catch_4
    move-exception v1

    .line 1564
    :goto_7
    if-eqz v2, :cond_6

    .line 1565
    :try_start_7
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_6
    move v1, v4

    .line 1569
    goto :goto_3

    .line 1566
    :catch_5
    move-exception v1

    move v1, v4

    .line 1570
    goto :goto_3

    .line 1554
    :catch_6
    move-exception v1

    .line 1555
    :goto_8
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v5, "android.os.NetworkOnMainThreadException"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v1

    if-eqz v1, :cond_7

    move v1, v3

    .line 1564
    :goto_9
    if-eqz v2, :cond_4

    .line 1565
    :try_start_9
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_3

    .line 1566
    :catch_7
    move-exception v2

    goto :goto_3

    :cond_7
    move v1, v4

    .line 1559
    goto :goto_9

    .line 1563
    :catchall_0
    move-exception v0

    .line 1564
    :goto_a
    if-eqz v2, :cond_8

    .line 1565
    :try_start_a
    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 1569
    :cond_8
    :goto_b
    throw v0

    .line 1577
    :cond_9
    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogUnableToListenOnPort(I)V

    goto :goto_4

    :cond_a
    move v0, v4

    .line 1580
    goto :goto_5

    .line 1585
    :pswitch_2
    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->nativeConnectDebuggerSocket(Ljava/lang/String;)Z

    move-result v0

    .line 1588
    if-nez v0, :cond_b

    .line 1589
    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogforIpAddress(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1592
    :cond_b
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v0, v1}, Lcom/adobe/air/DebuggerSettings;->setHost(Ljava/lang/String;)V

    .line 1593
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto/16 :goto_1

    .line 1599
    :pswitch_3
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto/16 :goto_1

    .line 1566
    :catch_8
    move-exception v1

    goto :goto_b

    .line 1563
    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_a

    .line 1554
    :catch_9
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_8

    .line 1551
    :catch_a
    move-exception v2

    move-object v2, v1

    goto :goto_7

    .line 1548
    :catch_b
    move-exception v2

    move-object v2, v1

    goto :goto_6

    .line 1504
    :catch_c
    move-exception v0

    goto/16 :goto_0

    :cond_c
    move-object v0, v1

    move-object v1, v2

    goto/16 :goto_2

    .line 1533
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method private closeDialogWaitingForConnection()V
    .locals 4

    .prologue
    .line 1619
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1622
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1623
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    const-string v2, "RemoteDebuggerListenerDialogClose"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1625
    const-string v2, "debuggerPort"

    iget v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1626
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1632
    :goto_0
    return-void

    .line 1628
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private initializeAndroidAppVars(Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    .prologue
    .line 680
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 681
    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidPackageName(Ljava/lang/String;)V

    .line 684
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->setAndroidAPKPath(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-static {v0}, Lcom/adobe/air/ApplicationFileManager;->processAndroidDataPath(Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method private static isAndroidTV(Landroid/app/Activity;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 214
    :try_start_0
    const-string v0, "uimode"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 215
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getCurrentModeType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 216
    const/4 v0, 0x1

    .line 222
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 218
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    move v0, v1

    .line 222
    goto :goto_0
.end method

.method public static isGingerbread()Z
    .locals 2

    .prologue
    .line 184
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 185
    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHoneycomb()Z
    .locals 2

    .prologue
    .line 190
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 191
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIceCreamSandwich()Z
    .locals 2

    .prologue
    .line 196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 197
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isJellybean()Z
    .locals 2

    .prologue
    .line 202
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 203
    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeActivateEvent()V
.end method

.method private native nativeDeactivateEvent()V
.end method

.method private native nativeLowMemoryEvent()V
.end method

.method private native nativeOnFocusListener(Z)V
.end method

.method private native nativeSendInvokeEventWithData(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method private native nativeSetVisible(Z)V
.end method

.method private parseArgs(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x6

    .line 693
    const-string v6, ""

    .line 694
    const-string v5, ""

    .line 695
    const-string v4, ""

    .line 696
    const-string v3, "false"

    .line 697
    const-string v2, "false"

    .line 698
    const-string v1, "false"

    .line 699
    const-string v0, ""

    .line 702
    const/4 v7, 0x0

    :try_start_0
    aget-object v6, p2, v7

    .line 703
    const/4 v7, 0x1

    aget-object v5, p2, v7

    .line 704
    const/4 v7, 0x2

    aget-object v4, p2, v7

    .line 705
    const/4 v7, 0x3

    aget-object v3, p2, v7

    .line 706
    const/4 v7, 0x4

    aget-object v2, p2, v7

    .line 708
    array-length v7, p2

    if-lt v7, v8, :cond_0

    .line 709
    const/4 v7, 0x5

    aget-object v1, p2, v7

    .line 710
    const/4 v7, 0x6

    aget-object v0, p2, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 724
    :cond_0
    :goto_0
    iput-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    .line 725
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    .line 726
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    .line 727
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/adobe/air/AndroidActivityWrapper;->sIsSwfPreviewMode:Z

    .line 728
    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sGamePreviewHost:Ljava/lang/String;

    .line 729
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 732
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->initializeAndroidAppVars(Landroid/content/pm/ApplicationInfo;)V

    .line 734
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-eqz v0, :cond_1

    .line 735
    iput-object v6, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 736
    iput-object v5, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    .line 742
    :goto_1
    return-void

    .line 739
    :cond_1
    invoke-static {}, Lcom/adobe/air/ApplicationFileManager;->getAppXMLRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    .line 740
    invoke-static {}, Lcom/adobe/air/ApplicationFileManager;->getAppRoot()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    goto :goto_1

    .line 712
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private planeRemovedSuccessfully(Landroid/view/SurfaceView;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 423
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    :cond_0
    :goto_0
    return v0

    .line 426
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "LT18i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "LT15i"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "Arc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isIceCreamSandwich()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 435
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setFullScreenFromMetaData()V
    .locals 3

    .prologue
    .line 1899
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1900
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1903
    if-nez v0, :cond_1

    .line 1917
    :cond_0
    :goto_0
    return-void

    .line 1906
    :cond_1
    const-string v1, "fullScreen"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1908
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1910
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1913
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMainView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1056
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    if-nez v0, :cond_1

    .line 1070
    :cond_0
    :goto_0
    return-void

    .line 1059
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1063
    :try_start_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-virtual {v0, p1}, Lcom/adobe/air/Entrypoints;->setMainView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1065
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialogUnableToListenOnPort(I)V
    .locals 2

    .prologue
    .line 1469
    new-instance v0, Lcom/adobe/air/ListenErrorDialog;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1, p1}, Lcom/adobe/air/ListenErrorDialog;-><init>(Landroid/app/Activity;I)V

    .line 1470
    invoke-virtual {v0}, Lcom/adobe/air/ListenErrorDialog;->createAndShowDialog()V

    .line 1471
    return-void
.end method

.method private showDialogWaitingForConnection(I)V
    .locals 3

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    .line 1638
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sHasCaptiveRuntime:Z

    if-eqz v0, :cond_0

    .line 1641
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/adobe/air/AndroidActivityWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/adobe/air/AndroidActivityWrapper$1;-><init>(Lcom/adobe/air/AndroidActivityWrapper;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1667
    :goto_0
    return-void

    .line 1656
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    const-class v2, Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1657
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1658
    const-string v1, "RemoteDebuggerListenerDialog"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1659
    const-string v1, "debuggerPort"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1660
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1662
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private showDialogforIpAddress(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1612
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    .line 1613
    new-instance v0, Lcom/adobe/air/RemoteDebuggerDialog;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/RemoteDebuggerDialog;-><init>(Landroid/app/Activity;)V

    .line 1614
    invoke-virtual {v0, p1}, Lcom/adobe/air/RemoteDebuggerDialog;->createAndShowDialog(Ljava/lang/String;)V

    .line 1615
    return-void
.end method


# virtual methods
.method public BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1411
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultIntentFlags()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1421
    :goto_0
    return-void

    .line 1417
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1413
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public GetAppCacheDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public GetAppDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    return-object v0
.end method

.method public GetDebuggerSettings()Lcom/adobe/air/DebuggerSettings;
    .locals 1

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    return-object v0
.end method

.method public GetLibCorePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1444
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1445
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    invoke-static {v0}, Lcom/adobe/air/utils/Utils;->GetLibCorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    .line 1447
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mLibCorePath:Ljava/lang/String;

    return-object v0
.end method

.method public GetRuntimeDataDirectory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LaunchMarketPlaceForAIR(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1427
    .line 1428
    if-nez p1, :cond_0

    .line 1429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1433
    :cond_0
    :try_start_0
    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p0, v0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->BroadcastIntent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1440
    :goto_0
    return-void

    .line 1436
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 608
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 609
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    :goto_0
    return-void

    .line 613
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 623
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 624
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {v0, p3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public SendInvokeEvent()V
    .locals 3

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1207
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 1208
    const/4 v0, 0x0

    .line 1213
    if-eqz v2, :cond_0

    .line 1215
    const/4 v0, 0x1

    .line 1219
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeSendInvokeEventWithData(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1220
    return-void
.end method

.method public ShowImmediateUpdateDialog()V
    .locals 6

    .prologue
    .line 652
    const/4 v1, 0x0

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 657
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 660
    if-eqz v0, :cond_1

    .line 662
    const-string v2, "airDownloadURL"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v5, v0

    .line 671
    :goto_1
    if-eqz v5, :cond_0

    .line 672
    const-class v1, Lcom/adobe/air/AIRUpdateDialog;

    const-string v2, "android.intent.action.MAIN"

    const-string v3, "AIRUpdateDialog"

    const-string v4, "airDownloadURL"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/adobe/air/AndroidActivityWrapper;->SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :goto_2
    return-void

    .line 666
    :catch_0
    move-exception v0

    move-object v5, v1

    goto :goto_1

    .line 674
    :cond_0
    const-class v0, Lcom/adobe/air/AIRUpdateDialog;

    const-string v1, "android.intent.action.MAIN"

    const-string v2, "AIRUpdateDialog"

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->SendIntentToRuntime(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public StartDownloadConfigService()V
    .locals 2

    .prologue
    .line 637
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 638
    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    const-string v1, "com.adobe.air.DownloadConfig"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 642
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 643
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public WaitForNewActivity()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 1881
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1884
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 1885
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1892
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    return-object v0

    .line 1887
    :catch_0
    move-exception v0

    .line 1890
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_newActivityLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V
    .locals 1

    .prologue
    .line 1828
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1830
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    .line 1833
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1835
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1837
    :cond_1
    return-void
.end method

.method public addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V
    .locals 1

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1767
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    .line 1769
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1770
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1771
    :cond_1
    return-void
.end method

.method public addInputEventListner(Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;)V
    .locals 1

    .prologue
    .line 1699
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1700
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1703
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1704
    :cond_1
    return-void
.end method

.method public applyDownloadedConfig()V
    .locals 1

    .prologue
    .line 2154
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    if-eqz v0, :cond_0

    .line 2156
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sEntryPoint:Lcom/adobe/air/Entrypoints;

    invoke-virtual {v0}, Lcom/adobe/air/Entrypoints;->EntryApplyDownloadedConfig()V

    .line 2158
    :cond_0
    return-void
.end method

.method public didRemoveOverlay()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 573
    :cond_0
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;Z)Z
    .locals 1

    .prologue
    .line 1319
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->callInputEventListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1320
    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;Z)Z
    .locals 1

    .prologue
    .line 1313
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->callInputEventListeners(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1314
    return v0
.end method

.method public ensureZOrder()V
    .locals 3

    .prologue
    .line 511
    const/4 v0, 0x7

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    .line 512
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 514
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 511
    :cond_0
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 518
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1266
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1267
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1268
    :cond_0
    return-void
.end method

.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 1946
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1950
    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 534
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    return-object v0
.end method

.method public getAutoOrients()Z
    .locals 1

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getAutoOrients()Z

    move-result v0

    return v0
.end method

.method public getCameraView()Lcom/adobe/air/AndroidCameraView;
    .locals 1

    .prologue
    .line 582
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    return-object v0
.end method

.method public getDefaultContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 544
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_application:Landroid/app/Application;

    goto :goto_0
.end method

.method public getDefaultIntentFlags()I
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 550
    const/4 v0, 0x0

    .line 552
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x10000000

    goto :goto_0
.end method

.method public getDeviceOrientation()I
    .locals 1

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getDeviceOrientation()I

    move-result v0

    return v0
.end method

.method public getEgl()Lcom/adobe/air/FlashEGL;
    .locals 1

    .prologue
    .line 592
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_0

    .line 594
    invoke-static {}, Lcom/adobe/air/FlashEGLFactory;->CreateFlashEGL()Lcom/adobe/air/FlashEGL;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_flashEGL:Lcom/adobe/air/FlashEGL;

    return-object v0
.end method

.method public getHardKeyboardType()I
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    return v0
.end method

.method protected getIsFullScreen()Z
    .locals 1

    .prologue
    .line 1926
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getOrientation()I

    move-result v0

    return v0
.end method

.method public getOverlaysLayout(Z)Landroid/widget/RelativeLayout;
    .locals 2

    .prologue
    .line 557
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 559
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    .line 560
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 563
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRuntimeContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    return-object v0
.end method

.method public getSpeakerphoneOn()Z
    .locals 2

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public getSupportedOrientations()[I
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->getSupportedOrientations()[I

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    return-object v0
.end method

.method public getWebContentsDebuggingEnabled()Z
    .locals 3

    .prologue
    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 326
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    const-string v1, "webContentsDebuggingEnabled"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 331
    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 339
    :goto_0
    return v0

    .line 336
    :catch_0
    move-exception v0

    .line 339
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public gotResultFromDialog(ZLjava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1671
    .line 1672
    if-eqz p1, :cond_4

    .line 1674
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1675
    invoke-static {p2}, Lcom/adobe/air/utils/Utils;->nativeConnectDebuggerSocket(Ljava/lang/String;)Z

    move-result v0

    .line 1677
    :goto_0
    if-nez v0, :cond_2

    .line 1678
    invoke-direct {p0, p2}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogforIpAddress(Ljava/lang/String;)V

    .line 1687
    :goto_1
    if-nez v0, :cond_0

    if-nez p1, :cond_1

    .line 1688
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    .line 1689
    :cond_1
    return-void

    .line 1681
    :cond_2
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v2, p2}, Lcom/adobe/air/DebuggerSettings;->setHost(Ljava/lang/String;)V

    .line 1682
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDebuggerSettings:Lcom/adobe/air/DebuggerSettings;

    invoke-virtual {v2, v1}, Lcom/adobe/air/DebuggerSettings;->setListen(Z)V

    .line 1683
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mShowDebuggerDialog:Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public initCallStateListener()V
    .locals 2

    .prologue
    .line 1074
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    if-nez v0, :cond_0

    .line 1076
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/adobe/air/telephony/AndroidTelephonyManager;->CreateAndroidTelephonyManager(Landroid/content/Context;)Lcom/adobe/air/telephony/AndroidTelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    .line 1077
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sAndroidTelephonyManager:Lcom/adobe/air/telephony/AndroidTelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/adobe/air/telephony/AndroidTelephonyManager;->listen(Z)V

    .line 1079
    :cond_0
    return-void
.end method

.method public isApplicationLaunched()Z
    .locals 1

    .prologue
    .line 587
    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    return v0
.end method

.method public isHardKeyboardHidden()Z
    .locals 2

    .prologue
    .line 1374
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResumed()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScreenLocked()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->keyGuardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    return v0
.end method

.method public isScreenOn()Z
    .locals 1

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    sget-object v1, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceValid()Z
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->isSurfaceValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needsCompositingSurface()Z
    .locals 2

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1386
    const/4 v0, 0x1

    .line 1388
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 1369
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityResultListeners(IILandroid/content/Intent;)V

    .line 1370
    return-void
.end method

.method public onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 0

    .prologue
    .line 2098
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1954
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1958
    return-void
.end method

.method public onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 2102
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 1302
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardHidden:I

    .line 1303
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mHardKeyboardType:I

    .line 1305
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners(Landroid/content/res/Configuration;)V

    .line 1308
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 1962
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;Z)Z
    .locals 0

    .prologue
    .line 1966
    return p2
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1971
    return-void
.end method

.method public onCreate(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 747
    iput-object p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 748
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 750
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidActivityWrapper;->parseArgs(Landroid/app/Activity;[Ljava/lang/String;)V

    .line 752
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SignalNewActivityCreated()V

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-static {}, Lcom/adobe/air/utils/Utils;->getRuntimePackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_runtimeContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/adobe/air/AndroidActivityWrapper;->sApplicationLaunched:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/adobe/air/DeviceProfiling;->checkAndInitiateProfiler(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 776
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->checkForDebuggerAndLaunchDialog()V

    .line 784
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 786
    invoke-static {}, Lcom/adobe/air/ConfigDownloadListener;->GetConfigDownloadListener()Lcom/adobe/air/ConfigDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mConfigDownloadListener:Lcom/adobe/air/ConfigDownloadListener;

    .line 787
    return-void

    .line 780
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->afterOnCreate()V

    goto :goto_1

    .line 758
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    .prologue
    .line 1975
    return-void
.end method

.method public onCreateDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .prologue
    .line 1979
    return-object p1
.end method

.method public onCreateDialog(ILandroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 2111
    return-object p2
.end method

.method public onCreateDialog(ILandroid/os/Bundle;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .prologue
    .line 2106
    return-object p3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 0

    .prologue
    .line 1984
    return p2
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;Z)Z
    .locals 0

    .prologue
    .line 1989
    return p3
.end method

.method public onCreatePanelView(ILandroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 1994
    return-object p2
.end method

.method public onCreateThumbnail(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;Z)Z
    .locals 0

    .prologue
    .line 1999
    return p3
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .prologue
    .line 2004
    return-object p4
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1171
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->DESTROYED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1173
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1175
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_0

    .line 1176
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityDestroyed()V

    .line 1178
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v1, v0, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1180
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1178
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1184
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 1185
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_overlaysLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1188
    :cond_3
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    .line 1189
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_cameraView:Lcom/adobe/air/AndroidCameraView;

    .line 1190
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 1191
    iput-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    .line 1192
    invoke-direct {p0, v3}, Lcom/adobe/air/AndroidActivityWrapper;->setMainView(Landroid/view/View;)V

    .line 1194
    invoke-static {}, Lcom/adobe/flashplayer/HDMIUtils;->closeHelper()V

    .line 1197
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 2009
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;Z)Z
    .locals 0

    .prologue
    .line 2013
    return p3
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;Z)Z
    .locals 0

    .prologue
    .line 2018
    return p3
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;Z)Z
    .locals 0

    .prologue
    .line 2023
    return p4
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;Z)Z
    .locals 0

    .prologue
    .line 2028
    return p3
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 1325
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeLowMemoryEvent()V

    .line 1326
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;Z)Z
    .locals 0

    .prologue
    .line 2033
    return p3
.end method

.method public onMenuOpened(ILandroid/view/Menu;Z)Z
    .locals 0

    .prologue
    .line 2038
    return p3
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 1227
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SendInvokeEvent()V

    .line 1228
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;Z)Z
    .locals 0

    .prologue
    .line 2043
    return p2
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 2048
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0

    .prologue
    .line 2052
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1085
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->PAUSED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1087
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1091
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    .line 1094
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityPaused()V

    .line 1097
    :cond_1
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-eqz v0, :cond_2

    .line 1098
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidIdleState;->releaseLock()V

    .line 1101
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1103
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeOnFocusListener(Z)V

    .line 1104
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeDeactivateEvent()V

    .line 1107
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1108
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2116
    return-void
.end method

.method public onPostResume()V
    .locals 0

    .prologue
    .line 2120
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 2128
    return-void
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2124
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;Z)Z
    .locals 0

    .prologue
    .line 2056
    return p2
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;Z)Z
    .locals 0

    .prologue
    .line 2061
    return p4
.end method

.method public onRestart()V
    .locals 1

    .prologue
    .line 1142
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESTARTED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1144
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1155
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    if-eqz v0, :cond_0

    .line 1156
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->HideSoftKeyboardOnWindowFocusChange()V

    .line 1158
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1159
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2132
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1114
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->RESUMED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1116
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1118
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0}, Lcom/adobe/air/OrientationManager;->onActivityResumed()V

    .line 1121
    :cond_0
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    if-eqz v0, :cond_1

    .line 1122
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper;->sIdleStateManager:Lcom/adobe/air/AndroidIdleState;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidIdleState;->acquireLock()V

    .line 1124
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1126
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeActivateEvent()V

    .line 1127
    invoke-direct {p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->nativeOnFocusListener(Z)V

    .line 1134
    :goto_0
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 1135
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1136
    return-void

    .line 1131
    :cond_2
    iput-boolean v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 2066
    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 2136
    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 1

    .prologue
    .line 1277
    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mScreenOn:Z

    .line 1278
    invoke-direct {p0, p1}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1279
    if-eqz p1, :cond_0

    .line 1280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 1281
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1283
    :cond_0
    return-void
.end method

.method public onSearchRequested(Z)Z
    .locals 0

    .prologue
    .line 2071
    return p1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1164
    sget-object v0, Lcom/adobe/air/AndroidActivityWrapper$ActivityState;->STOPPED:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    iput-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityState:Lcom/adobe/air/AndroidActivityWrapper$ActivityState;

    .line 1165
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->callActivityStateListeners()V

    .line 1166
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1167
    return-void
.end method

.method public onSurfaceDestroyed()V
    .locals 1

    .prologue
    .line 1272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1273
    return-void
.end method

.method public onSurfaceInitialized()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1232
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->setMainView(Landroid/view/View;)V

    .line 1233
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->SetVisible(Z)V

    .line 1235
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    if-eqz v0, :cond_0

    .line 1237
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->debuggerPort:I

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->showDialogWaitingForConnection(I)V

    .line 1238
    iput-boolean v8, p0, Lcom/adobe/air/AndroidActivityWrapper;->mDisplayWaitingDialog:Z

    .line 1241
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->mXmlPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRootDir:Ljava/lang/String;

    iget-object v5, p0, Lcom/adobe/air/AndroidActivityWrapper;->mExtraArgs:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    iget-boolean v7, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsDebuggerMode:Z

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/adobe/air/AndroidActivityWrapper;->LaunchApplication(Landroid/app/Activity;Lcom/adobe/air/AIRWindowSurfaceView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1243
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    if-eqz v0, :cond_2

    .line 1245
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-nez v0, :cond_1

    .line 1248
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->SendInvokeEvent()V

    .line 1251
    :cond_1
    iput-boolean v8, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInvokeEventPendingFromOnCreate:Z

    .line 1254
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    if-eqz v0, :cond_3

    .line 1256
    invoke-direct {p0}, Lcom/adobe/air/AndroidActivityWrapper;->nativeActivateEvent()V

    .line 1257
    iput-boolean v8, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivateEventPending:Z

    .line 1261
    :cond_3
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeCleanCascade()V

    .line 1262
    return-void
.end method

.method public onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 0

    .prologue
    .line 2140
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0

    .prologue
    .line 2076
    return p2
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;Z)Z
    .locals 0

    .prologue
    .line 2081
    return p2
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 2086
    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    .prologue
    .line 2144
    return-void
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .prologue
    .line 2090
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 2094
    return-void
.end method

.method public planeBreakCascade()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 408
    move v1, v0

    .line 409
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_1

    .line 410
    iget-object v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 411
    add-int/lit8 v0, v0, 0x1

    .line 409
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_1
    if-le v0, v3, :cond_2

    .line 416
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    .line 418
    :cond_2
    return-void
.end method

.method public planeCleanCascade()V
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    if-nez v0, :cond_0

    .line 400
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeInit:Z

    .line 401
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 403
    :cond_0
    return-void
.end method

.method public planeKickCascade()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 441
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isJellybean()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mContainsVideo:Z

    if-ne v0, v4, :cond_2

    .line 475
    :cond_1
    :goto_0
    return-void

    .line 445
    :cond_2
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeCleanCascade()V

    .line 446
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 449
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    if-eqz v0, :cond_6

    move v1, v2

    .line 450
    :goto_1
    if-ge v1, v5, :cond_4

    .line 451
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 452
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 453
    iget-object v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 450
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 457
    :cond_4
    iput-boolean v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    move v1, v2

    .line 458
    :goto_2
    if-ge v1, v5, :cond_5

    .line 459
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 460
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeRemovedSuccessfully(Landroid/view/SurfaceView;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 461
    iput-boolean v4, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    .line 466
    :cond_5
    iput v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    .line 468
    :cond_6
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    if-nez v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 473
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_mainView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    goto :goto_0

    .line 458
    :cond_7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method public planeStepCascade()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 480
    iput-boolean v3, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_skipKickCascade:Z

    .line 489
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 504
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeBreakCascade:Z

    if-nez v0, :cond_0

    .line 494
    :goto_1
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 495
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 496
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-gez v0, :cond_2

    .line 497
    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_layout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    iget v2, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 499
    :cond_2
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    goto :goto_0

    .line 494
    :cond_3
    iget v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planeCascadeStep:I

    goto :goto_1
.end method

.method public registerPlane(Landroid/view/SurfaceView;I)V
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 387
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 388
    return-void
.end method

.method public removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V
    .locals 1

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1843
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityResultListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1845
    :cond_0
    return-void
.end method

.method public removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V
    .locals 1

    .prologue
    .line 1775
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mActivityStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1779
    :cond_0
    return-void
.end method

.method public removeInputEventListner(Lcom/adobe/air/AndroidActivityWrapper$InputEventCallback;)V
    .locals 1

    .prologue
    .line 1708
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1710
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mInputEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1712
    :cond_0
    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setAspectRatio(I)V

    .line 1348
    return-void
.end method

.method public setAutoOrients(Z)V
    .locals 1

    .prologue
    .line 1352
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setAutoOrients(Z)V

    .line 1353
    return-void
.end method

.method protected setIsFullScreen(Z)V
    .locals 0

    .prologue
    .line 1921
    iput-boolean p1, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsFullScreen:Z

    .line 1922
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mOrientationManager:Lcom/adobe/air/OrientationManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/OrientationManager;->setOrientation(I)V

    .line 1342
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 2

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 313
    return-void
.end method

.method public setUseRGB565(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 1393
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    .line 1394
    return-void
.end method

.method public unregisterPlane(I)V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_planes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-virtual {p0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 394
    return-void
.end method

.method public useRGB565()Z
    .locals 2

    .prologue
    .line 1398
    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mIsADL:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidActivityWrapper;->mRGB565Override:Z

    .line 1402
    :goto_0
    return v0

    .line 1399
    :cond_0
    new-instance v0, Lcom/adobe/air/ResourceFileManager;

    iget-object v1, p0, Lcom/adobe/air/AndroidActivityWrapper;->m_activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/adobe/air/ResourceFileManager;-><init>(Landroid/content/Context;)V

    .line 1402
    const-string v1, "raw.rgba8888"

    invoke-virtual {v0, v1}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
